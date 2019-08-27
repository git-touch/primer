import gulp from "gulp";
import through2 from "through2";

function compile() {
  return gulp
    .src("../primer/lib/**/*")
    .pipe(
      through2.obj((file, _, cb) => {
        if (file.isBuffer()) {
          let str = file.contents
            .toString()
            .replace("package:flutter", "package:flutter_web")
            .replace(/fontPackage: "primer"/g, "");

          file.contents = Buffer.from(str, "utf8");
        }
        cb(null, file);
      })
    )
    .pipe(gulp.dest("../primer-gallery/lib/generated"));
}

export default cb => {
  compile();
  cb();
};

export function watch(cb) {
  gulp.watch("../primer/lib/**/*", { ignoreInitial: false }, compile);
  cb();
}
