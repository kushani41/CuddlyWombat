﻿using CuddlyWombat.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuddlyWombat.Data
{
    public class SaveMenuItemResponse : BaseResponse
    {
        public List<MenuItem> MenuItems { get; set; }
    }
}