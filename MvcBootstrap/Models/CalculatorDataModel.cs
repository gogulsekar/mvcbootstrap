namespace MvcBootstrap.Models
{
    using System.Collections.Generic;
    using System.ComponentModel;

    public class CalculatorDataModel
    {
        public string OperandRight { get; set; }
        public string OperandLeft { get; set; }
        public string Result { get; set; }
        [Description("Calculator type")]
        public int Type { get; set; }
        public List<string> Types { get; set; }

        public CalculatorDataModel()
        {
            Type = 2;
            Types = new List<string> { "scientific", "Basic" };
        }
    }
}