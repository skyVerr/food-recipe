-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2018 at 03:40 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `ingredients` text COLLATE utf8_bin NOT NULL,
  `preparation` text COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `click_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `name`, `ingredients`, `preparation`, `image`, `click_count`) VALUES
(12, 'ROCKY ROAD CAKE', '1 c. chopped walnuts\n1 c. seedless raisins\n1 c. miniature marshmallows\n1 (6 oz.) pkg. semi-sweet chocolate pieces\n1 (18 1/2 oz.) pkg. devil\'s food cake mix with pudding in the mix\n4 eggs\n1 c. Hellmann\'s mayonnaise\n1 c. water', 'Grease and flour 12-cup fluted tube pan or Bundt pan. In small bowl, mix walnuts, raisins, marshmallows and chocolate pieces. In large bowl with mixer at low speed, beat together cake mix, eggs, mayonnaise and water just until blended. Increase speed to medium; beat for 2 minutes. Stir in nut mixture. Pour in prepared pan. Bake in a 350Â° oven for 50 minutes or until cake tester inserted in center comes out clean. Cool in pan for 15 minutes. Remove. Cool on rack. If desired, dust with confectioners sugar. Makes 12 servings.', 'http://localhost/ai-api/images/5c10d3dd3a5c3.jpg', 3),
(13, 'CHOCOLATE BOTTOM CUPCAKES', '8 oz. cream cheese\n1 egg\n1/3 c. sugar\n1/2 tsp. salt\n6 oz. pkg. chocolate chips\n1 1/2 c. flour\n1/4 c. cocoa\n1 c. sugar\n1 tsp. baking soda\n1/2 tsp. salt\n1 c. water\n1/2 c. oil\n1 Tbsp. vinegar\n1 tsp. vanilla', 'Blend the first 4 ingredients, then stir in chocolate chips; set aside. Blend the remaining ingredients and fill paper-lined cups with this mixture 1/3 full. Drop 1 tablespoon of the cream cheese mixture into each cup. Bake for 30 to 35 minutes at 350Â°.', 'http://localhost/ai-api/images/5c10d455493c9.jpg', 4),
(14, 'CHOCOLATE PUDDING DESSERT', '1 c. flour\n1/2 c. butter or margarine\n1 c. finely chopped pecans\n1 (8 oz.) pkg. cream cheese, softened\n1 c. powdered sugar\n1 (8 oz.) frozen whipped topping, thawed\n1 (4 oz.) pkg. instant vanilla pudding mix\n1 (4 oz.) pkg. instant chocolate pudding mix\n3 c. milk\n1 (1.45) milk chocolate bar, grated', 'Mix flour and butter together until they form small crumbs. Stir in pecans. Press into a 9 x 13-inch pan. Bake at 350Â° for 20 minutes.\n\nBeat cream cheese and powdered sugar until smooth. Fold in half of the whipped topping. Spread over cooled crust.\n\nPlace contents of both packages of pudding mix into large bowl. Add milk and beat slowly with rotary beater for 2 minutes or until smooth. Spread on top of cream cheese mixture.\n\nLet stand a few minutes, then carefully spread remaining whipped topping over top. Sprinkle with grated chocolate. Cover and refrigerate.', 'http://localhost/ai-api/images/5c10d478bc856.jpg', 3),
(15, 'CHOCOLATE DIPPED STRAWBERRIES', '1/4 c. semi-sweet chocolate chips\n2 Tbsp. oil\n1/4 c. milk chocolate chips\n1 tsp. vanilla\n1 pt. strawberries (do not remove stems)', 'In the top of a double boiler, put first 3 ingredients. Heat until liquid. Take off stove and add the vanilla. Dip the strawberries and set them on wax paper until chocolate is hardened.', 'http://localhost/ai-api/images/5c10d4d077802.jpg', 1),
(16, 'CHOCOLATE COVERED PEANUTS', '6 oz. semi-sweet chocolate chips\n6 oz. butterscotch chips\n2 Tbsp. peanut butter\n2 c. Spanish peanuts', 'Melt chips and peanut butter over low heat. Add 2 cups Spanish peanuts. Drop by spoonfuls on waxed paper. Let sit in refrigerator about 30 minutes. Can store at room temperature.', 'http://localhost/ai-api/images/5c10da2a52c2b.jpg', 0),
(17, 'CHOCOLATE DRINK MIX', '1 (16 oz.) box instant chocolate powder\n1 (8 qt.) box powdered milk\n1 (6 oz.) jar powdered cream\n1/2 c. powdered sugar', 'Combine all ingredients and mix well. Store in airtight container. To serve: Use 1/3 cup mix to 1 cup hot water.', 'http://localhost/ai-api/images/5c10e609c1409.jpg', 0),
(18, 'CREAM CHEESE SUGAR COOKIES', '1 c. sugar\n1 c. margarine or butter, softened\n1 (3 oz.) pkg. cream cheese, softened\n1/2 tsp. salt\n1/2 tsp. almond extract\n1/2 tsp. vanilla\n1 egg, separated\n2 1/4 c. flour', 'In large bowl combine sugar, margarine, cream cheese, salt, almond extract, vanilla and egg yolk; blend well. Lightly spoon flour into measuring cup; level off. Stir in flour until well blended. Chill dough 2 hours. Heat oven to 375Â°. On lightly floured surface, roll out dough 1/3 at a time to 1/8-inch thickness. Cut into desired shapes with lightly floured cookie cutters. Place 1 inch apart on ungreased cookie sheets. Leave cookies plain or, if desired, brush with slightly beaten egg white and sprinkle with colored sugar. Bake at 375Â° for 7 to 10 minutes or until light golden brown. Cool completely. Frost and decorate, if desired. Makes 5 to 6 dozen cookies.', 'http://localhost/ai-api/images/5c10f23a160d3.jpg', 0),
(19, 'BANANA PUDDING', '4 eggs\n2 c. sugar\n2 c. milk\n1 tsp. vanilla extract\n2 tsp. cornstarch\n6 bananas\n1 pkg. vanilla wafers', 'Put eggs in a boiler and beat well. Add sugar; mix well. Add milk. Cook slow until it gets to a boil, then add vanilla extract, then cornstarch (mixed in a little milk just to make a paste). Add to the pudding. This will thicken and will be ready to finish. Cut the bananas, put in bowl and add 1 layer of wafers. Add some pudding mix. Continue until all is finished.', 'http://localhost/ai-api/images/5c10f2b54b249.jpg', 1),
(20, 'FRUIT DIP', '2 (8 oz.) fruit flavored cream cheese\n2 (7 oz.) jars marshmallow cream\n1 small container Cool Whip', 'Cream the cream cheese; add marshmallow cream. When well blended, add Cool Whip. Serve with chunks of cantaloupe, honeydew melon, pineapple, apple, banana, grapes, strawberries, etc.', 'http://localhost/ai-api/images/5c10f2e48684a.jpg', 0),
(21, 'BAGEL BITES', '1 tsp. reduced-calorie margarine, softened\n1/4 tsp. dried whole oregano\n1/8 tsp. garlic powder\n2 (1 oz.) frozen mini bagels, thawed and halved', 'Combine first 3 ingredients and spread 1/4 teaspoon margarine mixture over cut sides of each bagel half. Place bagel halves, cut side up, on a baking sheet; broil 6 inches from heat for 1 minute or until golden brown. Yields 4 halves.\n\nPer Serving: 94 Calories, 2 g. Fat (19%), 0 mg. Cholesterol and 119 mg. Sodium.', 'http://localhost/ai-api/images/5c10f30e09ec0.jpg', 0),
(22, 'SPINACH DIP', '1 (12 oz.) carton 1% low-fat cottage cheese\n1 (10 oz.) pkg. frozen chopped spinach, thawed and drained\n1/2 c. low-fat sour cream\n1/4 c. dry vegetable soup mix\n1 tsp. lemon juice\n1 (10 oz.) can water chestnuts, drained and chopped', 'Process in food processor the cottage cheese. Place in bowl. Press spinach between paper towels until barely moist. Add spinach and remaining ingredients to cheese. Stir; cover and refrigerate 3 hours. Serve with crackers or raw vegetables. Yields 3 cups.\n\nPer Serving (1 Tablespoon): 14 Calories and .4 g. Fat.', 'http://localhost/ai-api/images/5c10f33b319b3.jpg', 0),
(23, 'PEPPERCORN DIP', '1 Tbsp. dried green peppercorns (whole)\n1 (8 oz.) container reduced-calorie cream cheese (soft-style)\n3 Tbsp. skim milk\n1 Tbsp. lemon juice\n1/4 tsp. garlic powder', 'Crush peppercorns. Combine crushed peppercorns with cream cheese, milk, lemon juice and garlic powder. Beat with an electric mixer using medium speed until smooth. Makes 10 (2 tablespoon) servings.\n\nTo Serve: Transfer dip to serving bowl and serve with assorted raw vegetable dippers.\n\nPer Serving: 53 Calories, 2 g. Fat, 13 mg. Cholesterol and 131 mg. Sodium.', 'http://localhost/ai-api/images/5c10f36fa031f.jpg', 0),
(24, 'TOSSED ITALIAN SALAD', '4 c. fresh spinach, torn\n2 c. red leaf lettuce, torn\n1 medium green or sweet yellow pepper, cut in strips (1 c.)\n2/3 c. thinly sliced radishes\n1 small red onion, sliced and separated into rings\n2 Tbsp. red wine vinegar\n4 tsp. olive oil or salad oil\n1/2 tsp. garlic salt\n1/2 tsp. dried oregano, crushed\n2 Tbsp. grated Parmesan cheese\nground pepper (if desired)', 'Salad: Place spinach, lettuce, pepper strips, radish slices and onion rings in a large salad bowl and toss lightly.\n\nDressing: In a screw-top jar combine vinegar, olive oil, garlic salt, oregano and 1 tablespoon water. Cover and shake well to mix.\n\nPour dressing over salad. Toss lightly to coat. Sprinkle Parmesan cheese over salad and toss lightly. Sprinkle with ground pepper (if desired). Serve immediately. Makes 4 servings.\n\nPer Serving: 83 Calories, 6 g. Fat, 2 mg. Cholesterol and 364 mg. Sodium.', 'http://localhost/ai-api/images/5c10f39063322.jpg', 0),
(25, 'CHICKEN AND VEGETABLE NOODLE SOUP', '8 c. water\n2 lb. meaty chicken pieces, skinned (breasts, thighs and/or drumsticks)\n2 Tbsp. instant chicken bouillon granules\n1 tsp. marjoram, crushed\n1/2 tsp. pepper\n1 clove garlic, halved\n1 (10 oz.) pkg. frozen succotash\n1 c. chopped onion\n1/2 c. chopped green or sweet red pepper\n3 oz. medium or wide noodles (1 1/2 c.)\n1/4 c. snipped parsley', 'In a 4 to 6-quart Dutch oven, combine water, chicken, bouillon, marjoram, pepper and garlic and bring to a boil. Reduce heat, cover and simmer 1 hour or until chicken is tender. Remove chicken; cool. Debone chicken and cut into bite-size pieces; set aside. Strain broth and return broth to pan. Skim off fat from broth. Add vegetables and noodles and return to boiling. Simmer 10 minutes or until noodles are done. Stir in parsley and chicken. Heat through. Serves 6.\n\nPer Serving: 176 Calories, 5 g. Fat, 48 mg. Cholesterol and 437 mg. Sodium.', 'http://localhost/ai-api/images/5c10f3b988de4.jpg', 0),
(26, 'ROMAINE-VEGETABLE SALAD', '1/2 small head romaine lettuce\n2 stalks celery, thinly sliced\n1 (16 oz.) pkg. loose-pack frozen broccoli, red peppers, bamboo shoots and straw mushrooms\n2 Tbsp. water\n1 Tbsp. white wine vinegar\n1 Tbsp. cooking oil\n2 tsp. soy sauce\n1/4 tsp. five-spice powder', 'Dressing: Mix vinegar, oil, soy sauce and five-spice powder in a custard cup or small bowl; set aside.\n\nClean and tear romaine into bite-size pieces (makes about 3 cups). In a 12-inch skillet combine frozen vegetables and water. Cook over medium-high heat for 3 to 4 minutes or until thawed and just heated through, stirring occasionally. Reduce heat to medium. Stir in dressing and add romaine and celery. Carefully toss about 30 seconds or until romaine begins to wilt. Makes 6 servings.\n\nTo Serve: Immediately spoon romaine mixture onto salad plates.\n\nPer Serving: 49 Calories, 2 g. Fat, 0 mg. Cholesterol and 149 mg. Sodium.', 'http://localhost/ai-api/images/5c10f3dc2bd8d.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
