% Generated by roxygen2 (4.0.2): do not edit by hand
\name{cloud_fill_simple}
\alias{cloud_fill_simple}
\title{Cloud fill using a simple linear model approach}
\usage{
cloud_fill_simple(cloudy, clear, cloud_mask, dims, num_class, cloud_nbh, DN_min,
  DN_max, verbose = FALSE)
}
\arguments{
\item{cloudy}{the cloudy image as a matrix, with pixels in columns (in
column-major order) and with number of columns equal to number of bands}

\item{clear}{the clear image as a matrix, with pixels in columns (in
column-major order) and with number of columns equal to number of bands}

\item{cloud_mask}{the cloud mask image as a vector (in column-major order),
with clouds coded with unique integer codes starting at 1, and with areas
that are clear in both images  coded as 0. Areas that are missing in the
clear image, should be coded as -1.}

\item{dims}{the dimensions of the cloudy image as a length 3 vector: (rows,
columns, bands)}

\item{num_class}{set the estimated number of classes in image}

\item{cloud_nbh}{the range of cloud neighborhood (in pixels)}

\item{DN_min}{the minimum valid DN value}

\item{DN_max}{the maximum valid DN value}

\item{verbose}{whether to print detailed status messages}
}
\value{
array with cloud filled image with dims: cols, rows, bands
parameter, containing the selected textures measures
}
\description{
This algorithm fills clouds using a simple approach in which the value of
each clouded pixel is calculated using a linear model. The script
develops a separate linear model (with slope and intercept) for each band
and each cloud. For each cloud, and each image band, the script finds all
pixels clear in both the cloudy and fill images, and calculates a
regression model in which pixel values in the fill image are the
independent variable, and pixel values in the clouded image are the
dependent variable. The script then uses this model to predict pixel values
for each band in each cloud in the clouded image.
}
\details{
This function is called by the \code{\link{cloud_remove}} function. It is
not intended to be used directly.
}

