
#
# This LookML file was generated by AtScale on 2024-04-03T06:38:42.954107503Z
#
# AtScale engine version: 2023.4.1.12728
# AtScale DesignCenter version: 2023.4.1.21138
# AtScale version: 2023.4.1.6713
# Organization: default
# Project: Sales Insights

connection: "atscalelorealpot"
label: "Sales Insights"


include: "/views/Sales_Insights/Internet_Sales_Cube.view.lkml"


explore: Internet_Sales_Cube {
  label: "Internet Sales Cube"
}

