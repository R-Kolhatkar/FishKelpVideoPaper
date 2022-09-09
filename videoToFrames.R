library(ROpenCVLite)
devtools::install_github("swarm-lab/Rvision")
library(Rvision)
# library(keras)

filename <- file.choose()
video <- Rvision::video(filename)
numFrames <- nframes(video)
numFrames

for(i in seq_len(numFrames)) {
  if(i %% 20 == 0) {
  frame <- readNext(video)
    write.Image(frame, paste(getwd(), "/fishVideoImages/", i, ".png", sep=""))
  }
}

release(video)


