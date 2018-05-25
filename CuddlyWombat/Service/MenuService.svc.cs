using CuddlyWombat.Data;
using CuddlyWombat.Enums;
using CuddlyWombat.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace CuddlyWombat.Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "MenuService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select MenuService.svc or MenuService.svc.cs at the Solution Explorer and start debugging.
    public class MenuService : IMenuService
    {
        public MenuService()
        {
        }

        public GetAllMenuItemsResponse PerformGetAllMenusNMenuItems()
        {
            GetAllMenuItemsResponse response = new GetAllMenuItemsResponse();

            try
            {
                using (var db = new CuddlyWombatEntities())
                {
                    db.Configuration.LazyLoadingEnabled = false;
                    db.Configuration.ProxyCreationEnabled = false;

                    response.MenuItems = (from m in db.MenuItems
                                          select m).ToList();

                    response.Menus = (from m in db.Menus
                                      select m).ToList();


                    response.MenuTypes = (from m in db.MenuTypes
                                          select m).ToList();

                    foreach (var menuType in response.MenuTypes)
                    {
                        menuType.Menus = null;
                    }

                    foreach (var menu in response.Menus)
                    {
                        menu.MenuItems = (from m in db.MenuMenuItems
                                          join mi in db.MenuItems on m.MenuItemID equals mi.MenuItemID
                                          where m.MenuID == menu.MenuID
                                          select mi).ToList();
                    }

                }
            }
            catch (Exception ex)
            {
                response.MessageStatusID = (byte)EMessageStatus.Exception;
                response.MessageString = ex.Message;
            }
            return response;
        }

        public SaveMenuItemResponse PerformCreateNewMenuItem(SaveMenuItemRequest request)
        {
            SaveMenuItemResponse response = new SaveMenuItemResponse();

            try
            {
                using (var db = new CuddlyWombatEntities())
                {
                    db.Configuration.LazyLoadingEnabled = false;
                    db.Configuration.ProxyCreationEnabled = false;

                    if (request.MenuItemID == 0)
                    {
                        var menuItem = new MenuItem()
                        {
                            Name = request.Name,
                            Description = request.Description,
                            Price = request.Price,
                            DateCreated = DateTime.Now,
                            IsUsed = true,
                            PreparationTimeInMinutes = request.PreparationTimeInMinutes
                        };

                        db.MenuItems.Add(menuItem);
                    }
                    else
                    {
                        var menuItem = (from m in db.MenuItems
                                        where m.MenuItemID == request.MenuItemID
                                        select m).FirstOrDefault();

                        menuItem.Name = request.Name;
                        menuItem.Description = request.Description;
                        menuItem.Price = request.Price;
                        menuItem.IsUsed = true;
                        menuItem.PreparationTimeInMinutes = request.PreparationTimeInMinutes;
                    }
                    response.MenuItems = (from m in db.MenuItems
                                          select m).ToList();

                    db.SaveChanges();

                    response.MessageString = "New Menu Item is successfully added to the database";
                    response.MessageStatusID = (byte)EMessageStatus.Success;
                }
            }
            catch (Exception ex)
            {
                response.MessageStatusID = (byte)EMessageStatus.Exception;
                response.MessageString = ex.Message;
            }
            return response;

        }

        public SaveMenuResponse PerformCreateNewMenu(SaveMenuRequest request)
        {
            SaveMenuResponse response = new SaveMenuResponse();
            var menu = new Menu();
            var menuMenuItems = new List<MenuMenuItem>();
            try
            {
                using (var db = new CuddlyWombatEntities())
                {
                    db.Configuration.LazyLoadingEnabled = false;
                    db.Configuration.ProxyCreationEnabled = false;

                    if (request.MenuID == 0)
                    {
                        menu.MenuID = 0;
                        menu.Name = request.Name;
                        menu.MenuTypeID = request.MenuTypeID;
                        menu.Description = request.Description;
                        menu.DateCreated = DateTime.Now;
                        menu.IsUsed = true;
                        db.Menus.Add(menu);
                        db.SaveChanges();
                    }
                    else
                    {
                        menu = (from m in db.Menus
                                where m.MenuID == request.MenuID
                                select m).FirstOrDefault();

                        menu.Name = request.Name;
                        menu.MenuTypeID = request.MenuTypeID;
                        menu.Description = request.Description;
                        menu.IsUsed = true;

                        var allAssignedMenuItems = (from m in db.MenuMenuItems
                                                    where m.MenuID == request.MenuID
                                                    select m).ToList();

                        foreach (var selectedMenuItem in allAssignedMenuItems)
                        {
                            db.MenuMenuItems.Remove(selectedMenuItem);
                        }
                    }
                    foreach (var mi in request.MenuItemIDs)
                    {
                        var menuMenuItem = new MenuMenuItem()
                        {
                            MenuID = menu.MenuID,
                            MenuItemID = mi
                        };
                        menuMenuItems.Add(menuMenuItem);
                    }
                    db.MenuMenuItems.AddRange(menuMenuItems);
                    db.SaveChanges();

                    response.Menus = (from m in db.Menus.Include("MenuType")
                                      select m).ToList();

                    foreach (var menu_ in response.Menus)
                    {
                        menu_.MenuType.Menus = null;

                        menu_.MenuItems = (from m in db.MenuMenuItems
                                           join mi in db.MenuItems on m.MenuItemID equals mi.MenuItemID
                                           where m.MenuID == menu.MenuID
                                           select mi).ToList();
                    }

                    response.MessageString = "New Menu is successfully added to the database";
                    response.MessageStatusID = (byte)EMessageStatus.Success;

                }
            }
            catch (Exception ex)
            {
                response.MessageStatusID = (byte)EMessageStatus.Exception;
                response.MessageString = ex.Message;
            }
            return response;
        }
    }
}
