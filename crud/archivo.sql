-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2022 a las 00:56:27
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `archivo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo`
--

CREATE TABLE `archivo` (
  `id` int(11) NOT NULL,
  `categoria` varchar(150) DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `archivo` longblob DEFAULT NULL,
  `tipo` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `archivo`
--

INSERT INTO `archivo` (`id`, `categoria`, `nombre`, `fecha`, `archivo`, `tipo`) VALUES
(43, 'png', 'Matiu123', '2022-10-05 23:43:02', 0xffd8ffe000104a46494600010100000100010000ffdb0084000a0708161615181616161918181a1a1a1c1c1a1c1a1e1c1c1c1a1a1e1c1c1c1c211e1c242e251e1e2b211a1c2638262b2f313535351e243b403b343f2e343531010c0c0c100f101f12121e3424242b3434343134313434343431343434343434343434343434343434343434363434343434343434343434343434343431343134ffc000110800e100e103012200021101031101ffc4001b00000203010101000000000000000000000001020405030607ffc4003e1000010301050504080503030500000000010002112103041231f00541516181227191a10613324252b1d1e133627282c192b2f1141523164373a2e2ffc400190101010101010100000000000000000000000103020405ffc40024110101000202020202020300000000000000010211213103124151326171f01322b1ffda000c03010002110311003f00f3e885152dcbdcd420a8a9281129c22108041e4914ca01084008216b381d19e13f254b675b0c044d402473df4aa57cbe3c3cb5a600e42677e6a8959e796acd7c23a3ed658d60c854d7324f7ae73cf5e284f5aaacd4b5aaa275a29a5ad55004eb45075a94f5aaa44eb45058bb5f1cca1ab7870eeaad663c384b4c82b05498f2d32d31fcf7895d6395c55bb085cd96ec7410e6cc7113dd55136e261bda772c8732772d7da6b68edb905010a80a509291402250a2fc9059ff004769f0142dfaf142f3ff009eb4f58f32808412bd0cc28a9202012e69ca8a09142122a870aa5e6f819d91576fe03eeac5a921a70e7bbbf20b2ef2c6b3b02aef79dbc9e03805ce775381c1ce24926a499284910b00d24b5aa296b545022508035a08d6a8a8113aaa213050229a45083a593da0f6981c3819ff001e2b4ac6f6c88634cfc21ba0164cad7b9db97344d4c50f1fb8fa2eb1bce95ddbcfaa68080b64084210450f0843f2423d3e2ef4d28085f3de8dcfa79a8404202fa0f3904d050804420a150225094a8236d6a18d2e3d0712b0e09a9efd515edaa4cb4779d50aa406a3ecb2cef3a485ad5111ad04f0f2d7822351f65c2a56362e7b831a25ce34fe6b1456b686cc7d886979690e9f664c11ded56bd19b306d1eef8591d5c7bb92b9e937e1b0fe7f982a63cdad6e13fc7edf2f39d35e080396bc111cbcbec996f2f2fb2ac8b5aa2235a088d47d911cbcbec80e9af04e396bc111a8fb22351f64046b4159b9de70900e5333c24577772aa3bb5e0a4c8912246fd426f446dbad1a2b8846eae69f3f9ae36175637b4d6f5ccaeeb796fc8210828540a2e529517e4847a8c275284613a842f03d1c3cca145482f7bce10509040948a8a92040a69109808286d464869e048cb8ff00859f875a0afed3b69860ac193f28cb35400d47d9639fe49001ad0411cbcbec881c35e0870e5af05cabd07a396785b8be30eddf03bbbf305d3d2767fc4d3c2d04f5042edb16c08b0b32009ed1a9228e27837bbc159bfdd5d6966f616d48a19901c2a33037f2530ffaf5653fd3d5e42f7661af7b46e71f9f72e71ad05aceb9cdd1d6a6af73f1bb9004b632e64ac726996bc15f8dbcd66ae922351f64e35a6ad1bf6ccc0f63808b2b42d8750e1c71434f054af360e63cb1e208e548dc45322859676e406b4111ad0440d7f84e35a0885ad5174b1b30e786f1df1f65ce35a0ac5c3f11bd63be3b9459dae5c1c46263b3665dc7f856d44b3b58b2310798cd497a319ae10428a1495028bb252517211e970a4a78535e0db6799085142f7b14a1454814208a9041404028da62821b00f13bbea548a8a0cbbddd4300a97124c9235c556d6a8b4769b64b071247c955bfd8e179e06a165963cf08e1acbecba583417410e27dd6b5b89ce76e00475e8b915e9fd15b32d6da488707b44ef1d991f359d77863ba2f9b4dd62d635f767b1b10c9b4ac340dcdcb76f52b8ed8b3b47060c6c277125c0cf3264792d1bfdcdb6e00b525c019114839662be2a374d9ecb38c18a80812f71001324004c0935e8bab35d35c7db7fec932ee087b0fb2f991c09106391cd7977ec77faa716897d9bdcd7b47bcda10e14e0725ebe50cccbb29107a2bb5cb095e7ae16efb7bbb6c5967eb1c016ba4e16300f65d3f16478d150bfdfed2d4faa7b2cf1b1c5a0b416b8119893ba8bd4d9dc98d7b9ecece3f6da3d9773e4798e253b4ba599a96309e6d04f9a9389a9fd8e6e172eebc45a59b9b8644626870e6d76472d4286b545eb76edddbea9ce0d030b0b6800812d23fb7cd796b0b12ec74ab585dc0cd30c52a6a9674cee3aba27d990d6ba28e98fdb43b94ecaee4bb0ce12462698a15a7b52c22c6cd83da64cf025d867bea533611863dd34078457a7d131c7da194f5ba36e3f7b0f789af4a29f7264a0ade4d39080848840c28b94a145c847a89425285e06faaf34505082bdec0824a48404a8a928a09210808216b67384fc2675e2abed3886cfc596f84af77cc270b73de7872ef59e64992493c4d5739581ddeeee7bb037da20968e24098efa2f5db29d899eb22af0318de1f67d8778c05e46cdee6b9af6ba1cd320f05e8bd1fda66d1ef6bc343880eec82248a389126b91e8b1b3576d7c7674da438a70a242ad9cdc548149edfa65298ebe0a2ba1425850ab972be5df1b301c9c4077e90648eb11d565b7059b5f6cf302d1e4b191da735a61800988a4cc6f5a5b46df0593dc338c2dfd4ea0f9f92f256f630c152488cdc4c0ca2bb95d75b6795b2db05b6d17bde5e7fa73000a815f9ab7637b63b3384f03fc1c965221596c64dd8482c6b2b5732ad34e1b8f45af67681c0386ff2e4b4c72ddd2692e8929215115228420b3fee6fe23c026a961e650a7ae3f4bed538424525d2248447f942814a004e108050b7796b5c46601ff2a44d093b857a2cf7ed126435a00222b5537aed14c6aa9a5ad55035a95929c4c0e34f15aecb5f5658e1ee91e1bc784ac798ae5c352b52cad039a0efcba8cd2c69e3af561c080e0641120f1e6858170bf7ab381d25864f12c3bc8fcbc96fb48203810e06a08a8238a9fa6dbdaadaed1b26b8b5d68c0e1982e03e74e8b8da6d8bbb6a5e3a76a3bf0caeb6db3ac5c4b9d64d2e26a400093ccc851b1b858b48c36001e2434c7524956a6b25b63c39a1cd20b480411941526a2567ed3da183b0cabce67733ff00ae5d5245b74abb62f01ef0c07b2cabb9bcd00e827c792cabc9861e83cd75142077f8aaf7d743238bbc95eeb3cb8954a539d68a4539d68aac41d6a55fd9d6830b8120419a98a15435aaa5ad5549d8db65a35c61ae04f2214961b0c1046632d4ab1febdfc5bfd3f75dccbec6a24154b0da00d1fd9e7bbecae1e551c465e2ba96511d67f742961e68540844a374e4a08a94672a9dadfda28ded1e390fbaa3696ae7fb47a0a0f0952e520b77abf7baceaea797d5566de9e3def100fcd721ad4a7ad55716ec74b4bd3dc20ba9dc07c973486b5299d6a5013ad14b5aaa1075a94012a762fc24569226be6a13cd0a527176d735822a388caabb5cef4fb23d9ab09ed30e5dedf84fcd6232d0b4d09eedc7a4ab42fd4ab6bbe0851b4ce3d3d86d2b27092ec06327d3cc50f8a1fb4ec9b93b11e0d13e7979af30dbeb47ba7c977b1b46ba709af0de8b33df4d4bced77110c183f31abba0c9bdf2566b853aca91517e4514ddbbbd51beda4bb0f0cfbd5db47c34bb809595cce7f5eaac679df8328425ad5556673ad14daa3ad5549880724a4f0a13ad14a18d6a574bb5e4b39b778fa55723ad4a0eb52b91a7fee0cfcde0859d3dfe685777ed786bdb5b359ed1ee1bcf459d79bd9788020679d4f055cba4c9ccd50bab95f8431aafdd00a26a80b9d03aebc501229aa1272844ae4011d524c15602513ad14814d504a4509ca035aaa1a48320e494a6a6869d8da07b686b151c14864b2418208a15d9f7a716e1a77ef8535635f7e13bd5e31765b90f38fe1564c42174ceddf342275a282508814c04acc4aeb09151217205767ba02e094a7289481085ca093c7cd2539d510aaa29eb554a75a29caa806b528d6aa914f5aaa0958805c01dfcd5a1776d73ddbf9c2af602b9906473cc81c574c67da9cc4f83a233e61042f1661b10b96b55565f62e709906071e53c79aaa0eb454804d13ad146b5554075a944eb452075a299efd78a006b5294a275a281ad4ae439d68a275a294eb4568ec7d946da5ce25ac06299b8f007773296e971c6e575142c2c9cf761634b9dc06ee64ee1deb76ede8d526d2d083c18283bc9cfc16e5dec18c6e16343472de7893993cd49c3726eb69e393b787bedd9d64fc2fc8fb2edce1398ad3bb30b902bdd3ecc3c16bdad734ee226bc7bd79edb1b1459b0da31c7088961a912730778ef5672cf2c2e3cb1f5aaa0a40eb45075a94db876b31452846e5c9ef956711693dd3925294a64eb4510a75a29ca09d68a5ad5503c5cf5e28440e3af14d34102829ca40a02753f744a275a282a6c498f8dd35073ce37291b4a1110238cef95ce5015160de8d680e5533bb3deab4a7ad5504f54004a75a29a100508948b903052055bd95b35f782e0c2006e6e74c4ee6d37ad31e8a5b13f8967e2ff00a293f430209200a924003995eeae976166c6b06e153c4ef3e2bc5583f05a324fb36827f6baabde3b35ce5f937f16b5b4122721c570bb07824b9c0e201cd004409708353279d147685a1635af1eebdb8bf49ecbbc8cf44aef7c6dded5c40246eaf4198f050bdd80b4b37b3e26d0f3cc1f101765c6e2eece139b0e1e83d9ff00d48292eb54ca6f71e1accd39eb9a94eb455ddb575f576ae03d97769bd731e32a9caeec797975b5345c82eaf32d05724a52d6aa99404901c93944a14d8957978a129e6109b110535636a5c8d8dab9872f69878b4e5e197455d5b2cbaa92ec2124153b532a38b9ae975bbbed1d818c2f3bf801c4934017a6b87a2ed690eb77633f036433a9cdde43bd3f85d3cbd9b5ce9c0c73e332d05d1e1928bc96d1c0b7bc11f35f4b61c230b40681900207d902d0abaa8f9bd858bdfec31efe6d6931d72f15a777f46ef0fcc3583f3b84f83657b6c64a8ca7aabceddfd1367bf6ae77e8019e6714f92d2bbec2bb3262cc38f1792e9e8e31e4afb512aea1b2606b4435a1a38340681d0290281c7203792bcd5ffd29a96d830100fe23eb3dcd1bb993d15d26d676b6c2b12f75bbed0b186ae1412ee47393190055dbb3cb98c7716b4f880bc3df6ddf684b9ee2f773ddc80c80ee5ececdd86cdaee0c6d2bb8059e577946de29c5617a3d6c4dbda07124969893b9aea0ee82b73680ff0089fc43491d2bfc2a1b2f646038dee38c934699680ecc5457bd5fbcdb86b5c23138b5d0d199115ee1cca93f2dfeddc9678f57eab8ec4bce3b06389923b27f6e5e50ba97e1b500e568d31fa99f56ff006acaf44e8c7f0c429c0c7d20abbb55ed0eb007336cd8f03aeab99d59f5b75bdc97f873f48eef8ecb18cecccfed3477d7a2f300af717dfc37cfc0ef915e19992d274f3f966b2756d5a54029d8ae70afc38a68842481a21242073a9fba113cbcd083de6d5d9cdb76613478ab1fc0f0e60ef5e16decdcc7963c61734c11fc8e20afa2aaf7bd9f656a41b4635c4646b31c28448ef5d5e626b97cfecc179c2c6b9ee3b9a24f805bbb3fd187ba1d6c7037e06c179e44e4df33dcbd558b1ac1858d6b0706b401e4a52b9f5df6eb873bb5832cda18c686b46e1bf993993cca9944a0ab2683212284954328080165ededa2fb3c0cb16e3b479ca3116b47bd8471a54f341aae1024980332680752b2af7e90ddd940e368ee0c123fa8f67c2578fbcdbdada38fad739ce0630bb26914f6721d02e40705368d7bff00a436b68d73035ac63841025ce2378c469e4b240e0884c296d5289575bb62d8343710204662b0da8048dde6a9202e6cfb59959d56e5afa464b29670fe332d1ce224f779ab0cda3642c1cf0e18dcd208265e5f115e5e50bcd9517249ab1d5f26577fb7a5f46191624fc4f3e503f85defd7516b6ac60786becc636b692fed090277c0563665dcb2cd8c398151cc993f359d0d7df78fabb3227f36f83cb12e2756b7ca5d493fba5fda2f9b1b423e17020e60e504715e3d868bd75edec79f5368fc0f7b61b6911886585ed343c8efae4bcded0d9d6960fc0f1fa48c9c388fa2d64e3879fc977972e363bcae6a6e7523c5411c99414826800844218c73886b06271300015254d830a16b7fd2d79fc9fd684f68baaf62848a657680a1084022108408ae579b72dc2009738c013029524983a85d8054bd6b5eec42486cb41dc7891ca804f252dd4758e3ed7485a5a38d1cfe8d1867ac977504295958b59ecb40ee11f2ccf32a4c7501ca532b3b77dbd1249d31fd20d9b8c7ad60edb47686f70e3de3e4bcd34cebecbdf074447c9792dbbb3fd5bf134761f51c9dbc7f2ba976c73c757719f0841d6a12d6a8ab3099d6a111c91ad514a085df67b315b5983f1b7c8caafd1369208224115079ee2979963a975657a7dbfb40d980d6187ba6bbda38f79faaf3db3af3eaed03cc9150e8cc822bd77ae56b6ae7b8bde4b9c7327fc2509adcd2dcedcb6b3b56f02d6d0b865000046e1f2acae778bd3df18dc4c34324f06c9134cd728d68218d739c1ac69738e41a27e412b9ec2406b416e5dbd15b57097bdac3b9b18cf58803c4ac7bedd5f66f366f692e06902710dc5b49213e368e7ad5122e0b62e3e8e5b3fb4f8b36f3abcfedfa90bd15cb62585954331b87bcf8719e42207409df4ba790b96cbb6b6ab1870fc6eecb3c48af495ea3626c46d812f7383de44481468398135eab60b8a8cabebf66fe929d4a6b949e4854072e8a4ecfa2485506ed734cee421005407d5084127fb0efd27e4b2ee3f8367fa19fda1085c67f0d7c5dadf0ee5c9b97ee3fdc5342e1b3ab5637a57f80cffc83e45085de3db3f2fe2f2eccba2065d3e8842b1818c9050851437720e47a2109108ff098d7804215820f5e9fd06ffbdfb7f94217392e2f4eff00aaea336f71f9842177927cb9da6ed715176484204dfe42432421511421083fffd9, 'image/png'),
(44, 'jpg', 'Jeronimo', '2022-10-05 23:56:16', 0xffd8ffe000104a46494600010100000100010000ffdb0084000a0708151515181111141819181212181912121218121811121818181919181818191c212e251c1e2b1f18182638262b2f313635351c243b403b33432e343531010c0c0c100f101f12121e342b242b343436343435363434343434343a31343434343634343634363434343434343434343434353d343d34343434343431343134ffc000110800e100e103012200021101031101ffc4001c0001000105010100000000000000000000000501020304060708ffc400481000020102030309020b0506060300000001020003110412210531410622325161718191a113b10714234252627292a2b2c115335382d1243473b3c2e143547493d2f01663a3ffc4001a010100030101010000000000000000000000010203040506ffc4002a110002020103020602020300000000000000010211031221310451133241617181052291a11423b1ffda000c03010002110311003f00ed622250ec111100444401111004444011169705805b12fcb19601644b8ac65805b12b69480222200888802222008888022220088880222200888802222008888025c165009954400ab2f5497a2cc8c55416760aa37b310147793ba018c5395f65355f6f61c02558bd85fe4c5d48faaed643e0d2dffe409c29bf8b5107d1cc9516f845d639be22ff008370d2961a7312eda53ff09fbc1c3903f1dfd2674da740e85c2126c05557a798f5297003785e1c64b9444a2d72a8c4525a52491a130bd09054d02b2db4da7a730b24031c4a91290044440111100444401111004444011110044440111100bd66b63f6ad1a1fbd7009175a6b76a8c3b146b6eddddb217943b6d90fc5e8359ec3da54163ecc1170a3eb9041ec04758b730896249b9663766624b31eb24ea4f699494923b3a7e8e5955b7489fc672aeb3e9410525fa6f95eb780e821fbf21ab56776cf51d9d81b86a8c58afd9be89dcb612c89939367ad8ba5c58f85bf765d52a9b1d781f74bc576981f71ee9748b3a3d4d94c5b0e337286d561a66d0ef077191512eb24a3c30d465b4959d260769e4fdd1f67f552dec8f1d699e6ebc4ad9bb64c6076e3b90955a92b1202b64714aa13a050f9c946ddcd6077d816d670aae44d9a78ad32b6a08b1075520ef04719aacc9f997d9c39bf1f8e7bc7667a335671fbca2ddad4996a20f0e6b93dc86635a88e485604817286eb514702c8d661e224572636b67270ee496550d4d989259371524ea5948e3bc11bec4c9ead411c00ea0e53753b990f5ab0d54f6820c6a89e34f1cb1c9c5f28d374988899ea61dd7a073afd07216a0fb2fb9baacd6ed69ae2b296c86eaf6e838cae6dbc807a43b56e3b649988979594cb0496c4bb2cae58059132049514e018ad13364880618888022220088880268ed9da028526a9a163cda6a7e739dde02c49ec066f4e4395b57357a74efd0a65c8e1cf6201eff00933e7224e959a61c7e24d47b90e8a752c496624b31dec49b927b49265f11398fa48c545521112491529851646a8c8a4b552beca8e750e8086e6df210c59b400ee3adad18b91cfd5f570e9a1aa5f4bb91cb4d9eeb4d59988d1501663e03599f15837a76f68b9731200ba96056c48600dd4d994d8d8ea24a56a7a15c46d02fa806861fda261c5ee006744b30ee51bb789a1885a5708f88a48a9cd4a74d311f262fb8232002e4dcb336ba9b99778e91e760fcb2c93b95457bbb6fe0d2892385c1537e72bd464bd9ab7b214e9275e677717235e6a6627848e94716b93d4c3d4e3cd7e1bbaf611112a6e64c3e2591d1d0d995ae84eecc05ec7b08054f6319e9bb3b1ab5a9ad54dce2f63d253c55bb41b83dd3caea9b0bfd120f803afa5e74bc99da3ec9d91ba0fcff00b2773d877d89fb465d6e8f33aec5abf75c9dccc75a8abae4755653bd5c065ec3632ea6e1802a6e0ee23719745d1e59a076701d0a8ea3e8dd5d7f182c3b81025bf15aa373237502ae87c5816fcb24625b5323491ae1c6fa2cdfe1b5323f1b29f4943580e92541d829bbfe40d24e235b23491df1ba43577c9fe286a7f9c099b0f5a9bf42a23fd8746f719b7798ead147d1d55bb1806f7c9d62997fb0949abfb2b0ff00f2f4bfedd3fe911ac533522226840888802222009c46df6be2aa7d4545fc01ff00d6676f381daeff00da6b5f8d451e488bfa4a4fca75f40bfdcbecc3111303df1373178777a85a99bfc630e8ea48614e99455475763cd51f26fa9d344b9d4cd3978acc14a066c84dca066c84e9a95dc4e83ca5e32d27075fd0aeae295d5330d7c0565542cc49aac541a4c1d17201cd734b35d8def946b6d75dc323ec7447615f11765639968a5466bf1bb54c807acaae25d15c23bae75e764665cd606d7b1d77996cb3c9b1e7e1fc1e38cdb936d7a772470f8d08029ad5dd17752a8940a5be88cc5c20e1a091ee6e4902d726c06e1d929128e4df27af83a6c786f45efdd8888953a0a32dc10788b1f192fc99cad529875b87cc8d7e1752df9d1478c899bbb16a6462db853a8ae4fd5565a8de8184bc15ba39fa98de37f0cee13663237c954214ef56d6dfd66fd3d3466cc7b481e92236b6da55056991f59fe68ee9ced4c40bdd9c03f58d8facb28b678757cb3bf062f380a78d53a2551dcae3f43361714e373b79991a49d17c33b889c726d5aa3e71f1b4daa5b79c74803e91a43c6ce9e24251dbe87a4a4490a3b429bee61dc645147168db8967b41d63ce2011711137331111004444013ceb6beb88abfe2b8f236fd27a24f3cc5fefeb13c2b54dff006da527c1d9d02bcbf4588b697cc1f18bfeed737d63a279f1f0f394f62c7a6c7b96ea3d35f598d1eda97656657aaabd2603ed103df2cf8c2f0cc7b95c8f3b4ba9d055e8a81d640173df32481fb3ec8c0d5491d07d7ec8f79815dbf86fe74fff00299e24d8d32ee61f6e78a3fe0fd1a3e30bc730ef47fe933446c2a5dcc43109bb3adfa8900f9199651901de261f8aafcdbafd8257cc0df1b0fd9767fd19e6decb4cd5327f129b29f70fce7ca468571b9837630b1f31fd26e6cdc4e5a885815cb5137ee398e4de3b5c6fb4be2da6be4cf2bb834f63d0f66ecba0a895512ecc8ae1ea16775cca0f34b13977fcdb4d9a8f29b34fc820fa0993ee129fe996559b3d99f3863701b46008ea6008f59aadb2f0e75f62809dec8a118ff3258cd82653340345f61523d07a89dcf9ff00cc0d356aec3a8354a88dd4b51590f8ba96fcb26434ae79144a9497a9ccd5c1d64e9d16238b532aebe0073cfdd9acb8a5cd973656fa0f747fb8d63e93b0cf2cac8ae32d455653bd5c0653e0646945d659239bf6cfd66524b7ec3c2ffcb50ffb74ff00a44513e37b1bb1112c64222200949594300a133cef1f443622b126ea2b3e503a37bdcdfac86cc3c2773b5317eca93d4e28bcd077163a20f162078ce169ad8004dcf127793c4999cdec7a1f8fc7aa4e4f845e04444c4f68444401104c0822d08888244444010c2eac2d7e69207591a8f5112ea6751253a64356a8f44e4d54270ca58dce7ab76e2c3dab9527b4a953e333d590fc89ad7a0e84f4585bb064543f891cf8c98ab3a5f27cc4e3a64d1aed292ad290544444011788802f11100444401111004b1a5c658c601ce72b6be94e90f9ee5dbb5500001fe6753fcb20a6eedcab9f12ff00fd6889d97b6727f1dbc24562b1888092469bee6c0755cf0eedfd93196f2a3dbe8f4e3c3aa5b5ee6726da9e1bc9dc26b3e346e40589ddbc03dda12de00c89c1ed1f8c574a22f9496bb1d3a2a5b98badb76f373af09daecdd9798e545007ce6e27bd8ea7c634d72565d6eabd1c7720528577faa3c16e3bb9cdf966d51d80cfbcb377027d5cb4ed70db251378cc7b77491a6806e1e522fb1cd2c8df2ecf39abb111195086b96b1045307a2c782f609b94b9261f550de54ff54935b4d33e242a8bfb3a6337da63a7a069d1e1859402b6b093666e470357929557a0cdef1e4a547a4d2adb3f129bd730ed02ff00e903cccf48a78aa6ce69ab8cea2e538dbafb778dd2e6a72b7dcb473c970cf2df8d58d9d0a9f1f71b13e1799d1c3744836de388ef1c27a0e2366d371674537dfa486c5f2368bea8cc846ecbaa8ee077785a36674c7ac92f36e7332a26ee3793b8aa20b8cb5517795396a0f03c3c58ce7bf6e51b5cbf80b13e037fa4697e8752eb3135bbaf93b2e43e26d5aad3fa6ac7b2e8eae07ffbb794ebaacf2de446d4cf892e34535d7436b957434541fe76a67c27a8d49d1e87899da94dca3c33034a4ab4a418888880222200888802222008888050cc4e65ec660a8d041e6bcacda470f88a8839cce43df765cdf349eb1d56dd6d470e3713897737637d741f346bad875f6ef9b3b7719ed71356afd2aad94fd55e6a7e1559a27f592a29149e79c928b7b225792e6d8ba57e2ce3ce9b013db36251b25fae782eceab92b537dd92b2127b330bfa5e7d09b0c5e9f7199e546b825516bdcd8c9322d399b24b82cca8d5c8e430189cb8abd5523da734b1e8abab1b2f5eb7363bb41d73a5c563d69a963ceea550acc7bae6de733d5c3a3e8e8a7bc032898545d428bcb5956ef92168e3056af48d3a4c02672ece32e50c846ee3ae516ed3d42f3652640a06e1e52eb486ec85b1af92024cf68b482da8d5c5a0f66f7fe1b7e533e674d403d607ba7d0dcb4da1f17c157a97b37b2654fb4e32afa913e7b44d00eff74db12d8e6cd2dd13bc92c414ac6dbca5d47d64e72fa813dcd9c1171b88b8ee3ba7cfbb12b64ac8dd475f313dd36454cd429eb7ca9909eb284a13e6b2ecd22ef1af66d1b2d292a65240111100444401111004444012860996318051cc8cdad8af674aa54fa14ddbeea93fa4dea8f39ae59e232e12b7d6409f7d953f5928ac9d23c8945ac3a84a98e3006b2c739471bc777b84f7be43ed25ad45581d5d035ba8ee71e0c089e0afc7bff59d4721f94270d545376b23b5d49e8a36ed7eab0b03d46c7ae5671b4698a5a5d3f53de6d2da8e14166360379331e1312b5103af1de3a8f113536b6c94aebce1ce02cac19d491f44e522e3b0ce73a5734c80db3ca042c543b00370a6eca6fd64aefee918db7aeb67aaeca370cccb6ef2073bc6f2d7d894558abaaa95362d903907b75bf579c7ec4c382486a5a2dc1c950163ae8065dfa0f396477a8c12aa5fdb26f6172911ac8cf9ba989bb0efbea67528c08b83707711ba79d9d9b49880115beb32283e1bccec762eca5a2a0f3b35be73bb05bf050c481e1219cf9e0a3ba25622735cb2e51a61291b9e7b0b2a83ce24ee03b4f5f01af5484acc0e23e1676e672b8443a2dd9edc6d70be66e7f9475cf3f41bbc6319896aaed51cdd9cddba870007600001dd336cea65d9140bdd869d9bcfa5e744552a38e6edd98f0284b8037e527c813fa4f6de4b6273d1bf6a900700f4d18fe32f3c53671b554fb794f71363ef33d37e0d7145a9b533bd29a0fbaef7fccb2646b85fead7d9da188312a68222200888802222014bcb49942d2d2d00b8b4c6ef2d67985de082daaf38af841c4db0ea9fc4aca0f72866f7859d55679e7bcbfc4e6a94e983d046623ed9007e43e7251493d8e4c4ca8351d82f3181329dc4f80963166163c7b47be52deffd25d516de92900f53f83fdb2f4e8536aac5a9b3156277d3ca4aa93d6b6035e1ddbbd35581171a83b8cf29e48d3b6129dc74b39ef05dede969d56c5da9ec2d4dcfc913cd63ff0007b0fd4edf9bddbb092b67728bd29fb12fb67632d6e7a9caea2c1812330e00dbf5b8ec9ce7ec5c40394027b5954faa903d277379594b2d1c928ad9903b23616422a5662ee355536c887aeca0027b4dedd727a244ed7dae297c9a59aa11a29e8a03f39edb8752ef3d82e4392adb93dc6dddb0b8750aa33d5707d9d31d9bdd8fcd41a5cf70d490278872cea3b624fb472ec116e4f4416e71ca380d4794f44209667662cee6eeedd26b6e1d8a3828d079cf3ae580b629fb5508fb807e93582a6533434c2df720e496c46cae8df46a283fcd7591b32e1aa65cddb6b778656fd26a723321e6d43f52abfa31b7ba76ff0006588f977a7c0d3a8477874b7a5e70ec6ee4f683e6a2fea6755f068f6c5dbae9d4fd0fe921f05a0ea47acc4a5e2f2a7415894bc5e015894bc5e015894880602d31b34a33cc0ef04173bcd6a9525b52a4d5a9525882956a4f2fe516273e26a35f456c8bdc8329f50de73d071b8a088cedb914b1ee02f3cacb124b36f24963d64ea4f9c2339b32521c7a84cbecf9a0f5b5bbeda9f78f39b3b330b9d913e9b5cf62aea7cf7784906c087abec29f429280cdd649e7b77ea7eec93220b12b623bafe9fee2620093651726c00eb26e009b9b4595ab305e8824281d439a3d14495e48ecb2f5bdab0e6d1208facfbd4785f377e590dd2b2d04e52491dd6030fece9a521f31156fd794004cd994a4858d94127a94127d26e9d99582e6286c385c66f2df31b3d5d96c62c0e3aa51d29bf33f86e33531f635057b81b764935e52bf1a0be154dbf269eb21620a3c71648e276f57719542d2077b212ef6faacca02fdd3e1be46a281bbaee4924b313bcb13a927893a99599b0b856a8d9505cdae49d001da60b28c63b9ae6707cb9a36ae8fc1e95bc558dfd1967a4d7d95597e65fb5483fef398e576c97a946e11b3d26cea0ab5d8588651a756bde0498ba65332d707479bca83af789407d44a7f59b1e699d7a5dea274ff000707fb6f753a87dc3f59cb21d4788ffdf39d47c1d0fed2efc1683f997a76fd643257991eb25e50d491ed88961c448a3a091f692a1e4636240d49b5cd87693b80eb3d93669a546d588a6bd7505ea1ee4f9bdec411f44c9516f825272d92370b802e4d80de4ee1294ea96d5119fa8a0e61ee76210f9cc22ad04b1cb9d86a1ea90cc0f5a8e8a9fb204b2b6d966dd2da611f33fe0de3d349f3b1bfecdff867ef53ff00ca2457ed07ed9491ab17b97ff1bdcb9de6ad4a92c7a9356a54907197d4ab355de61ab8900137dc6c6c0937d380d4ef9633c1043f2b315968141bea3051ddd26f416f19c522dcfbe48edfda02b54e69ba202a8781fa4ddc481e004d0a62fddef9263276c92c2e2322923a4c2df6106f1dec6c3b37ccb84c7940c16d7219aa3716622caa3b0120f9f0918cff003478f64dbc0613da3589ca88335573a0441bcdf813a81fec60aa8b6e91a629306ccca4665bae604665d40617de0db7cf59f83dd8e9f155a9516e6abb38524dad7caa74df70a0f8cf3ba81f178954a42c6a32a5216e82283a91d406663e33db3014169a2524165a68a883b14003dd32c92d923ab04376d70891a08aa2c8a00ea5004d8135e9b4cca6626d24436d5d8d989a94800c7a4bb83768ea3220eccadfc36f49d9c4b592a6d6c72743625563ce014712c413e4274584c2ad35c883bc9dec7accd92658cd21b21c9cb92c7335dda64769ab51e4178a3c9b6ef2729ae3cd072529e2aed87a8b6ca8ee745604eab9aeb6163665d4480db3c9faf8627da25d38554b9a67bcef5f1b78cf40f843c2fb4a02aaf4f0ed9c30e905360d63c2d656fe5976cada7ede8254d2ecb6a838071a30b7571ee226aa6f4a663e045c9c787ca3ca51b777de759c82194d57faa8a3f113ee592db4793d86ab7210d363bcd2b283dea6e3c85e60d95806c386a74c8a999c966d53268000dbc70e06faee97534ca3e9e717c59d0b623893603793b84ba9333eabcd5fe2383afd85d0b77e835b82662c36109b1233b5ee2e398bf657afb4dcf55b7497c3ecd66d5e55cd2e0e98614b793fa35e8540a7e4c12d6b1a8fab91c403b947628026414aa3ef264cd0c028e13729d00384a39c9f2cd7c4d2aa3b109476513be6f52d9424aaa4c81652cca536c8cfd96b2b252d10575b3ce9ea4d776be9d72d08edad820e05ee5cff002822de26fd92f4c183d22cdde6c3c96c08efbce87248cd619488da9469ab6776e75ae4b15cc6c6f7b5afc384e53696d8537a7872c10dc339b02c0dae145b9a2caa3b86e1c7d2b0db39b722051f54003d26d2ec3275655f100995f11762cfa6db93c516dc58775c5fca5e6a8dc081da489ed4fb0d4e8c8a6db815536f311fb28282aa8a01de02a807bc5a3c55d8a7f88fb9e2aae06ed7acee92f82c1622ba8a7492d4ef7e2b4d8fd2773d33bb75eda584f4c1b1d14dc53407ac2203ee991a8e5059b40a0927800352643cbd9178f4b5cb394e4a6c914b1e543673430d776dc16a39160a380c8defee1e9948ce0391659c57c5b0d71358e5277e45b851e058aff2ceb531644a4f76698629476f527526753209769113628ed2bcad0945930256f35e8570d33130528334c4ed2daf5828d64656da105a31b36ea3cd1c4549aef8b2663bb1e106d18d1ad8b018156170c0860771045883381d86e70b897c1b9391dbe4c9e26dcc6fe65d0f68027a21c3319cd72df93e4d118aa7a54c3eac46fc97b96ef53ceeecd2d16b87ea5332a4a4b95ff0dc1856736b1f0d2f25b05b1c00330b01b80d009979358b4c461d2ba800badaa01f35d79ae3cc1b76112691255dad8beb4d5a3051c2aaee1365125e893322419b916a24c8a92e559781066e4502cada224902222083cf9a6ce16224b3ad13b86dd33c44a32a5865a62241258d22b949fdd311ff004d5bf2344498f2889f95fc1a1c8dfee347baa7f9af251a52259f257179118da569c44945d93981921112acc1f245ed4907562249ac382ec3ef9249112acd0cab306d1fdcd4ff0005ff00234ac498f2527e56733f055fddaa7fd537f954a77292b1267e631c7e432accab112032f12e888285222200888807ffd9, 'image/jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivo`
--
ALTER TABLE `archivo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivo`
--
ALTER TABLE `archivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
