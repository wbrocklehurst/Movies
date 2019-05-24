using System;

namespace Freewheel.Movies.API.Helpers
{
    public static class RoundHelperExtension
    {
        public static double Round(this double value)
        {
            return Math.Round(value * 2, MidpointRounding.AwayFromZero) / 2;
        }
    }
}
