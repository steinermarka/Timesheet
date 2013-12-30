﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace TimeSheet.Models
{
    public class Sheet : UserBase
    {
        public List<InternalNumber> numbers { get; set; }
        public List<CostCenter> centers { get; set; }

        public Worker employee { get; set; }
        public List<Week> hours { get; set; }
        public string[] Stats { get; set; }

        public List<DateTime> Headers { get; set; }

        public int year { get; set; }
        public int weekNumber { get; set; }
        public string NewDescription { get; set; }
        public string NewCustomer { get; set; }
        public string NewInternalNumber { get; set; }
        public bool NewRequest { get; set; }
        public int TimeTypeId { get; set; }
        public bool Submitted { get; set; }

        public string sunday;

        public Week normal { get; set; }
        public Week overtime { get; set; }
        
        public List<Week> CarryOver;

        /// <summary>
        /// http://stackoverflow.com/questions/5377851/get-date-range-by-week-number-c-sharp
        /// </summary>
        /// <param name="ww"></param>
        /// <returns></returns>
        public DateTime getPeriodEnding()
        {
            DateTime jan1 = new DateTime(DateTime.Now.Year, 1, 1);

            int daysOffset = DayOfWeek.Tuesday - jan1.DayOfWeek;

            DateTime firstMonday = jan1.AddDays(daysOffset);

            var wk = new ISO_8601(jan1);
            int firstWeek = wk.week;
            var weekNum = weekNumber;
            if (firstWeek <= 1)
            {
                weekNum -= 1;
            }
            var result = firstMonday.AddDays(weekNum * 7 - 1);  // Sunday = 0
            return result;
        }
    }
}