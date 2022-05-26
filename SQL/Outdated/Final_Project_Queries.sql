--Creating table wine_quality white
Create Table wine_quality_white (
	"fixed acidity" FLOAT(53) NOT NULL,
	"volatile acidity" FLOAT(53) NOT NULL,
	"citric acid" FLOAT(53) NOT NULL,
	"residual sugar" FLOAT(53) NOT NULL,
	"chlorides" FLOAT(53) NOT NULL,
	"free sulfur dioxide" FLOAT(53) NOT NULL,
	"total sulfur dioxide" FLOAT(53) NOT NULL,
	"density" FLOAT(53) NOT NULL,
	"pH" FLOAT(53) NOT NULL,
	"sulphates" FLOAT(53) NOT NULL,
	"alcohol" FLOAT(53) NOT NULL,
	"quality" FLOAT(53) NOT NULL,
;
	
--Creating table wine_quality red
Create Table wine_quality_red (
	"fixed acidity" FLOAT(53) NOT NULL,
	"volatile acidity" FLOAT(53) NOT NULL,
	"citric acid" FLOAT(53) NOT NULL,
	"residual sugar" FLOAT(53) NOT NULL,
	"chlorides" FLOAT(53) NOT NULL,
	"free sulfur dioxide" FLOAT(53) NOT NULL,
	"total sulfur dioxide" FLOAT(53) NOT NULL,
	"density" FLOAT(53) NOT NULL,
	"pH" FLOAT(53) NOT NULL,
	"sulphates" FLOAT(53) NOT NULL,
	"alcohol" FLOAT(53) NOT NULL,
	"quality" FLOAT(53) NOT NULL,
;
	
--adding color to red table
ALTER TABLE wine_quality_red
ADD color VARCHAR(40);
	
UPDATE wine_quality_red SET color='red';
	
--adding color to white table
ALTER TABLE wine_quality_white
ADD color VARCHAR(40);
	
UPDATE wine_quality_white SET color='red';
	
--adding id column to red table with numbering assigned

ALTER TABLE wine_quality_red ADD ID SERIAL;
	
--adding id column to white table with numbering assigned

ALTER TABLE wine_quality_white ADD ID SERIAL;
	
--rename white columns as are duplicate from red
ALTER TABLE wine_quality_white RENAME COLUMN "fixed acidity" TO "fixed acidity2".
ALTER TABLE wine_quality_white RENAME COLUMN "volatile acidity" TO "volatile acidity2"
ALTER TABLE wine_quality_white RENAME COLUMN "citric acid" TO "citric acid2"
ALTER TABLE wine_quality_white RENAME COLUMN "residual sugar" TO "residual sugar2"
ALTER TABLE wine_quality_white RENAME COLUMN "chlorides" TO "chlorides2"
ALTER TABLE wine_quality_white RENAME COLUMN "free sulfur dioxide" TO "free sulfur dioxide2"
ALTER TABLE wine_quality_white RENAME COLUMN "total sulfur dioxide" TO "total sulfur dioxide2"
ALTER TABLE wine_quality_white RENAME COLUMN "density" TO "density2"
ALTER TABLE wine_quality_white RENAME COLUMN "pH" TO "pH2"
ALTER TABLE wine_quality_white RENAME COLUMN "sulphates" TO "suphates2"
ALTER TABLE wine_quality_white RENAME COLUMN "alcohol" TO "alcohol2"
ALTER TABLE wine_quality_white RENAME COLUMN "quality" TO "quality2"
ALTER TABLE wine_quality_white RENAME COLUMN "color" TO "color2"
ALTER TABLE wine_quality_white RENAME COLUMN "id" TO "id2"

--join tables wine_quality_red and wine_quality_white
SELECT wine_quality_red."fixed acidity",
	wine_quality_red."volatile acidity",
	wine_quality_red."citric acid",
	wine_quality_red."residual sugar",
	wine_quality_red."chlorides",
	wine_quality_red."free sulfur dioxide",
	wine_quality_red."total sulfur dioxide",
	wine_quality_red."density",
	wine_quality_red."pH",
	wine_quality_red."sulphates",
	wine_quality_red."alcohol",
	wine_quality_red."quality",
	wine_quality_red."color",
	wine_quality_red."id",
	wine_quality_white."fixed acidity2",
	wine_quality_white."volatile acidity2",
	wine_quality_white."citric acid2",
	wine_quality_white."residual sugar2",
	wine_quality_white."chlorides2",
	wine_quality_white."free sulfur dioxide2",
	wine_quality_white."total sulfur dioxide2",
	wine_quality_white."density2",
	wine_quality_white."pH2",
	wine_quality_white."sulphates2",
	wine_quality_white."alcohol2",
	wine_quality_white."quality2",
	wine_quality_white."color2",
	wine_quality_white."id2",
INTO combined_wine_quality
FROM wine_quality_red
FULL OUTER JOIN wine_quality_white
ON wine_quality_red."fixed acidity" = wine_quality_white."fixed acidity2"
AND wine_quality_red."volatile acidity" = wine_quality_white."volatile acidity2"
AND wine_quality_red."citric acid" = wine_quality_white."citric acid2"
AND wine_quality_red."residual sugar" = wine_quality_white."residual sugar2"
AND wine_quality_red."chlorides" = wine_quality_white."chlorides2"
AND	wine_quality_red."free sulfur dioxide" = wine_quality_white."free sulfur dioxide2"
AND	wine_quality_red."total sulfur dioxide" = wine_quality_white."total sulfur dioxide2"
AND	wine_quality_red."density" = wine_quality_white."density2"
AND	wine_quality_red."pH" = wine_quality_white."pH2"
AND	wine_quality_red."sulphates" = wine_quality_white."sulphates2"
AND	wine_quality_red."alcohol" = wine_quality_white."alcohol2"
AND	wine_quality_red."quality" = wine_quality_white."quality2"
AND	wine_quality_red."color" = wine_quality_white."color2"
AND	wine_quality_red."id" = wine_quality_white."id2"

--combine columns so can later drop one ending in 2
UPDATE combined_wine_quality
SET "fixed acidity" = "fixed acidity2"
WHERE "fixed acidity" IS NULL
UPDATE combined_wine_quality
SET "volatile acidity" = "volatile acidity2"
WHERE "volatile acidity" IS NULL
UPDATE combined_wine_quality
SET "citric acid" = "citric acid2"
WHERE "citric acid" IS NULL
UPDATE combined_wine_quality
SET "residual sugar" = "residual sugar2"
WHERE "residual sugar" IS NULL
UPDATE combined_wine_quality
SET "chlorides" = "chlorides2"
WHERE "chloride" IS NULL
UPDATE combined_wine_quality
SET "free sulfur dioxide" = "free sulfur dioxide2"
WHERE "free sulfur dioxide" IS NULL
UPDATE combined_wine_quality
SET "total sulfur dioxide" = "total sulfur dioxide2"
WHERE "total sulfur dioxide" IS NULL
UPDATE combined_wine_quality
SET "density" = "density2"
WHERE "density" IS NULL
UPDATE combined_wine_quality
SET "pH" = "pH2"
WHERE "pH" IS NULL
UPDATE combined_wine_quality
SET "sulphates" = "sulphates2"
WHERE "sulphates" IS NULL
UPDATE combined_wine_quality
SET "alcohol" = "alcohol2"
WHERE "alcohol" IS NULL
UPDATE combined_wine_quality
SET "quality" = "quality2"
WHERE "quality" IS NULL
UPDATE combined_wine_quality
SET "color" = "color2"
WHERE "color" IS NULL
UPDATE combined_wine_quality
SET "id" = "id2"
WHERE "id" IS NULL


--need to drop each of the columns with a 2 appended
ALTER TABLE combined_wine_quality DROP "fixed acidity2"
ALTER TABLE combined_wine_quality DROP "volatile acidity2"
ALTER TABLE combined_wine_quality DROP "citric acid2"
ALTER TABLE combined_wine_quality DROP "residual sugar2"
ALTER TABLE combined_wine_quality DROP "chlorides2"
ALTER TABLE combined_wine_quality DROP "free sulfur dioxide2"
ALTER TABLE combined_wine_quality DROP "total sulfur dioxide2"
ALTER TABLE combined_wine_quality DROP "density2"
ALTER TABLE combined_wine_quality DROP "pH2"
ALTER TABLE combined_wine_quality DROP "sulphates2"
ALTER TABLE combined_wine_quality DROP "alcohol2"
ALTER TABLE combined_wine_quality DROP "quality2"
ALTER TABLE combined_wine_quality DROP "color2"
ALTER TABLE combined_wine_quality DROP "id2"
	