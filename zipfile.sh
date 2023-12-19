shopt -s extglob
# TODO: Parameterize language list based on argv
ls lingua/language-models/!(@(en|de))/* > exclude.lst
zip -r lingua-slim.zip lingua -x @exclude.lst
rm exclude.lst
