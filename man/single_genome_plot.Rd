\name{single_genome_plot}
\alias{single_genome_plot}

\title{
  Creation of non-circular single genome plot
}
\description{
  The function to create non-circular plot along all chromosomes of a single genome.
}
\usage{
single_genome_plot(data.chr="", data.track="", plot_type="point",
                  layer_index=paste0("track",1:length(plot_type)),
                  col_type=rep(1,length(plot_type)),
                  color_cus=rep("#FF0000",length(plot_type)),
                  color_mulgp=rep("a:red;b:blue;c:cyan",length(plot_type)),
                  col_transpt=rep(1,length(plot_type)),
                  add_border=rep(2,length(plot_type)),
                  border_col=rep("#000000",length(plot_type)),
                  rect_col=rep(1,length(plot_type)),
                  rect_col_dis=rep("#FF0000",length(plot_type)),
                  rect_col_dis_cus=rep("a:red;b:blue;c:cyan",length(plot_type)),
                  rect_grad_col=rep(1,length(plot_type)),
                  col_rect=rep("blue",length(plot_type)),
                  rect_grad_cus_2cols=rep("#0016DB.#FFFF00",length(plot_type)),
                  rect_grad_cus_3cols=rep("#0016DB.#FFFFFF.#FFFF00",length(plot_type)),
                  sel_heatmap_col=rep(1,length(plot_type)),
                  hmap_col=rep("blue.white.red",length(plot_type)),
                  heatmap_col_cus_2cols=rep("#0016DB.#FFFF00",length(plot_type)),
                  heatmap_col_cus_3cols=rep("#0016DB.#FFFFFF.#FFFF00",length(plot_type)),
                  hmap_col_dis=rep(1,length(plot_type)),
                  hmap_col_dis_cus=rep("a:red;b:blue;c:cyan",length(plot_type)),
                  sel_symbol_point=rep(1,length(plot_type)),
                  symbol_point=rep(16,length(plot_type)),
                  sel_point_size=rep(1,length(plot_type)),
                  point_size=rep(0.8,length(plot_type)),
                  line_color=rep("#FF0000",length(plot_type)),
                  line_size=rep(0.2,length(plot_type)),
                  fill_area=rep(2,length(plot_type)),
                  sel_area_type=rep(1,length(plot_type)),
                  border_area=rep("#0000FF",length(plot_type)),
                  linetype=rep("solid",length(plot_type)),
                  add_arrow=rep(2,length(plot_type)),
                  arrow_pos=rep(1,length(plot_type)),
                  arrow_size=rep(0.1,length(plot_type)),
                  text_col=rep("#000000",length(plot_type)),
                  text_size=rep(2,length(plot_type)),
                  font_face=rep("plain",length(plot_type)),
                  text_angle=rep(60,length(plot_type)),
                  col_lgd=rep(2,length(plot_type)),
                  col_lgd_name=rep("color",length(plot_type)),
                  col_lgd_mdy_label=rep(2,length(plot_type)),
                  col_lgd_label=rep("a,b,c",length(plot_type)),
                  size_lgd=rep(2,length(plot_type)),
                  size_lgd_name=rep("size",length(plot_type)),
                  size_lgd_mdy_label=rep(2,length(plot_type)),
                  size_lgd_label=rep("a,b,c",length(plot_type)),
                  shape_lgd=rep(2,length(plot_type)),
                  shape_lgd_name=rep("symbol",length(plot_type)),
                  shape_lgd_mdy_label=rep(2,length(plot_type)),
                  shape_lgd_label=rep("a,b,c",length(plot_type)),
                  line_type_lgd=rep(2,length(plot_type)),
                  line_type_lgd_name=rep("linetype",length(plot_type)),
                  line_type_lgd_mdy_label=rep(2,length(plot_type)),
                  line_type_lgd_label=rep("a",length(plot_type)),
                  lgd_pos=1, lgd_space_size=0.04, lgd_intra_size=40,
                  lgd_title_size=12, lgd_title_font_face="plain",
                  lgd_text_size=10, lgd_text_font_face="plain",
                  ylabel=rep(1,length(plot_type)),
                  height_layer=rep(0.06,length(plot_type)),
                  margin_layer=rep(0.01,length(plot_type)),
                  chr_plotype=1, plot_direct=1, theme_sty="theme1",
                  font_size=16, xtitle="Genomic position",
                  ytitle="Value", title_font_face="plain", xlabel=1)
}
\arguments{
  \item{data.chr}{
    The name of a compulsory genome dataset to define the frame of a non-circular plot.
  }
  \item{data.track}{
    The name of one or more datasets to be displayed along all chromosomes
    of the input genome as different types of plots in one or more tracks.
  }
  \item{plot_type}{
    The plot types for different uploaded datasets, which should be chosen from the following list:
    "point", "line", "bar", "rect_gradual", "rect_discrete", "heatmap_gradual", "heatmap_discrete",
    "text", "segment", "vertical_line", "horizontal_line" and "ideogram".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{layer_index}{
    The track index for different uploaded datasets, which should be specified as "track1", c("track1", "track1") or c("track1", "track2").
    The number of values received through this parameter should be equal to that of the values received through the data.track parameter.
  }
  \item{col_type}{
    Data color for plot_type 'point', 'line', 'bar' and 'segment'.
    By default, this parameter was set as "1" and random assigned color would be used.
    To customize one color for the dataset, set this parameter as 2.
    To customize color for data with multiple groups, set this parameter as 3.
    And the column indicating different groups in the uploaded data should be named as "color".
    Users should provide a character string assigning colors to each group.
    For example, "a:red;b:green;c:blue", in which "a b c" represent different data groups.
    Color for data groups without assigned color would be set as "NA".
    Hex color codes as "#FF0000" are also supported.
    See example data for more details. The number of values received through this parameter
    should be equal to that of the values received through the data.track parameter.
  }
  \item{color_cus}{
    If col_type was set as 2, a specific color should be specified for each dataset, for example "#FF0000" or c("red", "blue").
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{color_mulgp}{
    If col_type was set as 3, users should provide a character string assigning colors to each group.
    For example, "a:red;b:green;c:blue", in which "a b c" represent different data groups.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{col_transpt}{
    A decimal number in [0, 1] to adjust the color transparency, for example 1 or 0.5.
    The higher the value, the deeper the color. The number of values received
    through this parameter should be equal to that of the values
    received through the data.track parameter.
  }
  \item{add_border}{
    Add (or not) borders to the grids, which can be used to separate cells from each other.
    "1" means "add cell borders", while "2" means "not add".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{border_col}{
    Borders color. If add_border was set as "1", a specific color should be specified by the users, for example "#000000".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{rect_col}{
    Data color for plot_type "rect_discrete".
    By default, this parameter was set as "1" and random assigned color would be used.
    If the option was set as "2", all rects will be filled by a specified color.
    If the option was set as "3", the 4th column of the uploaded data should be a
    categorical character vector with no more than 50 groups.
    Users should provide values as "a:red;b:green;c:blue", in which "a b c" represent
    different data categories indicated by the 4th column of the uploaded data.
    Color for data without custom color will be set as NULL.
    Hex color codes as "#FF0000" are also supported.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{rect_col_dis}{
    If rect_col was set as "2", all rects will be filled by a specified color by this parameter, for example "#FF0000".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{rect_col_dis_cus}{
    If rect_col was set as "3", the 4th column of the uploaded data should be
    a categorical character vector with no more than 50 groups.
    Users should provide values as "a:red;b:green;c:blue",
    in which "a b c" represent different data categories indicated by
    the 4th column of the uploaded data.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{rect_grad_col}{
    Data color for plot_type "rect_gradual".
    By default, this parameter was set as "1" and predefined color would be used.
    If this parameter was set as "2", "low-high" gradient color would be used.
    If this parameter was set as "3", "low-mid-high" gradient color would be used.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{col_rect}{
    A color vector for gradual rectangles, when rect_grad_col is set as "1".
    Every element of this vector should be chosen from the following list:
    "blue", "red", "green", "cyan",
    "purple", "pink", "orange", "yellow", "navy", "seagreen", "maroon",
    "olivedrab", "gold", "lightblue", "navy.yellow", "purple.seagreen",
    "navy.orange", "navy.cyan", "blue.red" and "green.red".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{rect_grad_cus_2cols}{
    If rect_grad_col was set as "2", please provide two color values representing
    the low and the high color for each dataset, for example "#0016DB" and "#FFFF00".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{rect_grad_cus_3cols}{
    If rect_grad_col was set as "3", please provide three color values representing
    the low, the mid and the high color, for example "#0016DB", "#FFFFFF" and "#FFFF00".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{sel_heatmap_col}{
    Data color for plot_type "heatmap_gradual".
    By default, this parameter was set as "1" and predefined color would be used.
    If the option was set as "2", "low-high" gradient color would be used.
    If the option was set as "3", "low-mid-high" gradient color would be used.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{hmap_col}{
    If sel_heatmap_col was set as "1", choose one color from the following lisr:
    "blue.white.red", "green.black.red",
    "green.yellow.red", "purple.yellow.red", "blue.green.red",
    "blue.yellow.green" and "cyan.white.deeppink1".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{heatmap_col_cus_2cols}{
    If sel_heatmap_col was set as "2", please provide two color values representing
    the low and the high color for each dataset, for example "#0016DB" and "#FFFF00".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{heatmap_col_cus_3cols}{
    If sel_heatmap_col was set as "3", please provide three color values representing
    the low, the mid and the high color, for example "#0016DB", "#FFFFFF" and "#FFFF00".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{hmap_col_dis}{
    Data color for plot_type "heatmap_discrete".
    By default, this parameter was set as "1" and random assigned color would be used.
    If the option was set as "2", the 4th column of the uploaded data should
    be a categorical character vector with no more than 50 groups.
    Users should provide values as "a:red;b:green;c:blue",
    in which "a b c" represent different data categories indicated
    by the 4th column of the uploaded data.
    Color for data without custom color will be set as NULL.
    Hex color codes as "#FF0000" are also supported.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{hmap_col_dis_cus}{
    If hmap_col_dis was set as "2", the 4th column of the uploaded data
    should be a categorical character vector with no more than 50 groups.
    Users should provide values as "a:red;b:green;c:blue",
    in which "a b c" represent different data categories indicated by
    the 4th column of the uploaded data.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{sel_symbol_point}{
    Symbol used for different points for plot_type "point".
    By default, this parameter was set as "1" and one custom symbol would be used.
    If the option was set as "2", the uploaded data should include a "shape" column with a categorical character vector.
    A single integer can be used to set the shape of all points or a integer
    column named as "shape" in the input data can be used to
    set the shape of different points.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{symbol_point}{
    Integers to set the symbol of different points.
    Applicable values are integers in [0-25].
    Check "http://www.endmemo.com/program/R/pchsymbols.php" for more details.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{sel_point_size}{
    Numeric values to set the point size for plot_type "point".
    By default, this parameter was set as "1" and one custom symbol would be used.
    If the option was set as "2", the uploaded data should include a "size" column with a categorical character vector.
    A single numeric value can be used to set the size of all points or a numeric column named
    as "size" in the input data can be used to set the size of different points.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{point_size}{
    If sel_point_size was set as "1", provide one or more numeric values to set the point size of different datasets.
    A single numeric value can be used to set the size of all points.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{line_color}{
    Data color for plot_type 'vertical_line' and 'horizontal_line', for example "#FF0000".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{line_size}{
    Numeric values to set the line width for plot_type: "line", "vertical_line", "horizontal_line" and
    "segment", for example 0.2. The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{fill_area}{
    Fill (or not) the area below the lines, when plot_type was set "line".
    By default, this parameter was set as "2".
    "1" means "fill the area", while "2" means "not fill".
  }
  \item{sel_area_type}{
    Color to be used to fill the area, which can be identical with lines
    color or be specified by the users.
    If the option was set as "1", all data will be filled by the color of lines.
    If the option was set as "2", all data will be filled by a specified color, for example "blue".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{border_area}{
    If sel_area_type was set as "2", all data will be filled by a specified color as "#0000FF".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{linetype}{
    Set the line type for plot_type: "line", "vertical_line", "horizontal_line" and
    "segment", for example "solid", "dashed", "dotted", "dotdash", "longdash" and "twodash".
    The line type is automatically set as "solid" for line with more than one color.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{add_arrow}{
    Add (or not) arrow head for the segment for plot_type segment.
    "1" means "add arrow head", while "2" means "not add arrow head".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{arrow_pos}{
    The position of arrow head, when add_arrow was set as "1".
    "1" means "line end", while "2" means "line beginning".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{arrow_size}{
    The size of arrow head, when add_arrow was set as "1", for example 0.1.
    The number of values received through this parameter
    should be equal to that of the values received through the data.track parameter.
  }
  \item{text_col}{
    Font color for plot_type "text", for example "#000000".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{text_size}{
    Font size for plot_type "text", for example 2.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{font_face}{
    Font face for plot_type "text", for example "plain", "italic", "bold" and "bold.italic".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{text_angle}{
    Text angle for plot_type "text", which is a decimal number in [0, 360], for example 60.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{col_lgd}{
    Sow (or not) the color legend in the plotting region.
    "1" means "show", while "2" means "hide".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{col_lgd_name}{
    Title of the color legend.
    Null value will result in an empty title.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{col_lgd_mdy_label}{
    Modify (or not) the labels of different colors in the color legend, when col_lgd was set as "1" and
    plot_type was not set as "rect_gradual" or "heatmap_gradual".
    "1" means "modify labels", while "2" means "not modify".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{col_lgd_label}{
    If col_lgd_mdy_label was set as "1", character vector of arbitrary length is accepted and adjusted automatically
    to the number of groups, which is separated by commas.
    For example, "a" or "a,b,c".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{size_lgd}{
    Show (or not) the size legend in the plotting region for plot_type "point".
    "1" means "show", while "2" means "hide".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{size_lgd_name}{
    Title of the size legend, when size_lgd was set as "1", for example "size".
    Null value will result in an empty title.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{size_lgd_mdy_label}{
    Modify (or not) the labels of legend in size legend, when size_lgd was set as "1" and plot_type was set as "point".
    "1" means "modify labels", while "2" means "not modify".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{size_lgd_label}{
    If size_lgd_mdy_label was set as "1", character vector of arbitrary length is accepted and adjusted automatically
    to the number of groups, which is separated by commas.
    For example, "a" or "a,b,c".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{shape_lgd}{
    Show (or not) the shape legend in the plotting region for plot_type "point".
    "1" means "show", while "2" means "hide".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{shape_lgd_name}{
    Title of the shape legend, when shape_lgd was set as "1", for example "symbol".
    Null value will result in an empty title.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{shape_lgd_mdy_label}{
    The labels of legend in shape legend, when shape_lgd was set as "1" and plot_type was set as "point".
    "1" means "modify labels", while "2" means "not modify".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{shape_lgd_label}{
    If shape_lgd_mdy_label was set as "1", character vector of arbitrary length is accepted and adjusted automatically
    to the number of groups, which is separated by commas.
    For example, "a" or "a,b,c".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{line_type_lgd}{
    Show (or not) the line type legend in the plotting region for plot_type "vertical_line" or "horizontal_line",
    "1" means "show", while "2" means "hide".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{line_type_lgd_name}{
    Title of the line type legend, when line_type_lgd was set as "1", for example "linetype".
    Null value will result in an empty title.
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{line_type_lgd_mdy_label}{
    The labels of legend in linetype legend, when line_type_lgd was set as "1" and plot_type was set as "vertical_line" or "horizontal_line".
    "1" means "modify labels", while "2" means "not modify".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{line_type_lgd_label}{
    If line_type_lgd_mdy_label was set as "1", character vector of arbitrary length is accepted and adjusted automatically
    to the number of groups, which is separated by commas.
    For example, "a" or "a,b,c".
    The number of values received through this parameter should be
    equal to that of the values received through the data.track parameter.
  }
  \item{lgd_pos}{
    The position to place the legend. "1" means "right" of the main plot,
    while "2" means "bottom" of the main plot.
  }
  \item{lgd_space_size}{
    Percent of legend size relative to the main plotting region.
    Applicable values are numbers in [0-1], for example 0.04.
  }
  \item{lgd_intra_size}{
    Intra-spacing between different legends, for example 40.
  }
  \item{lgd_title_size}{
    The font size of legend title, for example 12.
  }
  \item{lgd_title_font_face}{
    The font face of legend title, for example "plain", "italic", "bold" or "bold.italic".
  }
  \item{lgd_text_size}{
    The font size of legend tick label, for example 10.
  }
  \item{lgd_text_font_face}{
    The font face of legend tick label, for example "plain", "italic", "bold" or "bold.italic".
  }
  \item{ylabel}{
    Show or hide tick labels on the Y-axis.
    "1" means "show", while "2" means "hide".
  }
  \item{height_layer}{
    Numeric value to set the height of the track. The number of values received through this parameter
    should be equal to that of the values received through the data.track parameter.
  }
  \item{margin_layer}{
    Numeric value to set the margin size of the track. The number of values received through this parameter
    should be equal to that of the values received through the data.track parameter.
  }
  \item{chr_plotype}{
    All chromosomes can either be concatenated or separated.
    "1" means "Concatenated chromosomes", while "2" means "Separated chromosomes".
  }
  \item{plot_direct}{
    Chromosomes could be aligned to the horizontal axis or the vertical axis.
    "1" means "Horizontally aligned", while "2" means "Vertically aligned".
  }
  \item{theme_sty}{
    Select one figure theme from the following theme list: "theme1", "theme2", "theme3",
    "theme4", "theme5", "theme6", "theme7", "theme8","theme9","theme10","theme11",
    "theme12", "theme13", "theme14", "theme15", "theme16", "theme17" and "theme18".
  }
  \item{font_size}{
    Numeric value to set the font size.
  }
  \item{xtitle}{
    X axis title.
  }
  \item{ytitle}{
    Y axis title.
  }
  \item{title_font_face}{
    Font face of the plot title, for example "plain", "italic", "bold" or "bold.italic".
  }
  \item{xlabel}{
    Show or hide tick labels on the X-axis. "1" means "show", while "2" means "hide".
  }
}
\author{
  Yiming Yu, Wen Yao
}

\examples{

data.chr <- read.table(system.file("examples/single_genome/genome_data.txt",
                    package="shinyChromosomeR"), header=TRUE, as.is=TRUE, sep="\t")
head(data.chr)

data.track.file <- c(system.file("examples/single_genome/point.txt", package="shinyChromosomeR"),
                     system.file("examples/single_genome/line.txt", package="shinyChromosomeR"))
data.track.file

data.track <- lapply(data.track.file, function(x){
   dt <- read.table(x, header=TRUE, as.is=TRUE, sep="\t")
   return(dt)
})

single_genome_plot(data.chr=data.chr, data.track=data.track, plot_type=c("point", "line"))

}

