--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Ubuntu 13.3-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.3 (Ubuntu 13.3-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Players; Type: TABLE; Schema: public; Owner: user_fifa
--

CREATE TABLE public."Players" (
    player_id character varying(255) NOT NULL,
    common_name character varying(255),
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    "position" character varying(255) NOT NULL,
    nation character varying(255) NOT NULL,
    age integer,
    weight integer,
    height integer,
    team_id integer
);


ALTER TABLE public."Players" OWNER TO user_fifa;

--
-- Name: Teams; Type: TABLE; Schema: public; Owner: user_fifa
--

CREATE TABLE public."Teams" (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL,
    abbr_name character varying(255)
);


ALTER TABLE public."Teams" OWNER TO user_fifa;

--
-- Name: Teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: user_fifa
--

CREATE SEQUENCE public."Teams_team_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Teams_team_id_seq" OWNER TO user_fifa;

--
-- Name: Teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_fifa
--

ALTER SEQUENCE public."Teams_team_id_seq" OWNED BY public."Teams".team_id;


--
-- Name: Teams team_id; Type: DEFAULT; Schema: public; Owner: user_fifa
--

ALTER TABLE ONLY public."Teams" ALTER COLUMN team_id SET DEFAULT nextval('public."Teams_team_id_seq"'::regclass);


--
-- Data for Name: Players; Type: TABLE DATA; Schema: public; Owner: user_fifa
--

COPY public."Players" (player_id, common_name, first_name, last_name, "position", nation, age, weight, height, team_id) FROM stdin;
100684097	Cristiano Ronaldo	C. Ronaldo	dos Santos Aveiro	ST	Portugal	36	83	187	45
184570177	Cristiano Ronaldo	C. Ronaldo	dos Santos Aveiro	ST	Portugal	36	83	187	45
251816263		Lionel	Messi	RW	Argentina	34	72	170	241
268593479		Lionel	Messi	RW	Argentina	34	72	170	241
237067	Pelé	Edson	Arantes Nascimento	CAM	Brazil	80	70	173	112658
151185815	Neymar Jr	Neymar	da Silva Santos Jr.	CAM	Brazil	29	68	175	73
167963031	Neymar Jr	Neymar	da Silva Santos Jr.	CAM	Brazil	29	68	175	73
184725956		Luis	Suárez	ST	Uruguay	34	86	182	241
201503172		Luis	Suárez	ST	Uruguay	34	86	182	241
201509869		Eden	Hazard	LW	Belgium	30	74	173	5
218287085		Eden	Hazard	LW	Belgium	30	74	173	5
235069569		Robert	Lewandowski	ST	Poland	32	80	184	21
251846785		Robert	Lewandowski	ST	Poland	32	80	184	21
184707399		Lionel	Messi	CF	Argentina	34	72	170	241
201347393	Cristiano Ronaldo	C. Ronaldo	dos Santos Aveiro	ST	Portugal	36	83	187	45
100840299		Luka	Modrić	CM	Croatia	35	66	172	243
268623806		Marco	Reus	CAM	Germany	32	71	180	22
285401022		Marco	Reus	CAM	Germany	32	71	180	22
190042		Diego	Maradona	CAM	Argentina	60	70	165	112658
84041942	Sergio Ramos	Sergio	Ramos García	CB	Spain	35	82	184	243
117633497		Kevin	De Bruyne	CAM	Belgium	30	70	181	10
117633592	De Gea	David	De Gea Quintana	GK	Spain	30	76	193	11
117672259		Kylian	Mbappé	RW	France	22	73	178	73
184758707		Mohamed	Salah	RW	Egypt	29	71	175	9
201535923		Mohamed	Salah	RW	Egypt	29	71	175	9
235075789		Antoine	Griezmann	CF	France	30	73	176	240
251853005		Antoine	Griezmann	CF	France	30	73	176	240
302173165		Eden	Hazard	LW	Belgium	30	74	173	243
84087615		Raphaël	Varane	CB	France	28	81	191	243
37576	Ronaldo	Ronaldo Luís	Nazário de Lima	ST	Brazil	44	78	183	112658
100879210		N'Golo	Kanté	CDM	France	30	68	168	5
117623005		Diego	Godín	CB	Uruguay	35	78	187	240
167925239		Sergio	Agüero	ST	Argentina	33	70	173	10
167931421		Fabio	Quagliarella	ST	Italy	38	79	180	1837
167980882		Sadio	Mané	LW	Senegal	29	69	175	9
167962620		Christian	Eriksen	CAM	Denmark	29	76	181	18
184702105	Piqué	Gerard	Piqué Bernabeu	CB	Spain	34	85	194	241
184708637		Fabio	Quagliarella	ST	Italy	38	79	180	1837
184714529		Karim	Benzema	ST	France	33	81	185	243
201479321	Piqué	Gerard	Piqué Bernabeu	CB	Spain	34	85	194	241
201491745		Karim	Benzema	ST	France	33	81	185	243
201559641		Jadon	Sancho	RM	England	21	76	180	22
218292375		Pierre-Emerick	Aubameyang	ST	Gabon	32	80	187	1
218336857		Jadon	Sancho	RM	England	21	76	180	22
235069591		Pierre-Emerick	Aubameyang	ST	Gabon	32	80	187	1
235083676		Raheem	Sterling	RW	England	26	69	170	10
235082048		Kalidou	Koulibaly	CB	Senegal	30	89	187	48
251859264		Kalidou	Koulibaly	CB	Senegal	30	89	187	48
251860892		Raheem	Sterling	RW	England	26	69	170	10
251866910		Hakim	Ziyech	RM	Morocco	28	65	180	245
268644126		Hakim	Ziyech	RM	Morocco	28	65	180	245
285407437		Antoine	Griezmann	ST	France	30	73	176	241
285416048		Virgil	van Dijk	CB	Holland	30	92	193	9
302193264		Virgil	van Dijk	CB	Holland	30	92	193	9
302215998		Nicolas	Pépé	RM	Côte d'Ivoire	26	73	183	65
335770430		Nicolas	Pépé	RM	Côte d'Ivoire	26	73	183	65
67158233	Fernando Torres	Fernando José	Torres Sanz	ST	Spain	37	79	186	113160
83927316		Zlatan	Ibrahimović	ST	Sweden	39	95	195	697
100852239		Kevin	Trapp	GK	Germany	31	86	189	1824
84120986		Houssem	Aouar	CM	France	23	70	175	66
100862730		Dušan	Tadić	LM	Serbia	32	76	181	245
117616455		Dries	Mertens	ST	Belgium	34	61	169	48
117669214		Frenkie	de Jong	CDM	Holland	24	70	180	245
134381968	Thiago Silva	Thiago Emiliano	da Silva	CB	Brazil	36	82	183	73
134446430		Frenkie	de Jong	CDM	Holland	24	70	180	245
151133900		Giorgio	Chiellini	CB	Italy	36	85	187	45
151159184	Thiago Silva	Thiago Emiliano	da Silva	CB	Brazil	36	82	183	73
151195333		Jan	Oblak	GK	Slovenia	28	87	188	240
151207775	Alisson	Alisson	Ramses Becker	GK	Brazil	28	91	191	9
151230734		Kai	Havertz	CAM	Germany	22	82	188	32
167951973		Edinson	Cavani	ST	Uruguay	34	77	185	73
168007403		Matthijs	de Ligt	CB	Holland	21	89	188	245
184692452		Alejandro	Gómez	CAM	Argentina	33	68	165	39
184784619		Matthijs	de Ligt	CB	Holland	21	89	188	245
201510490		Ángel	Di María	CF	Argentina	33	69	180	73
201496008		Carlos	Vela	RW	Mexico	32	77	177	112996
201469668		Alejandro	Gómez	CAM	Argentina	33	68	165	39
201534457	Marquinhos	Marcos	Aoás Corrêa	CB	Brazil	27	75	183	73
201536091	Fabinho	Fábio	Henrique Tavares	CDM	Brazil	27	78	188	9
218281491		Yann	Sommer	GK	Switzerland	32	79	183	23
218311673	Marquinhos	Marcos	Aoás Corrêa	CB	Brazil	27	75	183	73
218299672		Paul	Pogba	CM	France	28	84	191	11
218315996		Timo	Werner	ST	Germany	25	75	181	112172
218316430		Joshua	Kimmich	RB	Germany	26	70	176	21
235093212		Timo	Werner	ST	Germany	25	75	181	112172
235093646		Joshua	Kimmich	RB	Germany	26	70	176	21
235111645		Gianluigi	Donnarumma	GK	Italy	22	90	196	47
251858344		Heung Min	Son	ST	Korea Republic	29	65	183	18
251888861		Gianluigi	Donnarumma	GK	Italy	22	90	196	47
190045		Johan	Cruyff	CF	Holland	74	71	180	112658
28130	Ronaldinho	Ronaldo	de Assis Moreira	LW	Brazil	41	78	180	112658
238380		Lev	Yashin	GK	Russia	91	82	189	112658
100671122		Robin	van Persie	ST	Holland	38	71	187	246
117630108		Thomas	Müller	CF	Germany	31	75	186	21
134417284		Marco	Verratti	CM	Italy	28	60	165	73
184742005	Iago Aspas	Iago	Aspas Juncal	ST	Spain	34	67	175	450
184759890	João Cancelo	João Pedro	Cavaco Cancelo	RB	Portugal	27	74	182	45
201538790	Bruno Fernandes	Bruno Miguel	Borges Fernandes	CAM	Portugal	26	69	179	237
1114		Roberto	Baggio	CAM	Italy	54	73	174	112658
226764		George	Best	RW	Northern Ireland	75	65	175	112658
67285633	Jonas	Jonas	Gonçalves Oliveira	ST	Brazil	37	74	181	234
100819912		Franck	Ribéry	LW	France	38	72	170	21
100852805	Thiago	Thiago	Alcântara	CDM	Spain	30	70	174	21
117608947		Salvatore	Sirigu	GK	Italy	34	80	192	54
117646198		Téji	Savanier	CDM	France	29	62	171	224
134417873	Casemiro	Carlos Henrique	Venancio Casimiro	CDM	Brazil	29	84	185	243
151194395		Wissam	Ben Yedder	ST	France	30	68	170	481
167984354		Julian	Brandt	CAM	Germany	25	82	185	32
184757874		Munas	Dabbur	ST	Israel	29	77	181	191
251866031		Yussuf	Poulsen	ST	Denmark	27	84	193	112172
1183		Fabio	Cannavaro	CB	Italy	47	74	176	112658
45661	Raúl	Raúl	González Blanco	CF	Spain	44	68	180	112658
238384	Carles Puyol	Carles	Puyol Saforcada	CB	Spain	43	80	178	112658
67322738	Thiago Mendes	Thiago Henrique	Mendes Ribeiro	CDM	Brazil	29	78	176	65
84088509		Danny	da Costa	RWB	Germany	28	88	187	1824
100846870		Max	Kruse	CF	Germany	33	76	180	38
134419854		Harry	Kane	ST	England	28	89	188	18
134443999	Fabián	Fabián	Ruiz Peña	CM	Spain	25	70	189	48
167994152		Hirving	Lozano	RW	Mexico	26	70	175	247
1116		Marcel	Desailly	CB	France	52	81	185	112658
3647		Michael	Ballack	CM	Germany	44	85	188	112658
13128		Andriy	Shevchenko	ST	Ukraine	44	72	183	112658
238427		Patrick	Vieira	CM	France	45	83	192	112658
50474355		Lisandro	López	ST	Argentina	38	72	174	101085
67157804		Petr	Čech	GK	Czech Republic	39	90	196	1
216655	Bastos	Bartolomeu	Quissanga	CB	Angola	29	77	180	46
219391		Gonzalo	Escalante	CDM	Argentina	28	75	182	467
223952	David Soria	David	Soria Solís	GK	Spain	28	85	192	1860
226766	Daniel Podence	Daniel	Castelo Podence	LM	Portugal	25	58	165	280
232244		Santiago	Ascacíbar	CDM	Argentina	24	70	168	36
50471508		Jérémy	Morel	CB	France	37	78	175	66
50484560		José	Sand	ST	Argentina	41	79	182	110395
50500255	Rafinha	Márcio Rafael	Ferreira de Souza	RB	Brazil	35	68	172	21
50509438		Artur	Jędrzejczyk	CB	Poland	33	78	189	1871
50514510		Maximiliano	Pereira	RB	Uruguay	37	73	173	236
50516792		Massimo	Coda	ST	Italy	32	72	184	112026
50519165		Viktor	Vasin	CB	Russia	32	83	192	315
50521255		Manuel	Schäffler	ST	Germany	32	89	189	492
50524093		Daniel	Ginczek	ST	Germany	30	85	190	175
50531863		Sebastian	Rode	CDM	Germany	30	75	179	22
50536349		Salim	Khelifi	RM	Switzerland	27	65	173	894
50542449		David	Accam	LM	Ghana	30	79	174	112134
50544030		Paul Ebere	Onuachu	ST	Nigeria	27	84	201	1516
50544743		Lucas	Cavallini	ST	Canada	28	89	182	110152
50547047	Rúben Vezo	Rúben Miguel	Nunes Vezo	CB	Portugal	27	80	182	461
50551590		Didier	Delgado	RM	Colombia	29	70	185	101103
50552573		Alessandro	Schöpf	RM	Austria	27	74	178	34
50556073		Marius	Wolf	RM	Germany	26	82	188	22
50557741		Che	Adams	ST	England	25	66	178	88
50561284		Gastón	Pereiro	CAM	Uruguay	26	76	188	247
50563064		Dodi	Lukebakio	ST	Congo DR	23	77	187	110636
50567912		Pedro	Aquino	CM	Peru	26	70	174	110781
50568595		Jordan	Torunarigha	CB	Germany	24	77	189	166
67291359		Martín	Cáceres	CB	Uruguay	34	78	180	45
67302711	Osmar	Osmar	Ibañez Barba	CB	Spain	33	89	192	982
67316285		Leandro	Trossard	LW	Belgium	26	67	172	673
67321306	José Sá	José Pedro	Malheiro de Sá	GK	Portugal	28	85	192	236
67329718		Erick	Gutiérrez	CM	Mexico	26	74	181	247
67345325		Jean-Philippe	Mateta	ST	France	24	84	192	169
84102405		Angus	Gunn	GK	England	25	77	196	17
110376	Jonatan Soriano	Jonatan	Soriano Casas	ST	Spain	35	72	180	111768
134820		Scott	Brown	CDM	Scotland	36	74	175	78
137809	Vágner Love	Vágner	Silva de Souza	ST	Brazil	37	72	171	327
139668		Federico	Marchetti	GK	Italy	38	83	188	110556
146701	Iván Ramis	Iván	Ramis Barrios	CB	Spain	36	82	188	467
152996		Per Ciljan	Skjelbred	CDM	Norway	34	74	175	166
152999		Rodrigo	Palacio	ST	Argentina	39	70	176	189
165526		Gabriel	Paletta	CB	Italy	35	80	190	112162
167669		Federico	Higuaín	CAM	Argentina	36	75	173	687
169792		Jay	Rodriguez	ST	England	32	84	185	109
171828		Ignacio	Scocco	ST	Argentina	36	73	177	1876
173030		Óscar	Trejo	CAM	Argentina	33	79	180	480
176571		André	Ayew	ST	Ghana	31	72	176	326
178250		Papakouli	Diop	CDM	Senegal	35	77	179	467
182744		Jose	Holebas	LB	Greece	37	81	185	1795
182896		Roberto	Rosales	RB	Venezuela	32	70	175	573
183389		Giovanni	Sio	ST	Côte d'Ivoire	32	80	180	70
183569		Eric Maxim	Choupo-Moting	LM	Cameroon	32	91	191	1806
183871		Nicolai	Müller	RM	Germany	33	66	173	1824
185132	Mikel San José	Mikel	San José Domínguez	CM	Spain	32	79	187	448
185181	Yoel	Yoel	Rodríguez Oterino	GK	Spain	32	78	185	467
186395		Matt	Ritchie	RM	Scotland	31	76	172	13
186589		Ivan	Radovanović	CDM	Serbia	32	80	187	192
188041	Rafael Carioca	Rafael	de Souza Pereira	CM	Brazil	32	72	179	1970
84062756	Marcelo	Marcelo	Vieira da Silva	LB	Brazil	33	80	174	243
100855415		Thibaut	Courtois	GK	Belgium	29	96	199	243
117641911		Mauro	Icardi	ST	Argentina	28	75	181	44
67108905	Iniesta	Andrés	Iniesta Luján	CM	Spain	37	68	171	101146
151184276	Jordi Alba	Jordi	Alba Ramos	LB	Spain	32	68	170	241
167964789	Iago Aspas	Iago	Aspas Juncal	ST	Spain	34	67	175	450
168004592		Luka	Jović	ST	Serbia	23	87	182	1824
184742677		Alexandre	Lacazette	ST	France	30	73	175	1
184772429		Ángel	Mena	RM	Ecuador	33	67	168	110781
201527239		Josip	Iličić	ST	Slovenia	33	79	190	39
1625		Thierry	Henry	ST	France	43	83	188	112658
192181		Marco	van Basten	ST	Holland	56	78	188	112658
238435		Lothar	Matthäus	CM	Germany	60	71	174	112658
67117878		Arjen	Robben	RW	Holland	37	80	180	21
67301312		Marc-André	ter Stegen	GK	Germany	29	85	187	241
100831838	David Silva	David Josué	Jiménez Silva	CAM	Spain	35	67	173	10
100847203		Jérôme	Boateng	CB	Germany	32	90	192	21
100855683		Ciro	Immobile	ST	Italy	31	85	185	46
117593756		André-Pierre	Gignac	ST	France	35	91	187	1970
117628889		Kyle	Walker	RB	England	31	70	183	10
117630023	Sergio Busquets	Sergio	Busquets Burgos	CDM	Spain	33	76	189	241
134364290	Santi Cazorla	Santiago	Cazorla González	CM	Spain	36	66	168	483
134419183		Geoffrey	Kondogbia	CM	France	28	80	188	461
134419670	Roberto Firmino	Roberto Firmino	Barbosa de Oliveira	CF	Brazil	29	76	181	9
151192909	Pizzi	Luis Miguel	Afonso Fernandes	RM	Portugal	31	72	177	234
151211089		Armando	Izzo	CB	Italy	29	78	183	54
167983908		Kerem	Demirbay	CM	Germany	28	72	182	10029
167996008		Sergej	Milinković-Savić	CM	Serbia	26	76	191	46
184753861		Riyad	Mahrez	RW	Algeria	30	67	179	10
241		Ryan	Giggs	LM	Wales	47	71	179	112658
1041		Javier	Zanetti	RB	Argentina	47	74	178	112658
10264		Ruud	van Nistelrooy	ST	Holland	45	80	188	112658
5589	Luís Figo	Luís Filipe	Madeira Caeiro Figo	RW	Portugal	48	75	180	112658
191695	Emilio Butragueño	Emilio	Butragueño Santos	ST	Spain	58	68	168	112658
214267		Gary	Lineker	ST	England	60	74	177	112658
238428		Peter	Schmeichel	GK	Denmark	57	92	193	112658
67222286	David Villa	David	Villa Sánchez	ST	Spain	39	69	175	101146
67334942	Trezeguet	Mahmoud	Hassan	LM	Egypt	26	78	179	111339
84055275	Renato Augusto	Renato	Augusto	CM	Brazil	33	86	186	111768
84090964		Benjamin	Mendy	LB	France	27	85	185	10
84097336		Nicolás	Tagliafico	LB	Argentina	28	65	171	245
117631325		Stephan	El Shaarawy	LM	Italy	28	72	178	52
117641048		Nico	Schulz	LWB	Germany	28	78	180	10029
134418264		Nico	Schulz	LWB	Germany	28	78	180	10029
134428838		Paulo	Dybala	RW	Argentina	27	75	177	45
151235074	Éder Militão	Éder	Gabriel Militão	CB	Brazil	23	79	186	236
167974155	Felipe Anderson	Felipe Anderson	Pereira Gomes	LM	Brazil	28	70	175	19
168004103	Richarlison	Richarlison	de Andrade	ST	Brazil	24	70	181	7
251849055		Daley	Blind	CB	Holland	31	72	180	245
246		Paul	Scholes	CM	England	46	71	171	112658
5419		Michael	Owen	ST	England	41	70	173	112658
5984		David	Trezeguet	ST	France	43	75	187	112658
13743		Steven	Gerrard	CM	England	41	83	183	112658
161840	Fernando Hierro	Fernando	Hierro Ruiz	CB	Spain	53	84	187	112658
190046	Sócrates	Sócrates	Vieira de Oliveira	CAM	Brazil	67	79	192	112658
238424		Patrick	Kluivert	ST	Holland	45	81	188	112658
238443		Laurent	Blanc	CB	France	55	82	192	112658
242510		Miroslav	Klose	ST	Germany	43	74	184	112658
50514169		Toni	Kroos	CM	Germany	31	76	183	243
50524286	Marcos Alonso	Marcos	Alonso Mendoza	LB	Spain	30	84	188	5
67248584		Vincent	Kompany	CB	Belgium	35	85	190	10
67309752	Danilo Pereira	Danilo Luís	Hélio Pereira	CDM	Portugal	29	83	188	236
84057957		Marek	Hamšík	CM	Slovakia	34	79	183	48
216531	Paulinho	João Paulo	Dias Fernandes	ST	Portugal	28	81	187	1896
223197		Enes	Ünal	ST	Turkey	24	75	185	462
226379		Marcos	Díaz	GK	Argentina	35	84	187	111711
237239		Enis	Bardhi	CM	FYR Macedonia	26	64	172	1853
50447181		Diego	Benaglio	GK	Switzerland	37	89	194	69
50484696		Magnus Wolff	Eikrem	CAM	Norway	30	69	184	417
50496107		Sebastian	Larsson	CM	Sweden	36	70	178	433
50505466	Adrián	Adrián	López Álvarez	ST	Spain	33	73	183	236
50513739		Kosta	Barbarouses	ST	New Zealand	31	68	171	111397
50515131		Konstantinos	Mitroglou	ST	Greece	33	86	188	325
50520450		Marcel	Schmelzer	LB	Germany	33	74	181	22
50522179		Eliaquim	Mangala	CB	France	30	84	187	10
50525009		Roberto	Soriano	LM	Italy	30	76	182	189
50530232		Kara	Mbodji	CB	Senegal	31	92	192	229
50534532		Leonardo	Spinazzola	LM	Italy	28	75	186	45
50537214	Alberto Moreno	Alberto	Moreno Pérez	LB	Spain	29	65	171	9
50543568		Marco	Grüttner	ST	Germany	35	84	185	543
50544526		Nicolás	Castillo	ST	Chile	28	81	179	234
50545648		Yordy	Reyna	LM	Peru	27	68	169	101112
50551381		Ludovic	Ajorque	ST	France	27	82	196	76
50551901	Munir	Munir	El Haddadi	ST	Spain	25	69	175	241
50555794	Jesús Imaz	Jesús	Imaz Ballesté	CAM	Spain	30	70	174	1873
50556090		Bingourou	Kamara	GK	France	24	84	193	76
50560386		Jhon	Murillo	ST	Venezuela	25	66	171	112516
50562333		Emre	Akbaba	CAM	Turkey	28	73	180	325
50568146		Sam	Lammers	ST	Holland	24	77	189	1913
50569489		Michael	Murillo	RB	Panama	25	77	183	689
67297199		Ante	Budimir	ST	Croatia	30	75	190	453
84106873		Davinson	Sánchez	CB	Colombia	25	79	187	18
100873553	Ederson	Ederson	Santana de Moraes	GK	Brazil	27	86	188	10
117671793		Trent	Alexander-Arnold	RB	England	22	69	180	9
134436395	Bernardo Silva	Bernardo Mota	Carvalho e Silva	CM	Portugal	26	64	173	10
151226387		Ousmane	Dembélé	LW	France	24	67	178	241
184748326	Pablo Sarabia	Pablo	Sarabia García	CM	Spain	29	70	174	481
201530697		Kenny	Lala	RWB	France	29	78	178	76
166906		Franco	Baresi	CB	Italy	61	70	176	112658
242519	Eusébio	Eusébio	da Silva Ferreira	CF	Portugal	79	76	175	112658
84106211		Mbaye	Diagne	ST	Senegal	29	86	191	325
100847383		Toby	Alderweireld	CB	Belgium	32	81	186	18
100871870		Filip	Kostić	LWB	Serbia	28	82	184	1824
117645482		Florian	Thauvin	RM	France	28	70	179	219
134353235	Fernandinho	Fernando Luiz	Rosa	CDM	Brazil	36	67	179	10
151173462		Radja	Nainggolan	CAM	Belgium	33	77	176	44
151210167		Walter	Benítez	GK	Argentina	28	91	191	72
184740419	Alex Sandro	Alex Sandro	Lobo Silva	LB	Brazil	30	80	180	45
201504005		Axel	Witsel	CDM	Belgium	32	81	188	22
1088		Alessandro	Nesta	CB	Italy	45	79	187	112658
4833		Hristo	Stoichkov	ST	Bulgaria	55	73	178	112658
238382		Alessandro	Del Piero	CF	Italy	46	74	174	112658
67347658	Vinícius Júnior	Vinícius José	de Oliveira Júnior	LW	Brazil	21	62	177	243
84093490		Mateo	Kovačić	CM	Croatia	27	78	178	5
100891914		Ferland	Mendy	LB	France	26	73	178	66
134427386		Leon	Goretzka	CDM	Germany	26	79	189	21
151221215	Fabián	Fabián	Ruiz Peña	CM	Spain	25	70	189	48
235071839		Daley	Blind	CB	Holland	31	72	180	245
1256		Clarence	Seedorf	CAM	Holland	45	78	176	112658
6235		Pavel	Nedvěd	LM	Czech Republic	48	72	177	112658
166124		Gheorghe	Hagi	CAM	Romania	56	68	172	112658
238430	Roberto Carlos	Roberto Carlos	da Silva Rocha	LB	Brazil	48	69	168	112658
50503439	José Fonte	José Miguel	da Rocha Fonte	CB	Portugal	37	81	187	65
67233239		Burak	Yılmaz	ST	Turkey	36	77	188	327
67293439		Romain	Alessandrini	RM	France	32	70	173	697
84062999		Nahuel	Guzmán	GK	Argentina	35	94	193	1970
84075322	Coutinho	Philippe	Coutinho Correia	CAM	Brazil	29	68	172	241
84083861	Isco	Francisco Román	Alarcón Suárez	CAM	Spain	29	79	176	243
84086690		Kevin	Volland	ST	Germany	29	81	179	32
84086832	Juan Jesus	Juan Guilherme	Nunes Jesus	CB	Brazil	30	76	185	52
84096745		Marcel	Halstenberg	LB	Germany	29	82	187	112172
84099411		Jonathan	Tah	CB	Germany	25	95	194	32
100668775	Casillas	Iker	Casillas Fernández	GK	Spain	40	84	185	236
100853101		Luuk	de Jong	ST	Holland	30	86	188	247
100857700	Neto	Norberto	Murara Neto	GK	Brazil	32	84	190	241
100863210	Allan	Allan	Marques Loureiro	CM	Brazil	30	74	175	48
100864806		Layvin	Kurzawa	LB	France	28	76	182	73
100868974		Edin	Višća	RM	Bosnia and Herzegovina	31	63	172	101014
100871629		Emre	Can	CM	Germany	27	82	184	45
100872593	Fred	Frederico	R. de Paula Santos	CM	Brazil	28	64	169	11
100878626		Joaquín	Correa	CF	Argentina	26	77	189	46
100885788		Leroy	Sané	LW	Germany	25	75	183	10
100887707	Gonçalo Guedes	Gonçalo Manuel	Ganchinho Guedes	LW	Portugal	24	68	179	461
100898865		Tanguy	Ndombele	CM	France	24	76	181	66
100905740	João Félix	João	Félix Sequeira	CF	Portugal	21	70	180	234
117649320		Quincy	Promes	LM	Holland	29	72	174	245
117674557		Henry	Onyekuru	LM	Nigeria	24	59	175	325
117676317		Federico	Chiesa	RW	Italy	23	70	175	110374
134420379	Suso	Jesús Joaquín	Fernández Sáez	RW	Spain	27	70	176	47
134422127		Eran	Zahavi	ST	Israel	34	71	182	112429
134423841		Serge	Gnabry	RM	Germany	26	75	175	21
134433929	Williams	Iñaki	Williams Arthuer	ST	Spain	27	79	186	448
134445264		Moussa	Marega	ST	Mali	30	83	186	236
134445979		Lorenzo	Pellegrini	CM	Italy	25	77	186	52
151181481		Cristhian	Stuani	ST	Uruguay	34	72	186	110062
151193654		James	Rodríguez	CAM	Colombia	30	78	181	21
151208289		Kingsley	Coman	LM	France	25	71	178	21
151210393		Robert	Skov	RM	Denmark	25	76	183	819
151239313		Viktor	Tsygankov	RM	Ukraine	23	69	177	101047
167988754		Nabil	Fekir	CAM	France	28	75	173	66
167995273		Krzysztof	Piątek	ST	Poland	26	77	183	47
184781053		Marcus	Rashford	ST	England	23	70	185	11
235094785		Abderrazak	Hamdallah	ST	Morocco	30	81	179	112139
240		Roy	Keane	CM	Republic of Ireland	49	76	180	112658
570		Jay-Jay	Okocha	CAM	Nigeria	47	70	173	112658
805		Jens	Lehmann	GK	Germany	51	87	190	112658
1025	Rui Costa	Rui Manuel	César Costa	CAM	Portugal	49	74	180	112658
1198		Filippo	Inzaghi	ST	Italy	47	74	181	112658
1201		Gianfranco	Zola	CF	Italy	55	67	168	112658
1620		Emmanuel	Petit	CDM	France	50	79	185	112658
1668		Claude	Makélélé	CDM	France	48	70	174	112658
5471		Frank	Lampard	CM	England	43	89	184	112658
5673		Jari	Litmanen	CAM	Finland	50	76	181	112658
7289		Rio	Ferdinand	CB	England	42	87	189	112658
7512		Hernán	Crespo	ST	Argentina	46	78	184	112658
53769	Deco	Anderson Luís	de Souza	CM	Portugal	43	73	174	112658
156353		Luis	Hernández	ST	Mexico	52	69	175	112658
214098		Frank	Rijkaard	CDM	Holland	58	85	187	112658
238441		Marc	Overmars	LM	Holland	48	72	173	112658
239261		Henrik	Larsson	ST	Sweden	49	75	178	112658
239519		Christian	Vieri	ST	Italy	48	80	185	112658
243027		Juan Sebastián	Verón	CM	Argentina	46	80	186	112658
50474649		Carlos	Tévez	CF	Argentina	37	76	171	1877
50510251		Mats	Hummels	CB	Germany	32	92	191	21
50519729	Alex Teixeira	Alex	Teixeira dos Santos	ST	Brazil	31	70	173	112162
50563339		Alban	Lafont	GK	France	22	82	193	110374
67160121		Peter	Crouch	ST	England	40	75	201	1796
67162166		Daniele	De Rossi	CDM	Italy	38	83	184	52
67162914		Wayne	Rooney	CF	England	35	83	176	688
67246050		Andrea	Barzagli	CB	Italy	40	87	187	45
67249248	Jô	João Alves	de Assis Silva	ST	Brazil	34	78	189	112092
67255394	Dani Alves	Daniel	Alves da Silva	RB	Brazil	38	68	172	73
67286252		Dimitri	Payet	CAM	France	34	77	175	219
67293805		Alexis	Sánchez	LW	Chile	32	74	169	11
67299150	Canales	Sergio	Canales Madrazo	CM	Spain	30	74	180	449
67306717		Serge	Aurier	RB	Côte d'Ivoire	28	76	176	18
67317194		Adnan	Januzaj	RW	Belgium	26	76	186	457
67321054		Niklas	Süle	CB	Germany	25	97	195	21
67333797		Kevin	Lasagna	ST	Italy	28	80	186	55
67341960		Denzel	Dumfries	RB	Holland	25	80	188	247
84070347		Yacine	Brahimi	LM	Algeria	31	66	175	236
84084299		Lorenzo	Insigne	ST	Italy	30	59	163	48
84096088		Adrien	Rabiot	CM	France	26	80	192	73
84115317		Manuel	Akanji	CB	Switzerland	26	85	187	22
100835818		Daniel	Wass	CM	Denmark	32	74	181	461
100836167		Jan	Vertonghen	CB	Belgium	34	86	189	18
100844587		Georginio	Wijnaldum	CM	Holland	30	69	175	9
100848177		Sofiane	Feghouli	RM	Algeria	31	75	176	325
100855638		Edwin	Cardona	CAM	Colombia	28	78	185	110147
100857318	André Almeida	André Gomes	Magalhães Almeida	RB	Portugal	30	80	185	234
100862013		Wilfried	Zaha	CF	Côte d'Ivoire	28	66	180	1799
100865667		Thomas	Meunier	RB	Belgium	29	90	191	73
100879843	Rafa	Rafael A.	Ferreira Silva	LM	Portugal	28	66	172	234
100893954	Arthur	Arthur Henrique	Ramos Oliveira Melo	CM	Brazil	24	73	171	241
100894063	Renato Sanches	Renato Júnior	Luz Sanches	CM	Portugal	23	70	176	21
117603347		Samir	Handanovič	GK	Slovenia	37	92	193	44
117624226		Simon	Terodde	ST	Germany	33	83	192	31
117630995	Douglas Costa	Douglas	Costa de Souza	CAM	Brazil	30	70	172	45
117633920		Haris	Seferović	ST	Switzerland	29	85	189	234
117664691	Borja Iglesias	Borja	Iglesias Quintas	ST	Spain	28	80	187	452
117665597		Jonathan	Bamba	LM	France	25	72	175	65
134421987		Santiago	Arias	RB	Colombia	29	72	178	240
134439091		Donny	van de Beek	CAM	Holland	24	74	183	245
151202751		Ryan	Fraser	LM	Scotland	27	60	163	1943
151237388	João Félix	João	Félix Sequeira	CF	Portugal	21	70	180	240
184753453		M'Baye	Niang	LW	Senegal	26	78	184	74
243029		Sol	Campbell	CB	England	46	90	188	112658
243030		Gennaro	Gattuso	CDM	Italy	43	77	177	112658
50332827		Gianluigi	Buffon	GK	Italy	43	92	192	73
50347902		Tim	Howard	GK	United States	42	88	191	694
50493995	João Moutinho	João Filipe	Moutinho	CM	Portugal	34	61	170	110
50499312		Gonzalo	Higuaín	ST	Argentina	33	89	186	5
50510210		Éver	Banega	CDM	Argentina	33	71	174	481
50511592	David Luiz	David Luiz	Moreira Marinho	CB	Brazil	34	84	189	5
50519609	Paulinho	José Paulo	Bezerra M. Júnior	CM	Brazil	33	81	181	111839
50542161		Juan Fernando	Quintero	CAM	Colombia	28	67	168	1876
50545844		Daniel	Bocanegra	CB	Colombia	34	76	182	101100
50569363		Patrick	Cutrone	ST	Italy	23	78	183	47
67255400	Jesús Navas	Jesús	Navas González	RWB	Spain	35	60	170	481
67257667		Klaas-Jan	Huntelaar	ST	Holland	37	83	186	245
67268009		Bafétimbi	Gomis	ST	France	36	77	184	605
67276261	Falcao	Radamel Falcao	García Zarate	ST	Colombia	35	72	177	69
67290736		Arturo	Vidal	CM	Chile	34	75	180	241
67293208		Leonardo	Bonucci	CB	Italy	34	85	190	45
67293806	Giuliano	Giuliano Victor	de Paula	CAM	Brazil	31	68	172	112139
67302847		Andy	Delort	ST	France	29	82	182	70
67312438		John	Stones	CB	England	27	70	188	10
67314557		Sébastien	Haller	ST	France	27	91	190	1824
67316727	Felipe	Felipe Augusto	de Almeida Monteiro	CB	Brazil	32	86	191	236
67317282		Yannick	Carrasco	LM	Belgium	27	73	181	112378
67324562		Mike	Maignan	GK	France	26	89	191	65
67336399		Rodrigo	Bentancur	CM	Uruguay	24	72	187	45
84074232	Oscar	Oscar	dos Santos Emboaba	CM	Brazil	29	66	179	112540
84081559		James	Tavernier	RB	England	29	75	182	86
84089631		Alessandro	Florenzi	RB	Italy	30	67	173	52
84091680		Samuel	Umtiti	CB	France	27	75	182	241
84110039		Lucas	Torreira	CM	Uruguay	25	64	168	1
84122712	David Neres	David	Neres Campos	RW	Brazil	24	66	175	245
100841384	Juan Mata	Juan Manuel	Mata García	CAM	Spain	33	63	170	11
100849449		Wojciech	Szczęsny	GK	Poland	31	90	195	45
100853840		Adem	Ljajić	CAM	Serbia	29	74	182	327
100855801		Romelu	Lukaku	ST	Belgium	28	94	190	11
100866782		Thorgan	Hazard	RW	Belgium	28	69	174	23
100871173		Josef	Martínez	ST	Venezuela	28	69	170	112885
100904050		Youcef	Atal	RWB	Algeria	25	70	176	72
117618065	Vieirinha	Adelino André	Vieira de Freitas	LB	Portugal	35	70	172	393
117644180		Alfredo	Donnarumma	ST	Italy	30	75	181	190
167664		Gonzalo	Higuaín	ST	Argentina	33	89	186	47
217699		Islam	Slimani	ST	Algeria	33	83	188	326
221342	Pablo Maffeo	Pablo	Maffeo Becerra	RWB	Spain	24	70	172	36
224031		Adam	Marušić	RM	Montenegro	28	85	185	46
229406	João Novais	João Pedro	Barradas Novais	CAM	Portugal	28	77	183	1896
242348	Loren	Lorenzo	Morón García	ST	Spain	27	82	188	449
242625		Hidetoshi	Nakata	CAM	Japan	44	73	175	112658
50502367		Diego	Buonanotte	CAM	Argentina	33	57	161	110975
50518700		Yann	M'Vila	CM	France	31	80	182	1819
50527013		Kevin	Kampl	CM	Slovenia	30	67	178	112172
50551666		Ante	Rebić	ST	Croatia	27	78	185	1824
50561206		Dayot	Upamecano	CB	France	22	83	185	112172
67292258		Moussa	Sissoko	CM	France	31	91	187	18
67329561		James	Maddison	CAM	England	24	73	175	95
67341227		Milan	Škriniar	CB	Slovakia	26	80	187	44
84098603	Anderson Talisca	Anderson	Souza Conceição	CAM	Brazil	27	80	191	111839
100863754		Lucas	Digne	LB	France	28	74	178	7
100889464		Maximilian	Eggestein	CM	Germany	24	75	181	38
117624712		Marko	Arnautović	ST	Austria	32	83	192	19
117664883		Jarrod	Bowen	RM	England	24	70	174	1952
134422691	Carvajal	Daniel	Carvajal Ramos	RB	Spain	29	73	173	243
184757972		Andrea	Belotti	ST	Italy	27	72	181	54
50437879	Aduriz	Aritz	Aduriz Zubeldia	ST	Spain	40	78	182	448
50495235		Kasper	Schmeichel	GK	Denmark	34	89	189	95
50508578		Marcelo	Díaz	CDM	Chile	34	63	166	101085
50520773		Giacomo	Bonaventura	CM	Italy	31	75	181	47
50524014		Nicolás	Otamendi	CB	Argentina	33	81	183	10
50532479		Abdenasser	El Khayati	CAM	Holland	32	69	185	650
50546783		Leonardo	Sigali	CB	Argentina	34	72	181	101085
67255624	Juanfran	Juan Francisco	Torres Belén	RB	Spain	36	71	181	240
67289794		Edin	Džeko	ST	Bosnia and Herzegovina	35	84	193	52
67298136		Alexander	Esswein	ST	Germany	31	85	183	36
67338770		Leon	Bailey	LM	Jamaica	23	75	180	32
84089970		Šime	Vrsaljko	RB	Croatia	29	76	181	44
84115114		Víctor	Guzmán	CM	Mexico	26	78	175	110147
100802364	Nani	Luís Carlos	Almeida da Cunha	LW	Portugal	34	68	177	112606
100847780		Gylfi	Sigurðsson	CAM	Iceland	31	82	186	7
100864750		Faouzi	Ghoulam	LB	Algeria	30	80	184	48
100879756		José María	Giménez	CB	Uruguay	26	80	185	240
117639622		Luis	Muriel	LW	Colombia	30	79	179	110374
134429319		Moussa	Dembélé	ST	France	25	77	183	66
50480359	Luisão	Anderson Luís	da Silva	CB	Brazil	40	91	195	234
50488952		Thomas	Vermaelen	CB	Belgium	35	80	183	241
50504610		Victor	Moses	RW	Nigeria	30	75	177	326
50507039	Mateus	Mateus Galiano	da Costa	RM	Angola	37	75	176	1898
50514593		Max	Gradel	LW	Côte d'Ivoire	33	70	177	1809
50517955		Marco	Fabián	CAM	Mexico	32	65	171	112134
50521038		Bastian	Oczipka	LWB	Germany	32	85	185	34
50522241		Danijel	Aleksić	RM	Serbia	30	75	182	113259
50525665		Andreas	Weimann	ST	Austria	30	76	178	1919
50530914	Ji Dong Won	Dong Won	Ji	ST	Korea Republic	30	81	188	100409
50536144		Patrick	Bauer	CB	Germany	28	88	192	89
50537866		Paul	Nardi	GK	France	27	82	188	1750
50543744		Vincenzo	Grifo	LM	Italy	28	75	180	10029
50544403		Jorrit	Hendrix	CDM	Holland	26	75	181	247
50545740		Alexey	Miranchuk	CAM	Russia	25	74	182	100765
50551679		Oliver	McBurnie	ST	Scotland	25	77	191	1960
50553235		Joe	Lolley	RM	England	28	72	178	14
50556533	Guilherme Sityá	Guilherme	Haubert Sityá	LB	Brazil	31	76	179	110745
50558027		Marcos	Díaz	GK	Argentina	35	84	187	1877
50562261		Amadou	Diawara	CM	Guinea	24	74	184	48
50566628		Yevhen	Shakhov	CDM	Ukraine	30	82	189	393
50568340	Marc Gual	Marc	Gual Huguet	ST	Spain	25	75	186	244
50575912		Amer	Gojak	CM	Bosnia and Herzegovina	24	78	184	211
67311715		Gregoire	Defrel	ST	France	30	77	179	1837
67322296		Facundo	Ferreyra	ST	Argentina	30	78	185	452
67335241		Gonzalo	Martínez	CAM	Argentina	28	75	172	112885
84096292	Garry Rodrigues	Garry	Mendes Rodrigues	LM	Cape Verde Islands	30	70	173	607
50542		Jermain	Defoe	ST	England	38	65	171	1943
134779		Jimmy	Briand	ST	France	36	84	181	59
135451	Gomes	Heurelho	Silva Gomes	GK	Brazil	40	95	191	1795
138699		Blerim	Džemaili	CM	Switzerland	35	73	179	189
140620		Ragnar	Klavan	CB	Estonia	35	85	187	1842
152916		Rubens	Sambueza	RM	Argentina	37	72	174	1882
156433		Alfredo	Talavera	GK	Mexico	38	82	188	1882
166072	Danilo	Danilo	Larangeira	CB	Brazil	37	76	185	189
169596		Ryan	Shawcross	CB	England	33	76	191	1806
170369		Giovani	dos Santos	CF	Mexico	32	71	175	697
172233		Perparim	Hetemaj	CM	Finland	34	76	175	192
176237		Jozy	Altidore	ST	United States	31	79	183	111651
177159		Fabian	Johnson	LM	United States	33	74	183	23
178625	Mosquera	Pedro	Mosquera Parada	CDM	Spain	33	76	184	242
182836		Andy	Carroll	ST	England	32	79	193	19
183332		Fin	Bartels	RM	Germany	34	69	176	38
183512	Yuri Berchiche	Yuri	Berchiche Izeta	LB	Spain	31	80	180	448
183666	Roberto	Roberto	Jiménez Gago	GK	Spain	35	93	192	452
185090		Benjamin	Moukandjo	ST	Cameroon	32	74	180	112537
186146		Danny	Welbeck	LW	England	30	73	185	1
186805		Jefferson	Montero	LM	Ecuador	31	70	173	1960
186953		Onur	Kıvrak	GK	Turkey	33	74	187	436
188268		Lautaro	Acosta	LW	Argentina	33	67	169	110395
189060		Aleksandar	Dragović	CB	Austria	30	76	184	32
189196	Caiuby	Caiuby Fr.	da Silva	LM	Brazil	33	85	184	100409
189506	Victor Sánchez	Victor	Sánchez Mata	RB	Spain	33	72	174	452
190143	Cote	José Ángel	Valdés Díaz	LB	Spain	31	77	182	467
191053		Tomás	Rincón	CM	Venezuela	33	76	177	54
192073		Andrea	Bertolacci	CM	Italy	30	75	178	47
192715	Juanpe	Juan Pedro	Ramírez López	CB	Spain	30	85	190	110062
193158		Davy	Pröpper	CM	Holland	29	79	185	1808
50331728		Emre	Belözoğlu	CM	Turkey	40	72	169	101014
50513781		Alexandru	Epureanu	CB	Moldova	34	85	189	101014
50539741	Gerard Moreno	Gerard	Moreno Balagueró	ST	Spain	29	77	180	483
50560377		Bruno	Valdez	CB	Paraguay	28	79	183	1879
50569340		Phil	Foden	CAM	England	21	59	171	10
67280697		Daniel	Sturridge	ST	England	31	76	180	9
67293813	Mariano	Mariano	Ferreira Filho	RB	Brazil	35	69	179	325
67333964		Joe	Gomez	CB	England	24	77	188	9
67345656		Tomáš	Souček	CDM	Czech Republic	26	86	192	266
84087497		Matt	Doherty	RWB	Republic of Ireland	29	89	183	110
100843502		Miralem	Pjanić	CM	Bosnia and Herzegovina	31	72	178	45
100883736		Clément	Lenglet	CB	France	26	81	186	241
100908023		Léandre	Tawamba	ST	Cameroon	31	85	189	112393
117633286		Kostas	Manolas	CB	Greece	30	83	189	52
167980990		Jamie	Vardy	ST	England	34	74	179	95
50482307		Vincent	Demarconnay	GK	France	38	73	180	111817
50505557		Kevin-Prince	Boateng	CM	Ghana	34	86	186	111974
50514756		Nordin	Amrabat	RM	Morocco	34	85	180	112139
50522850		Nemanja	Matić	CDM	Serbia	33	85	194	11
50527721		Esteban	Paredes	ST	Chile	41	82	178	110980
50537800		Luciano	Aued	CM	Argentina	34	81	182	110975
50567022		Manuel	Lazzari	RM	Italy	27	67	174	112791
67277915		Fredy	Guarín	CM	Colombia	35	80	183	110955
67297819		Gustavo	Bou	ST	Argentina	31	80	178	111678
67338532	Hermoso	Mario	Hermoso Canseco	CB	Spain	26	74	184	452
84053708		Stéphane	Ruffier	GK	France	34	93	188	1819
84098070		Odisseas	Vlachodimos	GK	Germany	27	77	188	234
84115960		Aaron	Wan-Bissaka	RB	England	23	72	183	1799
100835173		Marek	Hamšík	CM	Slovakia	34	79	183	112378
100861625	Rodrigo	Rodrigo	Moreno Machado	ST	Spain	30	77	182	461
100872104		Quincy	Promes	RM	Holland	29	72	174	481
100894648		Tammy	Abraham	ST	England	23	80	196	2
117633395		Henrikh	Mkhitaryan	CAM	Armenia	32	75	177	52
117661326		Lucas	Hernández	CB	France	25	76	182	240
67311550		Nahki	Wells	ST	Bermuda	31	74	170	15
67320536		Tyler	Boyd	RW	New Zealand	26	66	180	101007
67324366		Bartłomiej	Drągowski	GK	Poland	23	74	188	1746
67331851		Hotaru	Yamaguchi	CDM	Japan	30	72	173	101146
100879621		Angus	Gunn	GK	England	25	77	196	17
124635		Mehmet	Topal	CDM	Turkey	35	82	187	326
135697	Sergio García	Sergio	García de la Fuente	ST	Spain	38	72	174	452
142966		Jesús	Dátolo	CAM	Argentina	37	77	179	110404
152747		Aaron	Lennon	RM	England	34	63	165	1796
152997		Darío	Cvitanich	ST	Argentina	37	73	174	110404
155984	Markel Bergara	Markel	Bergara Larrañaga	CDM	Spain	35	78	181	1860
165536		Gustavo	Cabral	CB	Argentina	35	81	182	450
169426	Barragán	Antonio	Barragán Fernández	RB	Spain	34	76	183	449
170320		Lorenzo	De Silvestri	RB	Italy	33	84	186	54
171018	Mario Suárez	Mario	Suárez Mata	CM	Spain	34	80	188	112977
172290		David	Zurutuza	CM	France	35	79	186	457
176285		Winston	Reid	CB	New Zealand	33	87	190	19
177666		Martin	Harnik	ST	Austria	34	80	186	38
181262		Marek	Suchý	CB	Czech Republic	33	84	183	896
182882		Carlos	Sánchez	CDM	Colombia	35	82	182	19
183491		Mathias	Jørgensen	CB	Denmark	31	85	191	1939
183820		Mathieu	Dossevi	RM	Togo	33	65	172	1809
184716		Joe	Allen	CM	Wales	31	62	168	1806
185174		Andrea	Poli	CM	Italy	31	77	182	189
186115		Kieran	Gibbs	LB	England	31	70	179	109
186521		Bernardo	Espinosa	CB	Colombia	32	84	192	110062
186905		Ashley	Barnes	ST	Austria	31	84	186	1796
188155		Daryl	Janmaat	RB	Holland	32	80	185	1795
188955		Gustavo	Bou	ST	Argentina	31	80	178	101085
189324		Alex	McCarthy	GK	England	31	79	193	17
189508	Víctor Vázquez	Víctor	Vázquez Solsona	CM	Spain	34	76	176	111651
190799		Celso	Borges	CDM	Costa Rica	33	78	182	101026
191628		Leandro	Chichizola	GK	Argentina	31	82	186	1860
192350		Javier	Aquino	LM	Mexico	31	62	168	1970
192841		Emanuele	Giaccherini	LW	Italy	36	60	167	192
193470		Arnaud	Souquet	RB	France	29	73	179	72
194644	Montoya	Martín	Montoya Torralbo	RB	Spain	30	73	175	1808
196150		Teófilo	Gutiérrez	ST	Colombia	36	81	177	101101
198077		Patrick	Herrmann	RM	Germany	30	70	179	23
199559		Roberto	Inglese	ST	Italy	29	85	186	50
199852		Nicolai	Jørgensen	ST	Denmark	30	83	190	246
200228	Bruno	Bruno	González Cabrera	CB	Spain	31	86	185	1860
201884		Robbie	Brady	LM	Republic of Ireland	29	77	179	1796
202493	Aleix Vidal	Aleix	Vidal Parreu	RB	Spain	31	70	177	481
204077		M'Baye	Niang	LW	Senegal	26	78	184	54
205295		Hillal	Soudani	ST	Algeria	33	75	177	14
206198		Dominique	Heintz	CB	Germany	27	89	188	25
210214	Jozabed	Jozabed	Sánchez Ruiz	CM	Spain	30	67	180	450
211354		Marco	Benassi	CM	Italy	26	80	184	110374
213629		Erick	Pulgar	CDM	Chile	27	83	186	189
214332		Daniel	Torres	CDM	Colombia	31	81	183	463
215699		Youssouf	Sabaly	RB	Senegal	28	71	174	59
219681		Jordan	Amavi	LB	France	27	70	176	219
220948		Serhiy	Sydorchuk	CM	Ukraine	30	80	189	101047
223597		Ruben	Aguilar	RWB	France	28	71	172	70
225028		Nemanja	Radoja	CM	Serbia	28	77	186	450
226166		Nordi	Mukiele	CB	France	23	74	185	112172
227950	Yeray	Yeray	Álvarez López	CB	Spain	26	78	183	448
229773		Georgiy	Dzhikiya	CB	Russia	27	86	188	100767
232883		Gaku	Shibasaki	CAM	Japan	29	62	175	1860
50474769		José	Sosa	CDM	Argentina	36	71	179	436
50510262	Varela	Fernando Lopes	dos Santos Varela	CB	Cape Verde Islands	33	88	185	393
50518209		Aaron	Ramsey	CM	Wales	30	76	183	1
50550808		Víctor	Cantillo	CDM	Colombia	27	70	180	101101
50560529		Davide	Calabria	RB	Italy	24	70	176	47
67273033	Filipe Luís	Filipe Luís	Kasmirski	LB	Brazil	35	74	182	240
67303709		Wahbi	Khazri	ST	Tunisia	30	82	176	1819
67335617		André	Onana	GK	Cameroon	25	93	187	245
84066255	Alexandre Pato	Alexandre	Rodrigues da Silva	ST	Brazil	31	81	180	112983
84100286		Germán	Cano	ST	Argentina	33	72	176	101103
100863451		Hans	Vanaken	CAM	Belgium	28	80	195	231
100897674		Declan	Rice	CDM	Republic of Ireland	22	80	185	19
117612431	Naldo	Ronaldo	Aparecido Rodrigues	CDM	Brazil	38	91	198	69
134418182	Paco Alcácer	Francisco	Alcácer García	ST	Spain	27	71	175	22
151225610	Gabriel Jesus	Gabriel	Fernando de Jesus	ST	Brazil	24	73	175	10
184759423		Fabian	Schär	CB	Switzerland	29	84	188	13
50487535		Michael	Bradley	CDM	United States	34	79	188	111651
50503567	Naldo	Ronaldo	Aparecido Rodrigues	CB	Brazil	38	91	198	34
50509157		Medhi	Benatia	CB	Morocco	34	94	189	45
50521153	Pedro	Pedro	Rodríguez Ledesma	RW	Spain	34	65	169	5
50532225	Lee Yong	Yong	Lee	RB	Korea Republic	34	74	180	1477
50537100		Antonio	Rüdiger	CB	Germany	28	85	190	5
50554357	Petros	Petros Matheus	dos Santos Araujo	CDM	Brazil	32	77	181	112139
67279754		Blaise	Matuidi	CDM	France	34	75	180	45
67288710		Sami	Khedira	CM	Germany	34	90	189	45
67301182		Mario	Götze	CF	Germany	29	75	176	22
67345784		Justin	Kluivert	LW	Holland	22	66	171	52
84093574		Jesse	Lingard	CAM	England	28	62	175	11
84115662		Gianluca	Mancini	CB	Italy	25	77	190	39
100841805		Olivier	Giroud	ST	France	34	88	192	5
100852658	Hulk	Givanildo	Vieira de Souza	CAM	Brazil	35	85	180	112540
100865858		Jérôme	Roussillon	LB	France	28	80	175	175
100889249		Steven	Bergwijn	LW	Holland	23	78	178	247
134396478	Sergio Asenjo	Sergio	Asenjo Andrés	GK	Spain	32	87	189	483
151195574		James	Forrest	RM	Scotland	30	67	175	78
188879		Alfred	N'Diaye	CDM	Senegal	31	82	187	573
189157		Yannick	Bolasie	LM	Congo DR	32	84	188	2
189410		Danny	Latza	CM	Germany	31	76	179	169
190674		Benjamin	André	CM	France	31	76	180	74
192012		Diego	Reyes	CB	Mexico	28	74	189	326
192358		Sergio	Padt	GK	Holland	31	85	197	1915
193011		Steve	Cook	CB	England	30	82	185	1943
193714		Nemanja	Pejčinović	CB	Serbia	33	80	185	111769
193887		Hernán	Pérez	RM	Paraguay	32	71	180	452
197756		Jordan	Ayew	ST	Ghana	29	81	182	1799
198683		Manolo	Gabbiadini	ST	Italy	29	72	181	17
199737	Wilson Eduardo	Wilson Bruno	Naval Costa Eduardo	ST	Portugal	31	73	179	1896
200054	Pedro Obiang	Pedro Mba	Obiang Avomo	CDM	Spain	29	75	185	19
201118	Cédric	Cédric Ricardo	Alves Soares	RB	Portugal	29	67	172	17
202316		Timmy	Chandler	RB	United States	31	82	184	1824
203535		Tonny	Vilhena	CM	Holland	26	75	175	246
204338		Christophe	Kerbrat	CB	France	35	74	185	62
205569		James	Ward-Prowse	RM	England	26	66	173	17
208379		Giancarlo	González	CB	Costa Rica	33	77	186	189
211147		Valentino	Lazaro	RM	Austria	25	75	178	166
212212		Dominik	Kohr	CDM	Germany	27	79	183	32
215051		Lisandro	López	CB	Argentina	31	82	187	110556
216373	Marcelo Goiano	Marcelo Augusto	Ferreira Teixeira	RB	Brazil	33	69	176	1896
220407		Martin	Dúbravka	GK	Slovakia	32	80	190	13
220932		Lovre	Kalinić	GK	Croatia	31	99	201	674
223033	Jorge Meré	Jorge	Meré Pérez	CB	Spain	24	80	182	31
225018		Florin	Andone	ST	Romania	28	78	180	1808
225474	Sidcley	Sidcley	Ferreira Pereira	LB	Brazil	28	75	176	101047
230020		Pierre	Lees-Melou	CM	France	28	69	185	72
233631		Amath	Ndiaye Diedhiou	LM	Senegal	25	63	173	1860
236791		Antonín	Barák	CM	Czech Republic	26	86	190	55
50484645		Darío	Cvitanich	ST	Argentina	37	73	174	101085
50502666	Mario Suárez	Mario	Suárez Mata	CM	Spain	34	80	188	480
50506402		Gabriel	Torres	ST	Panama	32	75	180	111327
184273		Kevin	Wolze	LB	Germany	31	70	175	1825
184749		Dan	Gosling	CM	England	31	79	183	1943
186347		Maciej	Rybus	LB	Poland	31	75	173	100765
186982		Alexander	Büttner	LB	Holland	32	75	174	1909
188370	Wallace	Wallace	Reis Silva	CB	Brazil	33	76	184	101026
188654		Thomas	Heurtaux	CB	France	33	78	183	101007
189148		Jamie	Murphy	LM	Scotland	31	72	178	86
189480		Josef	Šural	ST	Czech Republic	31	80	184	267
189723		Samuel	Armenteros	ST	Sweden	31	80	181	111140
190748		Yasin	Öztekin	RM	Turkey	34	70	179	101026
192045		Luis	Rodríguez	RB	Mexico	30	73	175	1970
192342		Edwin	Cardona	LW	Colombia	28	78	185	1877
193001		Riad	Nouri	LM	France	36	73	178	614
193177		Adama	Traoré	LB	Côte d'Ivoire	31	73	170	101026
193884		Sam	Clucas	LM	England	30	74	188	1806
194196		Fallou	Diagne	CB	Senegal	31	78	185	101033
196942	Iñigo Pérez	Iñigo	Pérez Soto	CDM	Spain	33	74	178	479
198386		Sebastián	Dubarbier	LB	Argentina	35	77	178	242
198836		Vincent	Pajot	CM	France	30	68	180	1530
199504		Taulant	Xhaka	CDM	Albania	30	72	172	896
199761		Marcin	Kamiński	CB	Poland	29	82	192	110636
200275		Youness	Mokhtar	LM	Morocco	29	72	179	101007
200521		Tom	Ince	RW	England	29	66	178	1806
201223		Afriyie	Acquah	CM	Ghana	29	70	179	1746
50500299		Ivan	Rakitić	CM	Croatia	33	78	184	241
50511239	Pablo Hernández	Pablo	Hernández Dominguez	RM	Spain	36	66	173	8
50524689		Keylor	Navas	GK	Costa Rica	34	80	185	243
50544534		Wylan	Cyprien	CM	France	26	75	180	72
50555982		Marcos	Acuña	LW	Argentina	29	69	172	237
67259380		Lukas	Podolski	CF	Germany	36	83	182	101146
67301946		Juan	Cuadrado	RM	Colombia	33	72	179	45
67329515	Angeliño	José Ángel	Esmoris Tasende	LB	Spain	24	69	175	247
67340730	Rodri	Rodrigo	Hernández Cascante	CM	Spain	25	82	191	240
84066483	Willian	Willian	Borges da Silva	CAM	Brazil	32	77	175	5
100843080		Benedikt	Höwedes	CB	Germany	33	77	188	100765
100873331	Grimaldo	Alejandro	Grimaldo García	LB	Spain	25	69	171	234
100891092		Christian	Pulisic	RM	United States	22	69	177	22
117608417		Antonio	Valencia	RB	Ecuador	36	83	180	11
117652200	Gayà	José Luís	Gayà Peña	LB	Spain	26	66	172	461
151189876		Andros	Townsend	RM	England	30	73	181	1799
50457519		Hasan Ali	Kaldırım	LB	Turkey	31	75	183	326
50495279		Leighton	Baines	LB	England	36	70	170	7
50509872		Javier	Hernández	ST	Mexico	33	73	175	19
50521761		Mert	Günok	GK	Turkey	32	92	196	101014
50531612		Marco	Pérez	ST	Colombia	30	66	182	111722
50537497		Esteban	Andrada	GK	Argentina	30	80	193	1877
50568144		Mattéo	Guendouzi	CM	France	22	68	180	1
67271104		Moussa	Dembélé	CM	Belgium	34	82	185	18
67297292		Seydou	Doumbia	ST	Côte d'Ivoire	33	71	179	110062
67309588	Nacho Fernández	José Ignacio	Fernández Iglesias	CB	Spain	31	76	180	243
67346931		Nicolò	Zaniolo	CAM	Italy	22	80	185	52
84096961		John	McGinn	CM	Scotland	26	68	175	2
84120476		Alphonso	Davies	LM	Canada	20	72	180	21
100834029	Gervinho	Gervais	Yao Kouassi	LW	Côte d'Ivoire	34	66	179	50
100862778		Anthony	Lopes	GK	Portugal	30	81	184	66
117651812		Anthony	Martial	ST	France	25	76	184	11
151193650	Luis Alberto	Luis Alberto	Romero Alconchel	CM	Spain	28	74	183	46
193862	André Pinto	André	Almeida Pinto	CB	Portugal	31	86	194	237
195671		Charlie	Austin	ST	England	32	84	188	17
197891	Juanmi	Juan Miguel	Jiménez López	LW	Spain	28	69	172	457
198129		Celso	Ortíz	CDM	Paraguay	32	70	175	1032
199577	Sergi Gómez	Sergi	Gómez Solà	CB	Spain	29	77	185	481
199952		Emre	Çolak	CAM	Turkey	30	67	169	112408
201533		Paul-Georges	Ntep	LM	France	29	75	180	175
201922		Martin	Hinteregger	CB	Austria	28	83	184	100409
203843		Damián	Suárez	RB	Uruguay	33	68	173	1860
204472		Bouna	Sarr	RB	France	29	65	177	219
205632		Lucas	Ocampos	LM	Argentina	27	84	187	219
207732	Roger	Roger	Martí Salvador	ST	Spain	30	74	179	1853
211101	Rubén Blanco	Rubén	Blanco Veiga	GK	Spain	26	70	188	450
212678		Ludwig	Augustinsson	LB	Sweden	27	72	181	38
214040		Frank	Fabra	LB	Colombia	30	72	172	1877
215079		Pablo	Pérez	CM	Argentina	35	76	175	1877
219411		José	Izquierdo	LM	Colombia	29	75	171	1808
220854		Erick	Gutiérrez	CM	Mexico	26	74	181	110147
221016		Nikola	Vukčević	CDM	Montenegro	29	76	184	1853
224294		Lewis	Cook	CM	England	24	71	175	1943
225199		Vincent	Koziello	CM	France	25	58	168	31
227127	Álex Remiro	Alejandro	Remiro Gargallo	GK	Spain	26	83	191	448
229476		Waldemar	Anton	CB	Germany	25	75	189	485
231361		Joris	Gnagnon	CB	France	24	89	182	481
234226	Bruno Viana	Bruno Viana	Willemen Da Silva	CB	Brazil	26	79	187	1896
50484564		Rubens	Sambueza	RM	Argentina	37	72	174	110781
50502963	Alfaro	Alejandro	Alfaro Ligero	RM	Spain	34	73	175	1867
184422		Luis	Ardente	GK	Argentina	39	81	189	111713
186139		Matty	James	CM	England	30	86	181	95
186452		Siem	de Jong	CAM	Holland	32	82	185	111400
186672		Geoff	Cameron	CDM	United States	36	84	191	1806
187988		Frédéric	Sammaritano	LM	France	35	64	162	110569
188416		Stijn	Wuytens	CB	Belgium	31	74	183	1906
188763		Delvin	N'Dinga	CDM	Congo	33	70	181	101041
189221	João Aurélio	João Miguel	Coimbra Aurélio	RB	Portugal	32	74	182	1900
189557		Andrea	Rispoli	RB	Italy	32	83	188	1843
190494		Daniel	Opare	RB	Ghana	30	74	174	230
191198		Ivan	Obradović	LB	Serbia	33	80	180	229
192156	Ruben Lima	Ruben Alexandre	Rocha Lima	LB	Portugal	31	69	177	1900
192560		Reinhold	Yabo	RM	Germany	29	70	177	191
193169		Christian	Santos	ST	Venezuela	33	70	184	242
193569		Tom	Lees	CB	England	30	73	185	1807
194015		Julian	Börner	CB	Germany	30	86	188	159
196932		Yaya	Sanogo	ST	France	28	75	191	1809
198240	Raul García	Raúl	García Carnero	LB	Spain	32	74	175	100888
198479		Paulus	Arajuuri	CB	Finland	33	92	193	269
199101	Raúl Lizoain	Raúl	Lizoain Cruz	GK	Spain	30	80	188	100831
199661		Almog	Cohen	CDM	Israel	32	71	170	111239
199763		Bartosz	Bereszyński	RB	Poland	29	77	183	1837
200429		Benito	Raman	LM	Belgium	26	67	172	110636
200759		Jeffrey	Schlupp	LB	Ghana	28	72	178	1799
201149	Álex Pérez	Alejandro	Pérez Navarro	CB	Spain	29	84	191	459
201895		Diego	Fagundez	CAM	Uruguay	26	64	173	691
202331		Facundo	Quignon	CDM	Argentina	28	75	178	110395
202944		Oscar	Hiljemark	CM	Sweden	29	73	184	110556
203872		Gabriel	Hauche	ST	Argentina	34	73	167	101105
204250		Marcello	Trotta	ST	Italy	28	85	188	111974
204977		Iván	Piris	RB	Paraguay	32	73	173	110396
205401		Valeri	Qazaishvili	LM	Georgia	28	78	174	111928
206022		Erik	Johansson	CB	Sweden	32	89	192	710
176635		Mesut	Özil	CAM	Germany	32	76	180	1
50352423	Quaresma	Ricardo Andrade	Quaresma Bernardo	RM	Portugal	37	67	175	327
50452181	Pepe	Képler Laveran	Lima Ferreira	CB	Portugal	38	81	188	327
50504527	Sokratis	Sokratis	Papastathopoulos	CB	Greece	33	85	186	1
50521547		Vito	Wormgoor	CB	Holland	32	81	188	919
50525395	Koke	Jorge	Resurrección	LM	Spain	29	74	176	240
50534125	Deulofeu	Gerard	Deulofeu Lázaro	RM	Spain	27	73	177	1795
50535395	Héctor Bellerín	Héctor	Bellerín Moruno	RB	Spain	26	74	178	1
50540069	Saúl	Saúl	Ñíguez Esclápez	CM	Spain	26	77	184	240
50544370		DeAndre	Yedlin	RB	United States	28	75	172	13
50552482	Marco Asensio	Marco	Asensio Willemsen	LW	Spain	25	76	182	243
50558499		Benjamin	Pavard	RB	France	25	76	186	36
67265383		Héctor	Herrera	CM	Mexico	31	72	183	236
67286397	Manuel da Costa	Manuel Marouan	da Costa Senoussi	CB	Morocco	35	84	191	607
67292575		Jordan	Henderson	CDM	England	31	80	182	9
67299836		Eduardo	Salvio	RW	Argentina	31	77	172	234
67307040		Stefan	de Vrij	CB	Holland	29	78	189	44
67319981		Dele	Alli	CAM	England	25	80	188	18
84048975	Cesc Fàbregas	Francesc	Fàbregas i Soler	CM	Spain	34	77	180	69
84083141		Joel	Matip	CB	Cameroon	29	90	195	9
84099215		Divock	Origi	ST	Belgium	26	75	185	9
100852099	Taison	Taison	Barcellos Freda	LM	Brazil	33	64	172	101059
100873285		Thomas	Partey	CM	Ghana	28	77	185	240
117634530		James	Collins	ST	Republic of Ireland	30	86	188	1923
134422366		Willi	Orban	CB	Germany	28	83	186	112172
184598848		Ludovic	Butelle	GK	France	38	84	188	1530
50489129	Raúl Albiol	Raúl	Albiol Tortajada	CB	Spain	35	82	190	48
50507914	Lucas Leiva	Lucas	Pezzini Leiva	CDM	Brazil	34	78	179	46
50524194		Enda	Stevens	LWB	Republic of Ireland	31	78	183	1794
50534897		Joel	Valencia	CAM	Ecuador	26	61	164	111086
50542033	Rui Silva	Rui Tiago	Dantas da Silva	GK	Portugal	27	91	191	110832
50553018		Mohammed	Al Buraik	RB	Saudi Arabia	28	58	173	605
50554761		Krzysztof	Piątek	ST	Poland	26	77	183	110556
50563058	Brahim Díaz	Brahim	Díaz	LW	Spain	22	68	170	243
236295	Aarón Martín	Aarón	Martín Caricol	LB	Spain	24	72	180	169
50442024	Jonatan Soriano	Jonatan	Soriano Casas	ST	Spain	35	72	180	605
50495136		David	Limberský	LB	Czech Republic	37	81	181	110468
50503791		Lasse	Schøne	CM	Denmark	35	78	177	245
50508131		Dmytro	Chygrynskyi	CB	Ukraine	34	85	189	278
201363		Ryder	Matos	ST	Brazil	28	79	183	206
202052		Benik	Afobe	ST	Congo DR	28	78	183	1806
202276		Simon	Zoller	ST	Germany	30	70	179	31
202848		Gianluca	Caprari	CF	Italy	28	72	176	1837
203810	Rodrigo Galo	Rodrigo	Galo Brito	RB	Brazil	34	70	174	278
204234	Edgar Badía	Edgar	Badía Guardiola	GK	Spain	29	79	180	110854
205081	Diego Oliveira	Diego	Queiroz de Oliveira	ST	Brazil	31	78	179	101150
205524	Rúben Ferreira	Rúben Rafael	Sousa Ferreira	LB	Portugal	31	67	183	1893
206114		Kristoffer	Olsson	CM	Sweden	26	69	181	433
206626		Mikael	Ishak	ST	Sweden	28	81	185	171
208022		Imoh	Ezekiel	ST	Nigeria	27	70	178	100081
208306		Mariusz	Stępiński	ST	Poland	26	72	183	192
209711		Rasmus	Thelander	CB	Denmark	30	87	190	1909
210118	Hélder Lopes	Hélder Filipe	Oliveira Lopes	LB	Portugal	32	66	179	278
210327		Andreas	Gianniotis	GK	Greece	28	75	184	280
211176		Ricardo	Kishna	LW	Holland	26	77	183	650
211557		Federico	Barba	CB	Italy	27	77	185	192
212079		Michael	Pérez	CDM	Mexico	28	75	169	1880
212369	Eduardo	Eduardo Antônio	Machado Teixeira	CM	Brazil	28	71	178	1896
213132		Mauricio	Sperduti	RM	Argentina	35	73	180	110581
213613		Simon	Gustafson	CAM	Sweden	26	78	185	1903
214379		Angelo	Rodríguez	ST	Colombia	32	80	181	111138
214771		Victor	Ayala	CM	Paraguay	33	70	177	101084
215053		Matías	Zaldivia	CB	Argentina	30	79	181	110980
215118		Fernando	Manríquez	CM	Chile	37	72	168	112534
215568	Naranjo	José Manuel	García Naranjo	LM	Spain	27	73	182	260
217242		Yuya	Kubo	CF	Japan	27	71	179	171
100892663		Stephen	Humphrys	ST	England	23	91	185	1954
45842		Jonas	Olsson	CB	Sweden	38	84	193	710
102064		Claudio	Terzi	CB	Italy	37	69	180	110741
133249		Emil	Hallfreðsson	CM	Iceland	37	86	186	111657
139058		Omar	Pérez	CAM	Argentina	40	82	180	112527
145889	Tito	Roberto	Román Triguero	RB	Spain	36	64	175	480
148526		Paweł	Kieszek	GK	Poland	37	82	187	1867
149571		Sergio	Pellissier	ST	Italy	42	76	175	192
155463		Valerică	Găman	CB	Romania	32	82	191	111674
159566	Abraham González	Abraham	González Casanova	CM	Spain	36	80	178	111035
162223		Alexander	Baumjohann	CAM	Germany	34	75	178	112427
163303		Glenn	Whelan	CDM	Republic of Ireland	37	80	180	2
164878		Lior	Refaelov	RW	Israel	35	68	175	231
167666		Juan Pablo	Carrizo	GK	Argentina	37	87	187	1032
169069		Jonathan	Martins Pereira	RB	France	35	78	182	217
171189	Aythami Artiles	Aythami	Artiles Oliva	CB	Spain	35	78	184	1867
172882		Panagiotis	Kone	CAM	Greece	34	75	182	55
175897		Samir	Ujkani	GK	Kosovo	33	87	188	101037
176773		Daniel	Larsson	LM	Sweden	34	79	175	111340
176992		Mark	Milligan	CDM	Australia	36	78	178	81
177953		Clément	Chantôme	CM	France	33	75	181	74
178417		Charlie	Mulgrew	CB	Scotland	35	83	191	3
182043	Zeng Cheng	Cheng	Zeng	GK	China PR	34	80	192	111839
183336		Pål André	Helland	RW	Norway	31	84	186	298
183567		Erwin	Mulder	GK	Holland	32	88	193	1960
184432	Azpilicueta	César	Azpilicueta Tanco	CB	Spain	31	78	178	5
50351623		Raphaël	Nuzzolo	ST	Switzerland	38	73	175	435
50511175		Loïc	Rémy	ST	France	34	80	185	65
50520636		Manuel	Lanzini	CAM	Argentina	28	59	167	19
50524295		Gaëtan	Charbonnier	ST	France	32	80	188	378
50528547	Héldon	Héldon Augusto	Almeida Ramos	LM	Cape Verde Islands	32	66	174	112393
50533586		Anthony	Limbombe	LM	Belgium	27	77	175	71
50543432		Neal	Maupay	ST	France	24	69	171	1925
50546486		Óscar	Opazo	RB	Chile	30	72	169	110980
50554982	Joelinton	Joelinton	Apolinário de Lira	ST	Brazil	24	76	186	10029
50564304		Theo	Hernández	CB	France	23	82	184	457
67285464		Kévin	Gameiro	ST	France	34	70	172	461
67289683		Adam	Lallana	CAM	England	33	73	178	9
67293884	José Callejón	José María	Callejón Bueno	RW	Spain	34	73	178	48
67301427		Bernd	Leno	GK	Germany	29	83	190	1
67316401		Jordan	Lukaku	CB	Belgium	27	86	177	46
84096705		Kevin	Mbabu	RB	Switzerland	26	83	184	900
100783829	Pepe	Képler Laveran	Lima Ferreira	CB	Portugal	38	81	188	236
100862247		Cédric	Bakambu	ST	Congo DR	30	73	182	111768
117629762		Salomón	Rondón	ST	Venezuela	31	98	186	13
117645939	Djaniny	Jorge Djaniny	Tavares Semedo	ST	Cape Verde Islands	30	78	190	112387
167969243		Daniel	Caligiuri	RWB	Italy	33	80	182	34
50487533		Aiden	McGeady	LM	Republic of Ireland	35	71	177	106
50508024		Ignacio	Piatti	LW	Argentina	36	76	180	111139
50529657		Mattia	Perin	GK	Italy	28	77	188	45
50537095		Moritz	Kuhn	RB	Germany	30	76	178	492
50553128		Yesus	Cabrera	CAM	Colombia	30	60	168	101099
50554385	Malcom	Malcom Filipe	Silva de Oliveira	RW	Brazil	24	74	172	241
50567147		Djamel Eddine	Benlamri	CB	Algeria	31	83	185	111674
50570765		Alexandru	Bălută	RM	Romania	27	67	166	266
50513816		Andrea	Ranocchia	CB	Italy	33	81	195	44
50515074		Daniel	Schwaab	CB	Germany	32	76	186	247
50515645	Yu Dabao	Dabao	Yu	CB	China PR	33	78	182	111768
50516437		Ádám	Szalai	ST	Hungary	33	90	193	10029
50516829	Yoel	Yoel	Rodríguez Oterino	GK	Spain	32	78	185	462
50518237		Ivan	Radovanović	CDM	Serbia	32	80	187	110556
50518724		Stephan	Hain	ST	Germany	32	75	178	172
50520775		Serdar	Aziz	CB	Turkey	30	79	183	325
50520844	Caiuby	Caiuby Fr.	da Silva	LM	Brazil	33	85	184	322
50521707		Steven	Zuber	LWB	Switzerland	29	79	182	10029
50523660		Diego	Reyes	CB	Mexico	28	74	189	100888
50530288		Zakaria	Labyad	LW	Morocco	28	65	173	245
50530594		Danilo	D'Ambrosio	LB	Italy	32	75	180	44
50531223	Jordi Masip	Jordi	Masip López	GK	Spain	32	76	180	462
50532117		Lukas	Rupp	CM	Germany	30	73	178	10029
50534099		Luděk	Pernica	CB	Czech Republic	31	86	188	110468
50537117		Solomon	Kverkvelia	CB	Georgia	29	87	196	100765
50539155		Leke	James	ST	Nigeria	28	80	188	417
50539672		Murray	Wallace	LB	Scotland	28	75	188	97
50539878		Andreas	Samaris	CDM	Greece	32	84	189	234
50541268		Abdul Rahman	Baba	LB	Ghana	27	70	179	34
50543852		Brandon	Mechele	CB	Belgium	28	80	190	231
50544559	Hernâni	Hernâni Jorge	Santos Fortes	RM	Portugal	29	69	178	236
50545980		Daniel	Torres	CDM	Colombia	31	81	183	1854
50546727		Pablo	Pérez	CM	Argentina	35	76	175	110093
50550182		Sargis	Adamyan	ST	Armenia	28	77	184	543
50551206		Gilbert	Koomson	RM	Ghana	26	69	180	919
50552580		Lovre	Kalinić	GK	Croatia	31	99	201	2
50554206		Rick	Karsdorp	RB	Holland	26	80	182	52
50555244		Smail	Prevljak	CAM	Bosnia and Herzegovina	26	75	187	191
50555723	André Simões	André Luís	Gomes Simões	CM	Portugal	31	74	177	278
50558004		Mohamed	Fares	LM	Algeria	25	75	183	112791
50559575		Kyle	Walker-Peters	RB	England	24	64	174	18
50559984		Florian	Grillitsch	CM	Austria	26	77	187	10029
50561176		Mykola	Matvienko	LB	Ukraine	25	74	182	101059
50562226		Mouctar	Diakhaby	CB	France	24	78	192	461
50564059		Christopher	Nkunku	CM	France	23	72	179	73
50567959		Marko	Rog	CM	Croatia	26	73	180	48
50576869		Omar	Abdulrahman	CAM	United Arab Emirates	29	60	173	605
67309982	Cédric	Cédric Ricardo	Alves Soares	RB	Portugal	29	67	172	44
67311540		Adam	Taggart	ST	Australia	28	69	183	983
67321742		Nicolás	Castillo	ST	Chile	28	81	179	1879
67343592		László	Bénes	CM	Slovakia	23	72	181	576
84125311	Cucurella	Marc	Cucurella Saseta	LM	Spain	23	69	172	467
100897027		Alexander	Isak	ST	Sweden	21	74	190	1907
184469		Harry	Arter	CM	Republic of Ireland	31	70	176	1961
185163		Luca	Rossettini	CB	Italy	36	82	187	192
186197		Gaël	Kakuta	LM	Congo DR	30	64	173	480
186330		Theodor	Gebre Selassie	RB	Czech Republic	34	71	181	38
186961		Alberto	Paloschi	ST	Italy	31	80	182	112791
187132		Carlos	Zambrano	CB	Peru	32	78	185	896
187688	Ganso	Paulo Henrique	Chagas de Lima	CAM	Brazil	31	78	184	481
188044	Alan Carvalho	Alan Douglas	Borges de Carvalho	LW	Brazil	32	72	184	111839
188154		Lewis	Holtby	CAM	Germany	30	72	176	28
188397		Ronny	Rodelin	ST	France	31	82	192	62
188599		Mirco	Antenucci	ST	Italy	36	76	178	112791
189225		Bruno	Fornaroli	ST	Uruguay	33	68	175	112224
189725		Tom	Cleverley	CM	England	31	67	175	1795
189908		Łukasz	Skorupski	GK	Poland	30	84	187	189
189963		Wilfried	Bony	ST	Côte d'Ivoire	32	88	182	1960
190761		Tolgay	Arslan	CDM	Germany	30	77	180	327
190919		Fredy	Montero	ST	Colombia	34	73	176	237
191032		Gökhan	Töre	RM	Turkey	29	70	176	327
50443964		Jérémy	Mathieu	CB	France	37	84	189	237
50500257	Miranda	João Miranda	de Souza Filho	CB	Brazil	36	78	186	44
50511492	Diego Costa	Diego	da Silva Costa	ST	Spain	32	86	188	240
50522010		Teemu	Pukki	ST	Finland	31	80	180	1792
50525180		Gary	Medel	CDM	Chile	34	65	171	327
50532597	Lucas	Lucas	Rodrigues M. Silva	RM	Brazil	28	70	174	18
50539783		Abdoulaye	Doucouré	CDM	France	28	76	182	1795
50542915		Ricardo	Centurión	LM	Argentina	28	74	174	101085
50548036		Allan	Saint-Maximin	RW	France	24	67	173	72
50553127		Dominic	Calvert-Lewin	ST	England	24	71	187	7
50573369	Rafael Leão	Rafael	da Conceição Leão	ST	Portugal	22	81	188	65
67273423		Chris	Wondolowski	ST	United States	38	75	183	111928
67288647		Ralf	Fährmann	GK	Germany	32	98	197	34
67290647		Mario	Mandžukić	ST	Croatia	35	85	190	45
67295806		İlkay	Gündoğan	CM	Germany	30	80	180	10
67303268	Neto	Norberto	Murara Neto	GK	Brazil	32	84	190	461
67315449	Kepa	Kepa	Arrizabalaga	GK	Spain	26	85	187	5
67340312		Reiss	Nelson	RW	England	21	70	175	10029
84063690	Javi Martínez	Javier	Martínez Aginaga	CDM	Spain	32	81	190	21
84091003		Marcel	Sabitzer	CAM	Austria	27	74	177	112172
84121292		Achraf	Hakimi	RB	Morocco	22	73	181	22
100856579		Thomas	Delaney	CM	Denmark	29	79	182	22
100868231		Jordan	Pickford	GK	England	27	77	185	7
117612626		Diego	Valeri	CAM	Argentina	35	75	178	111140
117645041		Michy	Batshuayi	ST	Belgium	27	78	185	1799
117664201		Wout	Weghorst	ST	Holland	29	84	197	175
151153569	Dante	Dante Bonfim	Costa Santos	CB	Brazil	37	85	188	72
184746459		Daniel	Caligiuri	RWB	Italy	33	80	182	34
50356278	Pepe Reina	José Manuel	Reina Páez	GK	Spain	38	92	188	47
50495353		Steve	Mandanda	GK	France	36	82	185	219
50526741	Willian José	Willian José	da Silva	ST	Brazil	29	93	189	457
50531212	Sergi Roberto	Sergio	Roberto Carnicer	RB	Spain	29	68	178	241
50539641		Sead	Kolašinac	LWB	Bosnia and Herzegovina	28	85	183	1
50552619		Naby	Keïta	CM	Guinea	26	64	172	9
50554313		Martin	Ødegaard	RM	Norway	22	68	178	1909
50555902		Cristian	Pavón	RW	Argentina	25	76	174	1877
50568831		Matías	Rojas	CM	Paraguay	25	72	186	111710
50514536		Håvard	Nordtveit	CB	Norway	31	83	188	10029
50515519		Nicolai	Müller	RM	Germany	33	66	173	485
50516040		Matteo	Darmian	LB	Italy	31	70	182	11
50516738		Benjamin	Moukandjo	ST	Cameroon	32	74	180	112162
50518053		Franco	Di Santo	ST	Argentina	32	88	193	34
50518453		Jefferson	Montero	LM	Ecuador	31	70	173	109
50520418		Admir	Mehmedi	CAM	Switzerland	30	78	183	175
50520805		Yannick	Bolasie	LW	Congo DR	32	84	188	7
50521192		Simen	Wangberg	CB	Norway	30	85	188	418
50522716		Gianmarco	Zigoni	ST	Italy	30	80	188	205
50525118		Arnaud	Souquet	RB	France	29	73	179	674
50530331		Manolo	Gabbiadini	ST	Italy	29	72	181	1837
50530597		Kévin	Malcuit	RB	France	30	75	178	48
50531854	Alan Patrick	Alan Patrick	Lourenço	CAM	Brazil	30	70	177	101059
50532963	Pablo	Pablo	Nascimento Castro	CB	Brazil	30	86	188	59
50534163	Jesé	Jesé	Rodríguez Ruiz	LW	Spain	28	72	178	73
50537503		Marko	Livaja	ST	Croatia	27	87	182	278
50539652		Joël	Veltman	RB	Holland	29	75	184	245
50539872		Petros	Mantalos	CAM	Greece	29	73	176	278
50540027		Giancarlo	González	CB	Costa Rica	33	77	186	697
50543274		Damian	Kądzior	RM	Poland	29	74	175	211
50544090	José Sá	José Pedro	Malheiro de Sá	GK	Portugal	28	85	192	280
50545066		Chuba	Akpom	ST	England	25	70	183	393
50546699		Lisandro	López	CB	Argentina	31	82	187	1877
50548849		Enrique	Triverio	ST	Argentina	32	78	182	1882
50550793		Guillermo	Maripán	CB	Chile	27	83	193	463
50552553		Jean-Eudes	Aholou	CDM	Côte d'Ivoire	27	74	188	69
50554005		Breel	Embolo	ST	Switzerland	24	86	185	34
50554363	Otávio	Otávio Henrique	Passos Santos	CDM	Brazil	27	73	176	59
50555642		Stefan	Mugoša	ST	Montenegro	29	80	188	110765
50556459		Ivan	Ordets	CB	Ukraine	29	88	194	101059
50558185		Vincent	Janssen	ST	Holland	27	88	183	18
50559821	Ricardo Lopes	Ricardo	Lopes Pereira	LM	Brazil	30	78	184	1477
50560796	Dalbert	Dalbert	Chagas Estevão	LB	Brazil	27	70	181	44
50561242		Ante	Ćorić	CAM	Croatia	24	75	172	52
50563742		Jarosław	Niezgoda	ST	Poland	26	73	185	1871
50566677		Fedor	Chalov	ST	Russia	23	77	180	315
50571289	Alfa Semedo	Alfa	Semedo Esteves	CDM	Guinea-Bissau	23	82	189	234
67309079		Sebastian	Rode	CDM	Germany	30	75	179	1824
67313933	Bernat	Juan	Bernat Velasco	LB	Spain	28	67	170	73
67338813	Anderson Lopes	Anderson José	Lopes de Souza	ST	Brazil	27	82	185	112444
67348095	Cucurella	Marc	Cucurella Saseta	LM	Spain	23	69	172	467
100878695	Rúben Vezo	Rúben Miguel	Nunes Vezo	CB	Portugal	27	80	182	1853
134451459		Alexander	Isak	ST	Sweden	21	74	190	1907
184999	Maurício	Maurício José	da Silveira Júnior	CDM	Brazil	32	78	180	393
185373		Ivelin	Popov	CAM	Bulgaria	33	77	182	100767
186200		Fabio	Borini	LW	Italy	30	74	180	47
186801		Cheikhou	Kouyaté	CDM	Senegal	31	83	189	1799
187075		Dayro	Moreno	ST	Colombia	35	79	177	101100
187570	Douglas	Douglas Renato	de Jesus	GK	Brazil	38	87	188	1887
187702		Omar	El Kaddouri	CAM	Morocco	30	82	185	393
188045	Maicón	Maicón	Marques Bitencourt	RM	Brazil	31	73	183	741
188166		Matt	Phillips	RM	Scotland	30	75	183	109
188554	Dani Pacheco	Daniel	Pacheco Lobato	LM	Spain	30	65	168	573
67293967		Aleksandar	Kolarov	LB	Serbia	35	83	187	52
67298222		Shinji	Kagawa	CAM	Japan	32	68	175	327
67302602		Younès	Belhanda	CAM	Morocco	31	75	179	325
67325218		Andrej	Kramarić	CF	Croatia	30	73	177	10029
84071301	Luiz Gustavo	Luiz Gustavo	Dias	CB	Brazil	34	78	187	219
84088775		James	Tarkowski	CB	England	28	81	192	1796
84091150	Portu	Cristian	Portugues Manzanera	RM	Spain	29	70	178	110062
100849923		Mario	Balotelli	ST	Italy	30	88	189	219
117653135	Santi Mina	Santiago	Mina Lorenzo	ST	Spain	25	77	181	461
151194054		Luis	Muriel	ST	Colombia	30	79	179	39
190941		Lukáš	Hrádecký	GK	Finland	31	80	190	32
207566	William Carvalho	William	Silva de Carvalho	CDM	Portugal	29	83	187	449
50484825		Mauro	Zárate	ST	Argentina	34	72	176	1877
50495409		Curtis	Davies	CB	England	36	89	188	91
50503227	Raúl García	Raúl	García Escudero	CAM	Spain	35	84	184	448
50504856		Domenico	Criscito	LB	Italy	34	75	183	110556
50515146		Marco	Parolo	CDM	Italy	36	75	184	46
50515792		Nicolás	Gaitán	CAM	Argentina	33	66	173	693
50518229		Keisuke	Honda	RM	Japan	35	74	182	111397
50521006		Shinji	Kagawa	CAM	Japan	32	68	175	22
50521338	Guaita	Vicente	Guaita Panadero	GK	Spain	34	80	190	1799
50525122		Idrissa	Gueye	CM	Senegal	31	66	174	7
50529485		Dedryck	Boyata	CB	Belgium	30	84	188	78
50529812	Jonathan Viera	Jonathan	Viera Ramos	CM	Spain	31	64	170	111768
50531151		Granit	Xhaka	CDM	Switzerland	28	82	185	1
50534911		Harry	Maguire	CB	England	28	100	194	95
50536287		Stefan	Savić	CB	Montenegro	30	79	187	240
50538060		Maksym	Koval	GK	Ukraine	28	84	189	112390
50541891	Ricardo Pereira	Ricardo	Barbosa Pereira	RB	Portugal	27	70	175	95
50542061		Alessio	Romagnoli	CB	Italy	26	78	188	47
50544104		Avilés	Hurtado	ST	Colombia	34	65	171	1032
50545639		Jefferson	Lerma	CDM	Colombia	26	70	179	1943
50553248		Matt	Clarke	CB	England	24	74	188	1790
50558139		Kieran	Tierney	LB	Scotland	24	70	178	78
50568231		Jiří	Pavlenka	GK	Czech Republic	29	81	196	38
67266985		Benoît	Costil	GK	France	34	88	187	59
67287279		Ruud	Vormer	CM	Holland	33	79	178	231
67292144		Adil	Rami	CB	France	35	90	190	219
67304450		Alfreð	Finnbogason	ST	Iceland	32	80	184	100409
67308218	Lucas Pérez	Lucas	Pérez Martínez	ST	Spain	32	73	180	19
67313393		Michy	Batshuayi	ST	Belgium	27	78	185	461
67322429		Thomas	Lemar	LM	France	25	62	171	240
67325361		Maximilian	Philipp	ST	Germany	27	79	183	22
67334372		Eric	Bailly	CB	Côte d'Ivoire	27	77	187	11
67340342		Lautaro	Martínez	ST	Argentina	23	79	175	44
67346938		Reece	James	RB	England	21	82	180	1917
84039340	Hilton	Vitorino	Hilton da Silva	CB	Brazil	43	78	180	70
84049235		Ben	Foster	GK	England	38	90	193	1795
84065640		Miralem	Sulejmani	LM	Serbia	32	73	178	900
84075237		Yannick	Bolasie	LW	Congo DR	32	84	188	229
84085269		Ross	Barkley	CM	England	27	76	189	5
84091255		Arkadiusz	Milik	ST	Poland	27	78	186	48
84101396		Gerónimo	Rulli	GK	Argentina	29	84	189	70
84110312		Nicolò	Barella	CM	Italy	24	68	172	1842
84113370		Marko	Dmitrović	GK	Serbia	29	90	194	467
100821429		Jefferson	Farfán	CAM	Peru	36	84	178	100765
100861492		Pierre-Michel	Lasogga	ST	Germany	29	88	189	28
100887492		Ramy	Bensebaini	LB	Algeria	26	75	186	74
100903114	Rúben Dias	Rúben	Alves Dias	CB	Portugal	24	82	186	234
117650975		Darwin	Machís	LM	Venezuela	28	74	169	1968
189043		Daniel	Brosinski	RB	Germany	33	70	178	169
189595		Mehmet	Ekici	CAM	Turkey	31	76	180	326
189860	Kiko Femenía	Francisco	Femenía Far	RB	Spain	30	61	174	1795
189945		Yoric	Ravet	RM	France	31	78	178	25
190014		Yannis	Salibur	RM	France	30	76	177	62
190854		Peter	Pekarík	RB	Slovakia	34	70	176	166
190971		Osvaldo	Alonso	CDM	Cuba	35	70	180	111144
191783		Valon	Berisha	LM	Kosovo	28	70	176	46
192427	Júnior Caiçara	Uílson de Souza	Paula Júnior	RB	Brazil	32	70	173	101014
193311		Philipp	Bargfrede	CDM	Germany	32	71	174	38
193839	Rômulo	Rômulo Souza	Orestes Caldeira	RM	Italy	34	72	178	110556
194079		Alper	Potuk	CAM	Turkey	30	67	177	326
194222	Laguardia	Víctor	Laguardia Cisneros	CB	Spain	31	75	185	463
194781	Renan Ribeiro	Renan	Ribeiro	GK	Brazil	31	87	193	237
194846		Florent	Hanin	LB	France	31	65	177	1887
195087		Radosav	Petrović	CDM	Serbia	32	78	193	237
195860		Yevhen	Khacheridi	CB	Ukraine	34	82	198	393
196143		Dorlan	Pabón	LW	Colombia	33	73	168	1032
197117		Ioannis	Fetfatzidis	RM	Greece	30	66	165	280
198198	Jordi Amat	Jordi	Amat Maas	CB	Spain	29	83	185	480
199151		Juan	Iturbe	RW	Paraguay	28	62	169	1881
199422		Jordy	Clasie	CM	Holland	30	68	169	246
199626	André André	André Filipe	Brás André	CM	Portugal	31	65	174	1887
199739	Josué	Josué Filipe	Soares Pesqueira	CAM	Portugal	30	75	174	111340
199977	Vicente Gómez	José Vicente	Gómez Umpiérrez	CM	Spain	32	78	188	242
200278		Santiago	García	CB	Argentina	33	80	191	1882
201013		Łukasz	Teodorczyk	ST	Poland	30	86	188	55
201858		Nicola	Sansone	ST	Italy	29	68	175	483
201893	Recio	José Luis	García del Pozo	CDM	Spain	30	74	183	573
202024		Remo	Freuler	CM	Switzerland	29	77	181	39
202410	Serantes	Jon Ander	Serantes Simón	GK	Spain	31	72	184	100888
202828		Federico	Viviani	CM	Italy	29	75	180	112791
203485		Terence	Kongolo	LB	Holland	27	70	188	1939
67295491		Mario	Balotelli	ST	Italy	30	88	189	72
67301457		Danijel	Subašić	GK	Croatia	36	84	191	69
67311030		Julian	Draxler	CM	Germany	27	77	187	73
67319481	Samu Castillejo	Samuel	Castillejo Azuaga	RW	Spain	26	67	182	47
84076627		Kamil	Glik	CB	Poland	33	80	190	69
84088937		Karim	Bellarabi	RW	Germany	31	80	184	32
84112306		Giovani	Lo Celso	CM	Argentina	25	70	175	449
117641665	Morata	Álvaro Borja	Morata Martín	ST	Spain	28	85	189	240
117681696		Junior	Firpo	LWB	Dominican Republic	24	75	184	449
162895	Cesc Fàbregas	Francesc	Fàbregas i Soler	CM	Spain	34	77	180	5
190584	Illarramendi	Asier	Illarramendi	CM	Spain	31	75	179	457
205498	Jorginho	Luiz Frello	Filho Jorge	CM	Italy	29	65	180	5
50376834	Joaquín	Joaquín	Sánchez Rodríguez	RM	Spain	40	75	179	449
50490611		Lucas	Biglia	CDM	Argentina	35	63	178	47
50496877		Laurent	Koscielny	CB	France	35	75	186	1
50503545		Andrés	Guardado	CM	Mexico	34	67	169	449
50509734	Adán	Antonio	Adán Garrido	GK	Spain	34	92	190	240
50515543		Maxi	Moralez	CAM	Argentina	34	56	158	112828
50517999		Leroy	Fer	CM	Holland	31	90	188	1960
50520716		Bas	Dost	ST	Holland	32	89	196	237
50521104		Liam	Cooper	CB	Scotland	29	73	188	8
50522365		Michail	Antonio	ST	England	31	82	178	19
50525346		Oliver	Baumann	GK	Germany	31	82	187	10029
50529766		Josuha	Guilavogui	CDM	France	30	77	188	175
50530690		Charles	Aránguiz	CDM	Chile	32	71	171	32
50533856		Dimitri	Petratos	CAM	Australia	28	72	176	111398
50536198		Víctor	Ibarbo	ST	Colombia	31	79	188	113160
50536849		Okay	Yokuşlu	CDM	Turkey	27	86	191	450
50540266	Lucas Vázquez	Lucas	Vázquez Iglesias	RW	Spain	30	70	173	243
50542032		Ridgeciano	Haps	LB	Holland	28	66	175	246
50542409		Rodolfo	Pizarro	CAM	Mexico	27	64	173	1032
50545309		Andreas	Christensen	CB	Denmark	25	78	188	5
50551331		Corentin	Tolisso	CM	France	27	81	181	21
50558104	Pablo Fornals	Pablo	Fornals Malla	RM	Spain	25	67	178	483
50564954		Dean	Henderson	GK	England	24	85	190	1794
50571708		Max	Aarons	RB	England	21	69	176	1792
67290866	Sidnei	Sidnei Rechel	da Silva Júnior	CB	Brazil	31	88	188	449
67296618	Marlos	Marlos	Romero Bonfim	LW	Ukraine	33	69	174	101059
67305753		Simone	Verdi	RW	Italy	29	61	171	48
67308851		Jasper	Cillessen	GK	Holland	32	83	185	241
67321678	João Mário	João Mário	Naval Costa Eduardo	CM	Portugal	28	73	179	44
67324662		Maxwel	Cornet	RW	Côte d'Ivoire	24	69	179	66
67329951	Pau López	Pau	López Sabata	GK	Spain	26	77	189	449
67337551		Kasper	Dolberg	ST	Denmark	23	83	187	245
67341245	Wesley	Wesley Moraes	Ferreira da Silva	ST	Brazil	24	94	191	231
67350360		Timothy	Weah	ST	United States	21	66	185	78
84048320		Moussa	Dembélé	CM	Belgium	34	82	185	112429
84062089		Sven	Kums	CM	Belgium	33	73	175	229
84071502		Joshua	King	ST	Norway	29	74	184	1943
84076139		Steven	Zuber	LWB	Switzerland	29	79	182	36
84084220		Rogelio	Funes Mori	ST	Argentina	30	81	184	1032
84089015	Álvaro	Álvaro	González Soberón	CB	Spain	31	75	183	483
84091750		Dwight	Gayle	ST	England	30	78	174	109
84109707		Omar	Al Soma	ST	Syria	32	86	190	112387
84110389	Joan Jordán	Joan	Jordán Moreno	CM	Spain	27	74	184	467
84116064		Ben	Chilwell	LB	England	24	77	178	95
100848491		Odion	Ighalo	ST	Nigeria	32	75	183	110955
100883900	Jaume	Jaume	Domenech Sánchez	GK	Spain	30	73	185	461
100898073		Zack	Steffen	GK	United States	26	84	191	110636
117642434		Martin	Hinteregger	CB	Austria	28	83	184	1824
117663021	Dani Ceballos	Daniel	Ceballos Fernández	CAM	Spain	25	70	179	1
192242		Paul	Lasne	CM	France	32	77	186	70
193290		Martin	Braithwaite	ST	Denmark	30	73	180	12
193338		Mattia	Destro	ST	Italy	30	72	178	189
193869	Gil	Carlos Gilberto	do Nascimento Silva	CB	Brazil	34	87	192	111724
194201		Pontus	Jansson	CB	Sweden	30	86	196	8
194365		Shinji	Okazaki	CF	Japan	35	78	173	95
194806		Craig	Dawson	CB	England	31	85	188	109
195038		Florian	Kainz	LW	Austria	28	71	176	38
195363		Jeffrey	Bruma	CB	Holland	29	88	190	175
196142		Macnelly	Torres	CAM	Colombia	36	68	170	101102
196318		Serdar	Gürler	RM	Turkey	29	65	173	110839
197231		Khouma	Babacar	ST	Senegal	28	85	191	111974
198352		Stefan	Bell	CB	Germany	29	88	192	169
199158	Sergio Álvarez	Sergio	Álvarez Díaz	CDM	Spain	29	74	183	467
199493	Diego Mariño	Diego	Mariño Villar	GK	Spain	31	77	187	459
199652		Dennis	Praet	CM	Belgium	27	78	181	1837
199829	Timor	David	Timor Copoví	CDM	Spain	31	80	185	110062
200197		Nicolás	Blandi	ST	Argentina	31	76	181	1013
200798	Marafona	José Carlos	Coentrão Marafona	GK	Portugal	34	86	190	1896
201155		Ravel	Morrison	CAM	England	28	71	175	46
201878		Valentin	Eysseric	LW	France	29	73	181	110374
201988		Federico	Fernández	CB	Argentina	32	83	190	13
202088		Felix	Klaus	RM	Germany	28	79	180	175
202501	David Juncà	David	Juncà Reñé	LB	Spain	27	67	175	450
203128		Thomas	Monconduit	CDM	France	30	83	184	1816
203965		Viktor	Fischer	LM	Denmark	27	80	180	819
204538		Raúl	Ruidíaz	ST	Peru	31	66	169	111144
205069	Bernat	Juan	Bernat Velasco	LB	Spain	28	67	170	21
205965		Stefan	Ristovski	RB	FYR Macedonia	29	72	180	237
206516		Will	Hughes	CM	England	26	74	185	1795
206655		Eduardo	Vargas	ST	Chile	31	77	174	1970
134401817		Mehdi	Carcela-González	RM	Morocco	32	67	176	232
189712		Kevin	Strootman	CM	Holland	31	78	186	219
208808		Quincy	Promes	LM	Holland	29	72	174	100767
50500178	Jardel	Jardel	Nivaldo Vieira	CB	Brazil	35	87	192	234
50511495		Federico	Fazio	CB	Argentina	34	85	195	52
50517993		Kieran	Trippier	RB	England	30	72	178	18
50524632		Koen	Casteels	GK	Belgium	29	86	197	175
50533048	Rafinha	Rafael	Alcântara	CAM	Brazil	28	71	174	241
50543032		Jamal	Lowe	RM	England	27	75	183	1790
50553188	Raúl	Raúl Michel	Melo da Silva	CB	Brazil	31	81	187	1896
67319760		Morgan	Sanson	CM	France	26	73	180	219
84079966		Daniel	Didavi	CAM	Germany	31	77	180	36
100891224	Nélson Semedo	Nélson	Cabral Semedo	RB	Portugal	27	67	177	241
177457		Lars	Bender	RB	Germany	32	81	185	32
193469	Víctor Ruiz	Víctor	Ruiz Torre	CB	Spain	32	78	185	483
207664		Carlos	Bacca	ST	Colombia	34	77	181	483
50470060		James	Milner	CM	England	35	70	175	9
50505419		Łukasz	Piszczek	RB	Poland	36	79	184	22
50515228		Nils	Petersen	ST	Germany	32	84	188	25
50515759		Christian	Benteke	ST	Belgium	30	83	190	1799
50522107		André	Hansen	GK	Norway	31	87	189	298
50524813		Jesús	Corona	RM	Mexico	28	62	173	236
50531471	Campaña	José	Gómez Campaña	CM	Spain	28	70	179	1853
50532791		Aïssa	Mandi	CB	Algeria	29	78	184	449
50533156		Gastón	Ramírez	CAM	Uruguay	30	77	183	1837
50539247		Michael	Keane	CB	England	28	82	191	7
50541972		Jonas	Hofmann	CM	Germany	29	70	176	23
50545164	Ricardo Horta	Ricardo Jorge	da Luz Horta	LM	Portugal	26	63	173	1896
50552171		Yerry	Mina	CB	Colombia	26	94	195	7
67251766		Andriy	Pyatov	GK	Ukraine	37	90	190	101059
204366		Jürgen	Locadia	ST	Holland	27	87	185	1808
204713		Joel	Campbell	RW	Costa Rica	29	72	178	111657
205897		Nathaniel	Chalobah	CDM	England	26	76	185	1795
205995		Jetro	Willems	LB	Holland	27	82	177	1824
206517		Jack	Grealish	CAM	England	25	68	175	2
207412	Renan Bressan	Renan Bardini	Bressan	CM	Belarus	32	75	182	518
208017		Ivan	Santini	ST	Croatia	32	89	189	229
208461		Marten	de Roon	CM	Holland	30	76	185	39
209827		Júnior	Fernandes	LM	Chile	32	78	183	113142
210648		Ahmed	Hegazi	CB	Egypt	30	95	194	109
210862	Ricardo Ferreira	Ricardo José	Araújo Ferreira	CB	Portugal	28	76	190	1896
211263		Lisandro	Magallán	CB	Argentina	27	80	185	1877
211321		Moussa	Konaté	ST	Senegal	28	78	183	1816
211408		Karol	Linetty	CM	Poland	26	73	176	1837
212219		Alexander	Djiku	CB	France	26	74	182	210
212602	Diego Llorente	Diego Javier	Llorente Ríos	CB	Spain	27	75	186	457
213582		Alan	Ruiz	ST	Argentina	27	77	183	110406
213655		Alex	Iwobi	LM	Nigeria	25	75	180	1
213899		Éder	Balanta	CB	Colombia	28	84	181	896
214989		Martín	Benítez	CAM	Argentina	27	72	173	110093
215559	Lucas Evangelista	Lucas E.	Santana de Oliveira	CM	Brazil	26	76	181	71
216054		Nery	Domínguez	CDM	Argentina	31	81	184	101085
216258		Ihlas	Bebou	RM	Togo	27	77	183	485
216437	Wallace	Wallace	Fortuna Santos	CB	Brazil	26	85	191	46
216796		Federico	Cartabia	RM	Argentina	28	65	169	242
217196		José Luis	Palomino	CB	Argentina	31	87	188	39
217731	Sandro	Sandro	Ramírez Castillo	ST	Spain	26	71	175	7
219571	Camarasa	Víctor	Camarasa Ferrando	CM	Spain	27	76	183	1961
219953	Embarba	Adrián	Embarba Blazquez	RM	Spain	29	66	173	480
220334		Óscar	Romero	RM	Paraguay	29	74	176	110955
220633		Demarai	Gray	LM	England	25	74	180	95
221695		Godfred	Donsah	CM	Ghana	25	70	175	189
223273		Mario	Pašalić	CM	Croatia	26	83	189	39
223608	Eraso	Javier	Eraso Goñi	CAM	Spain	31	71	180	100888
224394	Fábio Martins	Fábio	Santos Martins	LM	Portugal	28	70	178	1896
225024		Mason	Holgate	CB	England	24	75	184	7
225201	Alex Berenguer	Alejandro	Berenguer Remiro	LM	Spain	26	73	175	54
226592		Jakub	Jankto	CM	Czech Republic	25	74	180	1837
228414	Matheus Pereira	Matheus Fellipe	Costa Pereira	RM	Brazil	25	66	175	237
228650	Francisco Geraldes	Francisco	Geraldes	CAM	Portugal	26	66	171	1824
229092		Aminu	Umar	RM	Nigeria	26	72	174	101037
231280	Iván Alejo	Iván	Alejo Peralta	RM	Spain	26	76	184	1860
232144		Felix	Uduokhai	CB	Germany	23	78	192	175
232665		Mauro	Arambarri	CDM	Uruguay	25	76	176	1860
235042		Dimitri	Liénard	CM	France	33	77	184	76
243952		Andriy	Lunin	GK	Ukraine	22	80	191	100888
50346555		Albano	Bizzarri	GK	Argentina	43	89	188	199
50486982	Kang Min Soo	Min Soo	Kang	CB	Korea Republic	35	76	186	1473
50490425		Philipp	Tschauner	GK	Germany	35	93	196	111239
50496633		Cyril	Théréau	LW	France	38	79	189	1842
50503666		Jonatan	Maidana	CB	Argentina	36	86	185	1882
50508782		Demba	Ba	ST	Senegal	36	85	189	101014
50509903		Ryan	Donk	CDM	Holland	35	80	192	325
50511595	Edgar	Edgar Bruno	da Silva	ST	Brazil	34	79	191	2056
50513050		William	Vainqueur	CDM	France	32	73	179	69
50515679	Licá	Luis Carlos	Pereira Carneiro	RW	Portugal	32	70	181	1889
50519307		Dmitriy	Tarasov	CDM	Russia	34	84	192	100765
50519546		Mervan	Çelik	LW	Sweden	31	74	177	711
50520132		Abel	Hernández	ST	Uruguay	30	73	185	315
50521132		Davide	Santon	LB	Italy	30	77	187	52
50521443	Éder	Éder	Macedo Lopes	ST	Portugal	33	81	190	100765
50522083	Tomeu Nadal	Tomeu	Nadal Mesquida	GK	Spain	32	82	187	1854
50522567		Fredy	Montero	ST	Colombia	34	73	176	101112
134423421		Sébastien	Haller	ST	France	27	91	190	19
206545	Manu Trigueros	Manuel	Trigueros Muñoz	CM	Spain	29	75	178	483
50500864		Shane	Long	ST	Republic of Ireland	34	70	178	17
50510276		Fernando	Forestieri	ST	Italy	31	67	172	1807
50516887		Ömer	Toprak	CB	Turkey	32	83	186	22
50523388	Ander Herrera	Ander	Herrera Agüera	CM	Spain	31	70	182	11
50531493		Francesco	Acerbi	CB	Italy	33	88	192	46
50538300	Sergio Rico	Sergio	Rico González	GK	Spain	27	88	194	144
50542968		Daniele	Rugani	CB	Italy	27	84	190	45
50544052		Federico	Bernardeschi	RM	Italy	27	77	185	45
50558703	Gelson Martins	Gelson Dany	Batalha Martins	RM	Portugal	26	72	173	240
84034199		Igor	Akinfeev	GK	Russia	35	78	186	315
100857182		Daniel	Didavi	CAM	Germany	31	77	180	36
104389		Rune Almenning	Jarstein	GK	Norway	36	82	190	166
197655		Sebastián	Coates	CB	Uruguay	30	92	196	237
50490274		Mathieu	Debuchy	RWB	France	36	76	176	1819
50504869		Antonio	Candreva	RM	Italy	34	70	180	44
50512474	Luiz Adriano	Luiz Adriano	Souza da Silva	ST	Brazil	34	80	184	100767
50516079		Sebastian	Giovinco	CF	Italy	34	61	163	605
50521797	De Marcos	Oscar	De Marcos Arana	RB	Spain	32	80	182	448
50524996		Xherdan	Shaqiri	RW	Switzerland	29	72	169	9
50526734		Dejan	Lovren	CB	Croatia	32	84	188	9
50532973		Ciprian	Tătăruşanu	GK	Romania	35	86	196	71
50534947		André	Carrillo	RM	Peru	30	78	181	234
50537571		Ben	Davies	LB	Wales	28	76	182	18
50540568		Nathan	Aké	CB	Holland	26	75	180	1943
50543016	Bruma	Armindo	Tué Na Bangna	CAM	Portugal	26	70	173	112172
50547001		Lucas	Alario	ST	Argentina	28	79	184	32
50553362		Alfredo	Morelos	ST	Colombia	25	79	177	86
67162778		Phil	Jagielka	CB	England	38	87	180	7
207441		Luciano	Vietto	ST	Argentina	27	70	173	144
208449		Christophe	Hérelle	CB	France	28	75	188	72
208622	Rubén Sobrino	Rubén	Sobrino Pozuelo	ST	Spain	29	73	185	463
210538		Luca	Zuffi	CDM	Switzerland	31	70	180	896
210736	Emerson	Emerson	Palmieri dos Santos	LWB	Italy	27	63	176	5
210950		Pablo	De Blasis	LM	Argentina	33	65	166	467
211302		Gianluca	Lapadula	ST	Italy	31	69	178	110556
211385		Riza	Durmisi	LB	Denmark	27	68	168	46
211927	Kwon Chang Hoon	Chang Hoon	Kwon	RM	Korea Republic	27	70	174	110569
212230	Iuri Medeiros	Iuri José	Picanço Medeiros	RM	Portugal	27	64	174	110556
212491		Arthur	Masuaku	LB	Congo DR	27	70	179	19
212888		Carlos	Salcedo	CB	Mexico	27	83	185	1824
213648		Pierre-Emile	Højbjerg	CM	Denmark	26	84	185	17
213814		Federico	Di Francesco	LW	Italy	27	75	178	111974
214770		Diego	González	CM	Argentina	33	78	180	111678
215162		Alejandro	Donatti	CB	Argentina	34	86	192	101085
215639	Kenedy	Robert Kenedy	Nunes do Nascimento	LM	Brazil	25	77	182	13
216158		Silvan	Widmer	RB	Switzerland	28	79	183	896
216349		Alen	Halilović	RM	Croatia	25	61	170	47
216774		Wesley	Hoedt	CB	Holland	27	77	188	17
216820		Moses	Simon	LM	Nigeria	26	69	168	1853
217648		Genki	Haraguchi	LM	Japan	30	68	177	485
219258	Pedro Henrique	Pedro Henrique	Pereira da Silva	CB	Brazil	28	88	190	1887
219732		Georges-Kévin	Nkoudou	LM	France	26	73	175	18
220295		Enner	Valencia	ST	Ecuador	31	74	174	1970
220414	Diego Rico	Diego	Rico Salguero	LB	Spain	28	76	183	1943
221354		Miloš	Veljković	CB	Serbia	25	77	184	38
223188		Şener	Özbayraklı	RB	Turkey	31	71	171	326
223517	Danilo	Danilo Barbosa	da Silva	CM	Brazil	25	76	183	72
223641		Timo	Baumgartl	CB	Germany	25	89	190	36
224540		Emmanuel	Boateng	ST	Ghana	25	62	175	1853
225126		Ellyes	Skhiri	CDM	Tunisia	26	69	185	70
225713		Jean-Kévin	Augustin	ST	France	24	69	177	112172
226601	Vitor Hugo	Vitor Hugo	Franchescoli Souza	CB	Brazil	30	80	187	110374
228579		Benjamin	Henrichs	RB	Germany	24	79	183	69
228717		Yoshinori	Mutō	ST	Japan	29	72	178	13
229453	Gil Dias	Gil	Bastiao Dias	RW	Portugal	24	78	183	14
229593		Marko	Pjaca	LW	Croatia	26	83	186	110374
231887		Yusuf	Yazıcı	CAM	Turkey	24	74	183	436
232226		Denys	Boyko	GK	Ukraine	33	82	194	101047
233138		Yu	Kobayashi	ST	Japan	33	72	177	111730
236441		Fabricio	Bustos	RB	Argentina	25	66	167	110093
244269		Filip	Benković	CB	Croatia	24	91	194	95
50456255		Selçuk	İnan	CM	Turkey	36	74	182	325
50489902		Alex	Brosque	ST	Australia	37	72	182	111400
50495055		Andrea	Raggi	CB	Italy	37	82	187	69
50497537	Park Chu Young	Chu Young	Park	ST	Korea Republic	36	75	182	982
50508489		Lukas	Jutkiewicz	ST	England	32	73	185	88
50508786	Ilsinho	Ilson	Pereira Junior	RM	Brazil	35	85	178	112134
50511394		Sam	Vokes	ST	Wales	31	90	188	1806
50512904		Matúš	Kozáčik	GK	Slovakia	37	91	193	110468
50513744	Zheng Long	Long	Zheng	RM	China PR	33	70	178	111839
50518723		Dayro	Moreno	ST	Colombia	35	79	177	112670
50519336	Ganso	Paulo Henrique	Chagas de Lima	CAM	Brazil	31	78	184	1816
50519692	Alan Carvalho	Alan Douglas	Borges de Carvalho	ST	Brazil	32	72	184	112983
50521309	Álvaro	Álvaro	Giménez Candela	ST	Spain	30	80	182	1861
50521662		Yannis	Salibur	RM	France	30	76	177	1819
50522409		Tolgay	Arslan	CDM	Germany	30	77	180	326
50522619		Osvaldo	Alonso	CDM	Cuba	35	70	180	111138
50523735		Georgiy	Schennikov	LWB	Russia	30	75	180	315
50524488		Milan	Đurić	ST	Bosnia and Herzegovina	31	94	199	110373
50525088		Nick	Viergever	CB	Holland	32	77	183	247
134425518		Kaan	Ayhan	CB	Turkey	26	84	184	110636
200316		Timo	Horn	GK	Germany	28	90	192	31
50470716	Nani	Luís Carlos	Almeida da Cunha	LM	Portugal	34	68	177	237
50509281	Ángel	Ángel Luís	Rodríguez Díaz	ST	Spain	34	68	172	1860
50515024		Ljubomir	Fejsa	CDM	Serbia	32	80	184	234
50521330		Ben	Mee	CB	England	31	82	183	1796
50526442		Andriy	Yarmolenko	RM	Ukraine	31	83	190	19
50532953	Gabriel Paulista	Gabriel	Armando de Abreu	CB	Brazil	30	79	187	461
50540096		Emil	Forsberg	CAM	Sweden	29	78	179	112172
50548057		Matteo	Politano	LW	Italy	28	67	171	44
50558438		Wilfred	Ndidi	CDM	Nigeria	24	74	183	95
67303093	Hugo Mallo	Hugo	Mallo Novegil	RB	Spain	30	72	174	450
67335090		Giovani	Lo Celso	CM	Argentina	25	70	175	73
84096367		Jhon	Córdoba	ST	Colombia	28	85	185	31
100893438	Oyarzabal	Mikel	Oyarzabal Ugarte	LW	Spain	24	78	181	457
184144		Nicolás	Gaitán	CAM	Argentina	33	66	173	112378
202685		Simone	Zaza	ST	Italy	30	84	186	54
216451		Jean Michaël	Seri	CM	Côte d'Ivoire	30	65	168	144
50471016		Jason	Shackell	CB	England	37	83	193	149
50493604	Borja Valero	Borja	Valero Iglesias	CAM	Spain	36	73	175	44
50509959	Eder	Eder	Citadin Martins	ST	Italy	34	72	179	112162
50514142		Fernando	Muslera	GK	Uruguay	35	74	190	325
50517796		Ron-Robert	Zieler	GK	Germany	32	81	188	36
50521529		Chris	Smalling	CB	England	31	81	194	11
50524753		Alphonse	Areola	GK	France	28	94	195	73
50531363	Vitolo	Víctor	Machín Pérez	LM	Spain	31	79	185	240
50532374		Benjamin	Lecomte	GK	France	30	78	186	70
50535131		Davy	Klaassen	CM	Holland	28	70	179	38
50537498		Leonardo	Pavoletti	ST	Italy	32	85	188	1842
50541608	Pacheco	Fernando	Pacheco Flores	GK	Spain	29	81	186	463
50543835		Philipp	Max	LM	Germany	27	77	177	100409
50547519		Alireza	Jahanbakhsh	RM	Iran	27	78	180	1808
50554157	Dani Ceballos	Daniel	Ceballos Fernández	CM	Spain	25	70	179	243
67267096		Salomon	Kalou	LM	Côte d'Ivoire	36	77	184	166
50522858		Sébastien	Corchia	RB	France	30	67	175	234
50523794		Vladislav	Ignatiev	RB	Russia	34	72	180	100765
50525024		Lalaïna	Nomenjanahary	RW	Madagascar	35	76	177	111817
50525397		Peniel	Mlapa	ST	Togo	30	93	193	100651
50525668	Pelé	Judilson Mamadu	Tuncara Gomes	CDM	Guinea-Bissau	29	77	182	69
50527011		Jeffrey	Bruma	CB	Holland	29	88	190	34
50529667		Pascal	Testroet	ST	Germany	30	86	185	506
50532803		Ravel	Morrison	CAM	England	28	71	175	113173
50533508		Ermin	Bičakčić	CB	Bosnia and Herzegovina	31	85	185	10029
50533541	Recio	José Luis	García del Pozo	CDM	Spain	30	74	183	100888
50533735		Johannes	Geis	CDM	Germany	27	81	181	34
50534642	Han Kyo Won	Kyo Won	Han	RM	Korea Republic	31	73	182	1477
50535404		Matt	Smith	ST	England	32	91	198	15
50536361		Joel	Campbell	RW	Costa Rica	29	72	178	110781
50537404		Stefano	Denswil	CB	Holland	28	81	185	231
50537954		Jordan	Ferri	CM	France	29	74	172	66
50538075		Bogdan	Butko	RB	Ukraine	30	72	182	101059
50540936		Florent	Mollet	CAM	France	29	68	174	70
50543504		Kevin	Akpoguma	CB	Germany	26	85	192	10029
50544536		Carlos	Salcedo	CB	Mexico	27	83	185	1970
50546270		Jeremy	Toljan	RB	Germany	26	74	182	22
50547997		Alen	Halilović	RM	Croatia	25	61	170	232
50549379	Sandro	Sandro	Ramírez Castillo	ST	Spain	26	71	175	457
50551402	Bruno Varela	Bruno Miguel	Semedo Varela	GK	Portugal	26	87	191	234
50552411		Ryan	Thomas	CM	New Zealand	26	64	175	247
50554048		Harry	Winks	CM	England	25	74	176	18
50556188		Emmanuel	Boateng	ST	Ghana	25	62	175	112378
50559348		Roy	Gelmi	CDM	Switzerland	26	78	188	1715
50560298	Francisco Geraldes	Francisco	Geraldes	CAM	Portugal	26	66	171	237
50561101	Gil Dias	Gil	Bastiao Dias	RM	Portugal	24	78	183	280
50563249	Dalmau	Adriàn	Dalmau Vaquer	ST	Spain	27	74	181	100634
50566581		Aleksandar	Sedlar	CB	Serbia	29	79	178	111086
50568859	Yuri Ribeiro	Yuri	Oliveira Ribeiro	LB	Portugal	24	74	178	234
50575901		Uroš	Račić	CDM	Serbia	23	81	193	461
67295269		Franco	Di Santo	ST	Argentina	32	88	193	480
67311379	Jesé	Jesé	Rodríguez Ruiz	LM	Spain	28	72	178	449
67321022		Osayamen	Osawe	ST	Nigeria	27	79	181	167
67323051		Carlos	Bejarano	GK	Equatorial Guinea	36	83	184	111723
67337499	Borja Mayoral	Borja	Mayoral Moya	ST	Spain	24	74	182	243
67342273		Robert	Gumny	RB	Poland	23	61	177	873
67348505	Alfa Semedo	Alfa	Semedo Esteves	CDM	Guinea-Bissau	23	82	189	452
84108024		Peter	Michorl	CM	Austria	26	71	176	252
84119231		Koji	Miyoshi	RM	Japan	24	64	167	101151
14907		Albano	Bizzarri	GK	Argentina	43	89	188	110911
138456	Diego Tardelli	Diego	Tardelli Martins	CAM	Brazil	36	70	180	111724
139968		Vincent	Enyeama	GK	Nigeria	38	87	184	65
142959		Mariano	Barbosa	GK	Argentina	37	79	188	483
146952	Iván Cuéllar	Iván	Cuéllar Sacristán	GK	Spain	37	76	187	100888
149185		Francesco	Magnanelli	CDM	Italy	36	79	181	111974
152993		Renato	Civelli	CB	Argentina	37	92	195	110404
158138		Aaron	Hunt	CAM	Germany	34	73	183	28
158942	Léo Matos	Leonardo	de Matos Cruz	RB	Brazil	35	81	184	393
163824		Ashley	Williams	CB	Wales	36	77	183	1806
167665		Nicolás	Domingo	CDM	Argentina	36	70	174	110093
170923		Andrey	Eschenko	RB	Russia	37	78	176	100767
172203		Fraser	Forster	GK	England	33	93	201	17
177019		Fabian	Lustenberger	CDM	Switzerland	33	70	180	166
178031		Paul	Baysse	CB	France	33	82	184	210
168354		Emiliano	Viviano	GK	Italy	35	90	195	237
50380679		Stefano	Sorrentino	GK	Italy	42	85	186	192
50505169	Marcano	Iván	Marcano Sierra	CB	Spain	34	77	187	52
50513434		Vedran	Ćorluka	CB	Croatia	35	84	192	100765
50519584		Steven	Nzonzi	CDM	France	32	75	196	52
50530854		Domagoj	Vida	CB	Croatia	32	76	184	327
50538115		Alassane	Pléa	LW	France	28	79	181	23
50543799		Thomas	Strakosha	GK	Albania	26	78	193	46
50551723		Mohamed	Kanno	CDM	Saudi Arabia	26	71	191	605
67277218		Emiliano	Viviano	GK	Italy	35	90	195	112791
67324649		Keita	Baldé	LM	Senegal	26	80	181	44
84116222	Oyarzabal	Mikel	Oyarzabal Ugarte	LW	Spain	24	78	181	457
113422	David Villa	David	Villa Sánchez	ST	Spain	39	69	175	112828
192227		Shkodran	Mustafi	CB	Germany	29	82	184	1
207471		Franco	Vázquez	CAM	Italy	32	82	186	481
216194	Dani García	Daniel	García Carrillo	CDM	Spain	31	80	180	448
50491229	Oriol Riera	Oriol	Riera Magem	ST	Spain	35	78	184	112427
50495677	Charles	Charles	Dias De Oliveira	ST	Brazil	37	75	177	467
50511437		Damien	Da Silva	CB	France	33	82	184	74
50515603		Teddy	Chevalier	RM	France	34	80	178	100081
50520899		Sebastian	Rudy	CM	Germany	31	74	179	34
50523335	Maicon	Maicon	Pereira Roque	CB	Brazil	32	89	191	325
50526606		Aaron	Mooy	CM	Australia	30	72	173	1939
50531908		Steven	Berghuis	RW	Holland	29	72	182	246
50533025		Jeison	Murillo	CB	Colombia	29	78	182	461
50536486		Raúl	Jiménez	ST	Mexico	30	81	188	110
50539982		Jonas	Hector	LWB	Germany	31	75	185	31
50542512		Elseid	Hysaj	RB	Albania	27	70	182	48
50544625		Niklas	Stark	CB	Germany	26	81	190	166
50551341	Diego Carlos	Diego Carlos	Santos Silva	CB	Brazil	28	86	186	71
50558025		Gonzalo	Martínez	CAM	Argentina	28	75	172	1876
67285414		David	Ospina	GK	Colombia	32	80	183	48
50525487	Rômulo	Rômulo Souza	Orestes Caldeira	CM	Italy	34	72	178	46
50526686		Florian	Kainz	LM	Austria	28	71	176	31
50527966		Serdar	Gürler	RM	Turkey	29	65	173	101026
50531477	Timor	David	Timor Copoví	CDM	Spain	31	80	185	472
50533506		Nicola	Sansone	ST	Italy	29	68	175	189
50533526		Valentin	Eysseric	LW	France	29	73	181	71
50533626		Piotr	Parzyszek	ST	Poland	27	80	190	111086
50534476		Federico	Viviani	CDM	Italy	29	75	180	111657
50535266		Valentinos	Sielis	CB	Cyprus	31	95	189	112115
50535804		Sékou	Sanogo	CDM	Côte d'Ivoire	32	81	182	900
50537126		Michael	Krmenčík	ST	Czech Republic	28	90	191	110468
50537614		Amin	Younes	LW	Germany	28	71	168	48
50538062		Sergiy	Kryvtsov	CB	Ukraine	30	83	186	101059
50538254		Philipp	Hofmann	ST	Germany	28	90	196	110500
50542545		Chancel	Mbemba	CB	Congo DR	26	82	182	236
202048		Conor	Coady	CB	England	28	80	186	110
202476	Javi Espinosa	Javier	Espinosa González	CAM	Spain	28	67	173	1853
203279	Wellington Nem	Wellington	S. Sánchez Aguiar	CAM	Brazil	29	69	165	101059
203783		Tommy	Smith	RB	England	29	84	186	1939
204226		Darío	Lezcano	ST	Paraguay	31	79	178	111239
204826		Abdoulaye	Ba	CB	Senegal	30	79	197	480
205365		Jan	Kopic	LM	Czech Republic	31	79	180	110468
205878		Stefanos	Kapino	GK	Greece	27	91	196	38
206577		Stef	Peeters	CM	Belgium	29	74	188	210
207733	Filipe Augusto	Filipe Augusto	Carvalho Souza	CDM	Brazil	27	80	183	113142
208509		Thomas	Foket	RB	Belgium	26	81	178	674
209691		Jordan	Adéoti	CDM	Benin	32	81	183	57
210126		Hiroshi	Kiyotake	RM	Japan	31	66	172	101148
211017	Víctor Rodríguez	Víctor	Rodríguez Romero	LM	Spain	32	65	167	111144
211513		Tom	Lawrence	LM	Wales	27	75	180	91
211826		Rafael	Czichos	CB	Germany	31	93	188	31
212300		Jack	O'Connell	CB	England	27	85	191	1794
213063	Róber	Roberto	Suárez Pier	CB	Spain	26	74	182	1853
214158		Yeison	Gordillo	CDM	Colombia	29	73	176	101104
214384		Felipe	Aguilar	CB	Colombia	28	80	191	101100
215049		Damián	Pérez	LB	Argentina	32	66	168	110980
215083		Maximiliano	Urruti	ST	Argentina	30	74	184	695
215245		Adrien	Hunou	RM	France	27	66	176	74
215651	Samir	Samir Caetano	de Souza Santos	CB	Brazil	26	80	189	55
217546	Sequeira	Nuno Miguel	Jerónimo Sequeira	LB	Portugal	30	79	184	1896
18115	Rúben Fernandes	Rúben Miguel	Santos Fernandes	CB	Portugal	35	78	185	10031
52752		Tranquillo	Barnetta	CAM	Switzerland	36	70	178	898
121134		Alexander	Walke	GK	Germany	38	88	189	191
137774		Domenico	Maietta	CB	Italy	39	75	184	1746
139836		Carl	Medjani	CB	Algeria	36	77	184	101041
146953	Manu Del Moral	Manuel	Del Moral Fernández	ST	Spain	37	77	185	15019
149258		Alex	Cordaz	GK	Italy	38	83	188	110734
153062		Víctor	Figueroa	LM	Argentina	37	63	168	110396
157310		Sylvain	Marveaux	CAM	France	35	69	172	217
161663		Sebastián	Viera	GK	Uruguay	38	86	184	101101
163187		Roland	Lamah	LM	Belgium	33	71	175	695
164529		Drew	Moor	CB	United States	37	75	183	111651
166844		Kyle	Lafferty	ST	Northern Ireland	33	88	193	86
167933		Yannick	Cahuzac	CDM	France	36	70	178	1809
169593		Kieran	Lee	CM	England	33	76	178	1807
172285	Elustondo	Gorka	Elustondo Urkola	CM	Spain	34	79	184	480
173436		Nathan	Dyer	RM	England	33	62	167	1960
176481		Mevlüt	Erdinç	ST	Turkey	34	84	181	101014
177137	Nuno Coelho	Nuno Miguel	Prata Coelho	CDM	Portugal	33	76	183	1889
178032		Romain	Brégerie	CB	France	34	90	190	110588
181120	Chong Te Se	Te Se	Chong	ST	Korea DPR	37	80	181	101149
178005	Rui Patrício	Rui Pedro	dos Santos Patrício	GK	Portugal	33	84	190	110
201153	Morata	Álvaro Borja	Morata Martín	ST	Spain	28	85	189	5
50490795		Loïc	Perrin	CB	France	36	80	181	1819
50502129		Ezequiel	Garay	CB	Argentina	34	90	189	461
50514933		Mamadou	Sakho	CB	France	31	83	187	1799
50522828		Javier	Pastore	CM	Argentina	32	77	188	52
50532363		Adam	Davies	GK	Wales	29	80	191	1932
50534497		Jannik	Vestergaard	CB	Denmark	29	98	199	17
50541840		Ibrahim	Al Zubaidi	LB	Saudi Arabia	31	60	172	112393
50551457		Tiémoué	Bakayoko	CM	France	26	85	189	47
67230808		Bastian	Schweinsteiger	CB	Germany	37	79	183	693
67328849		Matias	Vecino	CDM	Uruguay	29	81	187	44
84114008	Nélson Semedo	Nélson	Cabral Semedo	RB	Portugal	27	67	177	241
163489		Andrea	Consigli	GK	Italy	34	82	189	111974
184431		Sebastian	Giovinco	CF	Italy	34	61	163	111651
198141	Bartra	Marc	Bartra Aregall	CB	Spain	30	73	184	449
50489608	Manuel Fernandes	Manuel H.	Tavares Fernandes	LM	Portugal	35	75	176	100765
50496024		Graziano	Pellè	ST	Italy	36	90	193	111724
50511982	Marcelo	Marcelo Antônio	Guedes Filho	CB	Brazil	34	85	191	66
50515548		Diego	Perotti	LW	Argentina	33	70	179	52
50520765		Roman	Bürki	GK	Switzerland	30	85	187	22
50523813	Paulinho	Paulo José	de Oliveira	LW	Brazil	35	75	174	711
50525173	Mário Fernandes	Mário	Figueira Fernandes	RWB	Russia	30	80	187	315
50531980		Tomáš	Koubek	GK	Czech Republic	28	95	197	74
50533153	David López	David	López Silva	CB	Spain	31	81	183	452
50537010		Matija	Nastasić	CB	Serbia	28	83	188	34
50542583		Domenico	Berardi	ST	Italy	27	72	183	111974
50546907		Emiliano	Rigoni	RM	Argentina	28	74	178	39
50548464		Giovanni	Simeone	ST	Argentina	26	81	180	110374
50557295		Martín	Campaña	GK	Uruguay	32	75	185	110093
50566227		Julian	Quiñones	ST	Colombia	24	76	177	1970
67287186		Miguel	Layún	RWB	Mexico	33	76	180	1032
50542911		Lisandro	Magallán	CB	Argentina	27	80	185	245
50543878	Iuri Medeiros	Iuri José	Picanço Medeiros	RM	Portugal	27	64	174	1871
50545230		Alan	Ruiz	ST	Argentina	27	77	183	237
50547702		Nery	Domínguez	CDM	Argentina	31	81	184	110150
50548422		Wesley	Hoedt	CB	Holland	27	77	188	450
50549946		Saturnin	Allagbé	GK	Benin	27	71	187	1813
50552141		Antonio	Barreca	LB	Italy	26	70	180	69
50552648		Badou	Ndiaye	CM	Senegal	30	76	180	325
50555752		Damián	Martínez	RWB	Argentina	31	77	176	111716
50559281		Bart	Ramselaar	CAM	Holland	25	74	178	247
50560062	Matheus Pereira	Matheus Fellipe	Costa Pereira	RM	Brazil	25	66	175	171
50560858		Mohammed	Osman	CM	Syria	27	78	183	100634
50561690		Youssef	Aït Bennasser	CM	Morocco	25	75	184	69
50564509		Kota	Mizunuma	RM	Japan	31	72	176	101148
50566620		Yannick	Gomis	ST	Senegal	29	76	180	64
50573038		Eljif	Elmas	LM	FYR Macedonia	21	74	184	326
50575665		Malik	Asselah	GK	Algeria	35	90	193	113222
67291752		Håvard	Nordtveit	CB	Norway	31	83	188	144
67310310		George	Moncur	CAM	England	27	63	176	1923
67322446		Alan	Ruiz	ST	Argentina	27	77	183	111707
67340690		Yann	Karamoh	RM	France	23	77	185	59
67344425		Kévin	Fortuné	LW	France	32	80	182	294
84070925	Wellington	Wellington Luís	de Sousa	ST	Brazil	33	89	186	101146
84111104		Mason	Holgate	CB	England	24	75	184	109
84120768		Samuele	Campo	CAM	Switzerland	26	70	177	896
100902381		Erling Braut	Haaland	ST	Norway	21	87	193	191
47201		Silvio	Proto	GK	Belgium	38	77	186	46
139062		Willy	Caballero	GK	Argentina	39	80	186	5
142784		Pablo	Zabaleta	RB	Argentina	36	74	178	19
143699		Gökhan	Gönül	RB	Turkey	36	75	175	327
146963		Javier	Pinola	CB	Argentina	38	79	180	1876
152814	Bobô	Deivson Rogério	Da Silva	ST	Brazil	36	85	186	113142
157217		Neri	Cardozo	CM	Argentina	34	66	173	101085
157665		Scott	Dann	CB	England	34	78	188	1799
158905		Pirmin	Schwegler	CDM	Switzerland	34	74	178	485
161938		Mauro	Boselli	ST	Argentina	36	75	185	110781
168326		Salvatore	Bocchetti	CB	Italy	34	86	186	100767
172018		Jonatan	Maidana	CB	Argentina	36	86	185	1876
173204		Luca	Antonelli	LB	Italy	34	79	184	1746
177134		Demba	Ba	ST	Senegal	36	85	189	110955
177392		Dieumerci	Mbokani	ST	Congo DR	35	73	185	230
179696		Emiliano	Insúa	LB	Argentina	32	79	180	36
181402		William	Vainqueur	CDM	France	32	73	179	741
182736	Ricardo	Ricardo Jorge	Novo Nunes	GK	Portugal	39	84	188	518
183526		Nabil	El Zhar	RM	Morocco	34	66	171	100888
183766		Bakary	Koné	CB	Burkina Faso	33	80	188	101007
184271		Younousse	Sankharé	CM	Senegal	31	80	184	59
46736		Emiliano	Moretti	CB	Italy	40	77	182	54
107298		Yohann	Pelé	GK	France	38	89	196	219
136113		Wes	Morgan	CB	Jamaica	37	101	186	95
140082	Rafael	Rafael Pinheiro	Andrade Bittencourt	GK	Brazil	39	80	187	1842
147006	Diego Castro	Diego	Castro Giménez	LM	Spain	39	71	174	111399
149184		Christian	Maggio	RB	Italy	39	79	184	112026
153275		Jean-Louis	Leca	GK	France	35	75	180	64
155946		Robert	Snodgrass	RM	Scotland	33	82	182	19
157678		Laurent	Ciman	CB	Belgium	36	70	184	112996
159591		Andrés	Pérez	CDM	Colombia	40	75	180	101102
162280		Adrian	Mierzejewski	CAM	Poland	34	73	174	111769
163419		Bacary	Sagna	RB	France	38	73	176	111139
50540262		Alan	Uryga	CB	Poland	27	85	191	1569
50544067		Tyrone	Mings	LB	England	28	77	196	1943
67292998	Fernando	Fernando	Reges	CM	Brazil	34	76	183	325
67312759	Pozuelo	Alejandro	Pozuelo Melero	CAM	Spain	29	72	172	111651
67319076	Garry Rodrigues	Garry	Mendes Rodrigues	LM	Cape Verde Islands	30	70	173	325
67332738		Valentin	Rongier	CM	France	26	70	173	71
67336340	Soares	Francisco	Soares dos Santos	ST	Brazil	30	82	187	236
84083058		Callum	Wilson	ST	England	29	66	180	1943
100845475		Sebastian	De Maio	CB	France	34	90	190	55
175379	Pedro León	Pedro León	Sánchez Gil	RM	Spain	34	73	183	467
187072		Lars	Stindl	CF	Germany	32	80	181	23
216475	Morales	José Luis	Morales Nogales	LM	Spain	34	70	180	1853
50486120	Jorge Molina	Jorge	Molina Vidal	ST	Spain	39	72	188	1860
50495359		Lassana	Diarra	CDM	France	36	74	174	73
50501243		Danny	Rose	LB	England	31	76	174	18
50503661	De la Bella	Alberto	de la Bella Madueño	LB	Spain	35	82	182	472
50505080		Héctor	Moreno	CB	Mexico	33	80	183	457
50509861		Etienne	Capoue	CDM	France	33	87	190	1795
50516149		Michael	Lang	RB	Switzerland	30	79	185	23
50519751	Rochina	Rubén	Rochina Naixes	CM	Spain	30	76	182	1853
50521208	Iborra	Vicente	Iborra de la Fuente	CDM	Spain	33	91	190	483
50524289		Kevin	Vogt	CB	Germany	29	85	194	10029
50525249		Germán	Pezzella	CB	Argentina	30	81	186	110374
50527509		Yaroslav	Rakitskyi	CB	Ukraine	32	83	184	101059
50530717		Vincent	Aboubakar	ST	Cameroon	29	82	184	236
50531966		Mark	Uth	ST	Germany	29	72	185	34
50532743		Agustín	Marchesín	GK	Argentina	33	85	188	1879
50534043	William	William	Alves de Oliveira	ST	Brazil	29	80	182	518
50536260		Ole Kristian	Selnæs	CDM	Norway	27	77	187	1819
50539776		Hakan	Çalhanoğlu	LW	Turkey	27	76	178	47
50541429		Pierrick	Capelle	LM	France	34	73	181	1530
50542098		Abdoulaye	Touré	CM	France	27	84	188	71
50544340	Rony Lopes	Marcos Paulo	Mesquita Lopes	RM	Portugal	25	68	174	69
50546645		Ángel	Correa	RM	Argentina	26	68	171	240
50547578		Tin	Jedvaj	LB	Croatia	25	81	184	32
50553139		Nico	Elvedi	CB	Switzerland	24	78	189	23
50557023		Konrad	Laimer	CDM	Austria	24	72	180	112172
50560589	André Silva	André Miguel	Valente da Silva	ST	Portugal	25	79	185	481
50565683	Odriozola	Álvaro	Odriozola Arzalluz	RB	Spain	25	66	176	243
50572624		Marcelo	Saracchi	LB	Uruguay	23	69	172	112172
67265296		Guillaume	Hoarau	ST	France	37	85	192	900
67291760		Roberto	Rosales	RB	Venezuela	32	70	175	452
50543551		Benjamin	Kololli	LB	Kosovo	29	82	184	894
50544478		Awer	Mabil	RW	Australia	25	73	179	1516
50546570		Álvaro	Ramos	ST	Chile	29	70	167	112584
50547913		Uche	Ikpeazu	ST	England	26	78	191	80
50548804	Zhang Lie	Lie	Zhang	GK	China PR	39	85	190	112537
50551380		Georges-Kévin	Nkoudou	LM	France	26	73	175	69
50552269		Saïd	Benrahma	LW	Algeria	25	67	172	1925
50554308	Hwang Hyun Soo	Hyun Soo	Hwang	CB	Korea Republic	26	80	183	982
50556156		Leonardo	Mancuso	ST	Italy	29	77	182	200
50559646		Dominique	Badji	LM	Senegal	28	79	183	695
50560629		Yohan	Boli	ST	Côte d'Ivoire	27	78	181	680
50562928	Iván Alejo	Iván	Alejo Peralta	RM	Spain	26	76	184	573
50565750		Ionuţ Andrei	Radu	GK	Romania	24	78	188	110556
50568181		Robert	Glatzel	ST	Germany	27	85	193	111235
50574886	Júnior Moraes	Aluísio Chaves	Rib. Moraes Júnior	ST	Brazil	34	70	176	101059
50575917		Filip	Benković	CB	Croatia	24	91	194	78
67297991		Serdar	Aziz	CB	Turkey	30	79	183	326
67313573		Diego	Rubio	LM	Chile	28	77	179	694
67321094	Iuri Medeiros	Iuri José	Picanço Medeiros	RM	Portugal	27	64	174	237
67329779		Gabriele	Moncini	ST	Italy	25	75	183	111993
67341157		Victor	Osimhen	ST	Nigeria	22	78	185	65
67349999		Jamilu	Collins	LB	Nigeria	27	76	183	10030
84105834	Bruno Varela	Bruno Miguel	Semedo Varela	GK	Portugal	26	87	191	245
84118980		Christoph	Monschein	ST	Austria	28	74	178	256
84122391		Marko	Rog	CM	Croatia	26	73	180	481
45595		Daniele	Bonera	CB	Italy	40	84	183	483
114764	Iraizoz	Gorka	Iraizoz Moreno	GK	Spain	40	89	191	110062
142780		Gonzalo	Rodríguez	CB	Argentina	37	79	182	1013
146296	Andrés Fernández	Andrés Eduardo	Fernández Moreno	GK	Spain	34	82	187	483
152554		Gaël	Clichy	LB	France	36	65	176	101014
152879		Mark	Noble	CM	England	34	76	180	19
157492		Jorge	Valdivia	CAM	Chile	37	71	173	110980
158777		Philipp	Tschauner	GK	Germany	35	93	196	485
161805		Valon	Behrami	CDM	Switzerland	36	78	185	55
164985		Cyril	Théréau	LW	France	38	79	189	110374
165321		Stephen	Ward	LB	Republic of Ireland	35	80	186	1796
171972		James	McArthur	CM	Scotland	33	66	178	1799
172768		Andrew	Surman	CM	England	34	73	178	1943
176894	Mossoró	José Márcio	da Costa	CAM	Brazil	38	67	170	101014
177390		Haris	Medunjanin	CM	Bosnia and Herzegovina	36	76	188	112134
178115		Lazaros	Christodoulopoulos	LM	Greece	34	78	183	280
179746		Sam	Vokes	ST	Wales	31	90	188	1796
180283	Ki Sung Yueng	Sung Yueng	Ki	CM	Korea Republic	32	75	189	13
182184		Dale	Stephens	CM	England	32	71	185	1808
182941		Pablo	Aguilar	CB	Paraguay	34	80	180	1878
183130		Marc	Albrighton	LM	England	31	74	175	95
183568		Sebastian	Langkamp	CB	Germany	33	85	191	38
183883		Siphiwe	Tshabalala	LM	South Africa	36	65	170	749
3281	Tarantini	Ricardo José	Monteiro	CM	Portugal	37	78	188	744
105846		Artur	Boruc	GK	Poland	41	87	193	1943
138918		Luca	Rigoni	CM	Italy	36	76	185	50
146111	Mikel Rico	Mikel	Rico Moreno	CM	Spain	36	75	179	448
67296355		Fedor	Smolov	ST	Russia	31	80	187	100765
67310820		Salif	Sané	CB	Senegal	30	85	196	34
67325130		Kenny	Tete	RWB	Holland	25	71	180	66
67333322	Diogo Jota	Diogo José	Teixeira da Silva	ST	Portugal	24	73	178	110
84049130		Billy	Sharp	ST	England	35	70	175	1794
84089837	Zé Luís	José Luís	Mendes Andrade	ST	Cape Verde Islands	30	88	184	236
84125095		Emmanuel	Dennis	RM	Nigeria	23	68	175	231
166706		Martin	Škrtel	CB	Slovakia	36	81	191	326
182212		Anthony	Modeste	ST	France	33	84	187	112983
203042		Jack	Butland	GK	England	28	95	196	1806
50469154		Goran	Pandev	ST	FYR Macedonia	38	75	184	110556
50488060		José de Jesús	Corona	GK	Mexico	40	84	184	1878
50496112		Bradley	Wright-Phillips	ST	England	36	75	173	689
50502016		Erik	Lamela	RM	Argentina	29	80	184	18
50504585		Glenn	Murray	ST	England	37	84	185	1808
50508642		Régis	Gurtner	GK	France	34	82	182	1816
50513468		Stevan	Jovetić	ST	Montenegro	31	79	183	69
50516506	Alan Kardec	Alan Kardec	de Sousa Pereira Jr	ST	Brazil	32	80	185	112165
50517778		James	Chester	CB	Wales	32	79	181	2
50520062		Carlos	Villanueva	CAM	Chile	35	73	173	607
50521110		Junior	Hoilett	RM	Canada	31	70	173	1961
50524270		Shane	Duffy	CB	Republic of Ireland	29	76	193	1808
50524552		Guram	Kashia	CB	Georgia	34	87	186	111928
50528873		Nicolás	Lodeiro	CAM	Uruguay	32	69	170	111144
50531289		Matz	Sels	GK	Belgium	29	88	190	76
50532690		Djibril	Sidibé	RB	France	29	81	182	69
50534398		Willy	Boly	CB	France	30	97	195	110
50538061		Taras	Stepanenko	CDM	Ukraine	31	76	181	101059
50541167		Gaëtan	Laborde	RF	France	27	81	182	70
50542071		Albert	Rusnák	RM	Slovakia	27	73	175	111065
50543715		Camilo	Vargas	GK	Colombia	32	80	185	101102
50545314		Ruben	Loftus-Cheek	CM	England	25	83	191	5
50547337		Andrea	Petagna	ST	Italy	26	85	188	112791
50549525		Théo	Bongonda	LM	Belgium	25	64	176	15005
50555226	Mata	Jaime	Mata Arnaiz	ST	Spain	32	78	187	1860
50556531		Steve	Mounié	ST	Benin	26	80	190	1939
50560815		Milot	Rashica	RM	Kosovo	25	73	177	38
50563617		Ruslan	Malinovskyi	CM	Ukraine	28	85	181	673
50568951		Omar	Kharbin	CAM	Syria	27	83	185	605
67249097		Guillermo	Ochoa	GK	Mexico	36	78	185	232
67289962		Makoto	Hasebe	CB	Japan	37	72	180	1824
178160		Thomas	Mangani	CM	France	34	79	183	1530
179954		Thomas	Kraft	GK	Germany	33	78	187	166
182152	Koo Ja Cheol	Ja Cheol	Koo	CAM	Korea Republic	32	79	183	100409
182629	Beto	António Alberto	Bastos Pimparel	GK	Portugal	39	81	182	101026
183129		Ciaran	Clark	CB	Republic of Ireland	31	88	185	13
183546		Jonathan	Hogg	CDM	England	32	73	176	1939
183982		Nolan	Roux	ST	France	33	81	182	62
20209	Ricardo Costa	Ricardo Miguel	Moreira Costa	CB	Portugal	40	82	184	112516
105318		Jaime	Valdés	CM	Chile	40	74	175	110980
135883		Simon	Francis	CB	England	36	90	183	1943
139313		Christian	Fuchs	LB	Austria	35	89	187	95
143632		Volkan	Demirel	GK	Turkey	39	90	191	326
148839		Paul	Verhaegh	RB	Holland	37	74	178	175
152211		Ramazan	Özcan	GK	Austria	37	84	187	32
153296		Yoann	Gourcuff	CAM	France	35	82	185	110569
157503		Alexandre	Song	CDM	Cameroon	33	74	185	110770
158543		Oribe	Peralta	ST	Mexico	37	80	179	1879
159240		Michael	Krohn-Dehli	CM	Denmark	38	68	170	242
163083	Rolando	Rolando Jorge	Pires da Fonseca	CB	Portugal	35	77	189	219
50540255		Martín	Mantovani	CB	Argentina	37	77	183	110839
50541536		Craig	Goodwin	LM	Australia	29	73	180	111393
50545758		José	Cuadrado	GK	Colombia	36	80	180	101100
50546755		Héctor	Villalba	RM	Argentina	27	75	172	112885
50549253		Lukas	Lerager	CM	Denmark	28	85	186	110556
50551598		Noah	Sonko Sundberg	CB	Sweden	25	84	187	113173
50553472	Piao Cheng	Cheng	Piao	CM	China PR	31	69	176	111768
50555334		Timon	Wellenreuther	GK	Germany	25	80	186	1907
50557526		Cecilio	Domínguez	LM	Paraguay	26	70	179	110093
50559741		Marcus	Thuram	LM	France	24	88	192	62
50560323		Dmitriy	Barinov	CDM	Russia	24	72	179	100765
50561272	Sergi Guardiola	Sergio	Guardiola Navarro	ST	Spain	30	77	187	462
50564527		Ryota	Nagaki	RB	Japan	33	72	173	101147
50567383		Ethan	Ampadu	CB	Wales	20	68	183	5
50573988		Augustine	Mulenga	ST	Zambia	31	75	176	110930
67301314		Andy	Cook	ST	England	30	72	185	1803
67304291		Jayden	Stockley	ST	England	27	79	188	143
67313747		Brice	Samba	GK	Congo	27	79	186	210
67323071		Felipe	Pardo	RM	Colombia	30	83	178	1882
67333085		Joachim	Andersen	CB	Denmark	25	90	190	1837
67343562		Chanathip	Songkrasin	LF	Thailand	27	56	158	112444
84078918		Ezequiel	Schelotto	RB	Italy	32	77	187	192
163492		Nicolas	Lombaerts	CB	Belgium	36	79	187	682
164994		Jakub	Błaszczykowski	RM	Poland	35	77	176	175
166074	Bebé	Tiago Manuel	Dias Correia	LM	Portugal	31	83	190	467
169638		Charlie	Daniels	LB	England	34	75	178	1943
171830		Nicolás	Spolli	CB	Argentina	38	90	193	110556
172553		Jonas	Lössl	GK	Denmark	32	88	195	1939
173370		Benny	Feilhaber	CM	United States	36	74	175	112996
174859	Fran Rico	Francisco	Rico Castro	CDM	Spain	34	68	178	110832
176553		Simone	Missiroli	CM	Italy	35	77	191	112791
177525		Nabil	Dirar	RM	Morocco	35	79	187	326
178051		Lucas	Deaux	CDM	France	32	82	188	62
180359	Luisinho	Luis Carlos	Correia Pinto	LB	Portugal	36	67	171	110839
67298297		Benjamin	Hübner	CB	Germany	32	86	193	10029
67316812		Bertrand	Traoré	RM	Burkina Faso	25	73	181	66
67326930		Mbwana Ally	Samatta	ST	Tanzania	28	80	183	673
67335618		Ismaël	Bennacer	CM	Algeria	23	64	173	1746
84070706		Nicolás	Sánchez	CB	Argentina	35	82	187	1032
84095969		Raphaël	Guerreiro	LM	Portugal	27	71	170	22
150418		Mario	Gómez	ST	Germany	36	89	189	36
184120	Bruno	Bruno	Soriano Llido	CM	Spain	37	73	184	483
215316		Gerónimo	Rulli	GK	Argentina	29	84	189	457
50476077		Oscar	Wendt	LB	Sweden	35	82	181	23
50490676		Matías	Silvestre	CB	Italy	36	84	185	1746
50496642		Jakub	Błaszczykowski	RM	Poland	35	77	176	1873
50502018		Jonathan	dos Santos	CM	Mexico	31	73	172	697
50505021		Sergio	Romero	GK	Argentina	34	87	192	11
50512919		Bořek	Dočkal	CAM	Czech Republic	32	72	182	112134
50513860		Anthony	Modeste	ST	France	33	84	187	31
50516843		Odion	Ighalo	ST	Nigeria	32	75	183	111769
50519383		Alan	Dzagoev	CM	Russia	31	75	179	315
50520590		Victor	Wanyama	CDM	Kenya	30	87	184	18
50521804	Rubén Pérez	Rubén Salvador	Pérez del Mármol	CM	Spain	32	73	178	100888
50523213		Yūya	Ōsako	CAM	Japan	31	71	182	38
50526605		Phil	Jones	CB	England	29	71	185	11
50529461		Jonas	Martin	CDM	France	31	76	184	76
50531041		Nicolas	Pallois	CB	France	33	89	189	71
50531758		Marco	Bizot	GK	Holland	30	85	194	1906
50533510		Marcos	Rojo	CB	Argentina	31	80	187	11
50535536	Eric Botteghin	Eric Fernando	Botteghin	CB	Brazil	33	89	190	246
50539701		Dimitrios	Pelkas	CAM	Greece	27	73	177	393
50541911		Michael	Duffy	LM	Northern Ireland	27	75	179	837
50542889	Rubén Peña	Rubén	Peña Jiménez	RB	Spain	30	65	170	467
50544274		Davie	Selke	ST	Germany	26	82	192	166
50546666		Brahian	Alemán	CAM	Uruguay	31	79	176	112096
50551103		Jonathan	Calleri	ST	Argentina	27	77	181	463
50555764	Dyego Sousa	Dyego Wilverson	Ferreira Sousa	ST	Brazil	31	83	190	1896
50557307		Guido	Rodríguez	CDM	Argentina	26	80	185	1879
50563281		Issa	Diop	CB	France	24	92	194	19
50566425		Zack	Steffen	GK	United States	26	84	191	687
67159406		Jermain	Defoe	ST	England	38	65	171	86
150590		Christophe	Jallet	RB	France	37	70	178	72
155871		Bartosz	Białkowski	GK	Poland	34	86	193	94
158438	Gelson Fernandes	Gelson	Tavares Fernandes	CDM	Switzerland	34	70	179	1824
158810		Gökhan	İnler	CDM	Switzerland	37	80	183	101014
161468		Pablo	Guiñazú	CDM	Argentina	42	68	174	112670
163186		Guillaume	Gillet	CDM	Belgium	37	79	186	64
50539987		Oumar	Niasse	ST	Senegal	31	82	182	1961
50542070		Krzysztof	Kamiński	GK	Poland	30	82	191	101144
50544762		Diego	Rolán	ST	Uruguay	28	70	178	463
50548397	Carlos Mané	Carlos Manuel	Cardoso Mané	RW	Portugal	27	67	173	1831
50548925	Ángel Galván	Ángel Jesús	Galván Rivero	GK	Spain	28	76	190	260
50551360		Sebastián	Cristóforo	CDM	Uruguay	27	68	175	1860
50552792	Alain Oyarzun	Alain	Oyarzun Aguilar	LM	Spain	27	71	178	477
50554115	Ivi	Iván	López Álvarez	LM	Spain	27	74	174	459
50556222		Orbelín	Pineda	CM	Mexico	25	64	169	1878
50559593		Stuart	Findlay	CB	Scotland	25	82	191	82
50560314		Brandley	Kuwas	RW	Holland	28	77	181	100634
50561096		Florian	Ayé	ST	France	24	75	184	1815
50563597		Saman	Ghoddos	ST	Iran	27	79	177	1816
50566260		Jonathan	Ikoné	CAM	France	23	67	175	65
50569204		Christian	Luyindama	CB	Congo DR	27	91	191	325
67282234		Benny	Feilhaber	CM	United States	36	74	175	696
67302884	Pelé	Judilson Mamadu	Tuncara Gomes	CM	Guinea-Bissau	29	77	182	14
67313020		Sékou	Sanogo	CDM	Côte d'Ivoire	32	81	182	607
67315170		Jordan	Ferri	CM	France	29	74	172	224
67323486		Jeremy	Toljan	RB	Germany	26	74	182	78
67329357		Antonio	Barreca	LB	Italy	26	70	180	13
67338906		Youssef	Aït Bennasser	CM	Morocco	25	75	184	1819
67353117		Uroš	Račić	CDM	Serbia	23	81	193	260
100901293		Uriel	Antuna	RW	Mexico	23	59	174	697
164959		Stéphane	M'Bia	CDM	Cameroon	35	82	189	1809
165735		Brad	Jones	GK	Australia	39	87	193	112139
170084		Wayne	Hennessey	GK	Wales	34	90	198	1799
172113		Matías	Fritzler	CDM	Argentina	34	73	179	110406
173146		Luca	Cigarini	CM	Italy	35	72	175	1842
175314		Kevin	McDonald	CDM	Scotland	32	95	192	144
176993	Bojan	Bojan	Krkić Pérez	CAM	Spain	30	65	170	1806
177578		Sebastian	Prödl	CB	Austria	34	97	196	1795
179884	Nuno Pinto	Nuno Miguel	Sousa Pinto	LB	Portugal	35	65	173	665
182001	Titi	Cristian	Chagas Tarouco	CB	Brazil	33	83	188	101026
183606		Slobodan	Rajković	CB	Serbia	32	88	191	1843
184037		Martin	Kelly	CB	England	31	77	191	1799
186456		Jan-Arie	van der Heijden	CB	Holland	33	76	186	246
187043		Stefan	Johansen	CM	Norway	30	78	182	144
187421		Jorge	Hernández	CDM	Mexico	32	78	170	110147
188876		Mirko	Valdifiori	CDM	Italy	35	71	185	112791
189211	Saúl Berjón	Saúl	Berjón Pérez	LM	Spain	35	85	178	110827
189338		Jonathan	Urretaviscaya	RW	Uruguay	31	66	172	1032
189446		Junior	Stanislas	RM	England	31	76	183	1943
190120		Karl-Johan	Johnsson	GK	Sweden	31	84	187	62
190520		Tony	Jantschke	RB	Germany	31	76	177	23
190577		Sebastián	Blanco	LM	Argentina	33	64	168	111140
190931		Ervin	Zukanović	CB	Bosnia and Herzegovina	34	85	188	110556
192041		Néstor	Araújo	CB	Mexico	29	87	188	450
67302340		Rémy	Cabella	CAM	France	31	71	171	1819
67310383		Jordan	Veretout	CM	France	28	67	176	110374
67326563		Islam	Slimani	ST	Algeria	33	83	188	69
67336098		Lucas	Tousart	CDM	France	24	83	185	66
84070149		Sandro	Wagner	ST	Germany	33	92	194	111774
84092651		Marcus	Maddison	CAM	England	27	71	180	1938
84117018		Franck Yannick	Kessié	CM	Côte d'Ivoire	24	76	183	47
144622	Raffael	Raffael Caetano	de Araújo	CF	Brazil	36	69	174	23
177326		Mathieu	Valbuena	LW	France	36	63	167	326
189560	Iborra	Vicente	Iborra de la Fuente	CDM	Spain	33	91	190	95
50332416	Felipe	Felipe	Dal Bello	CB	Brazil	37	75	188	112791
50479430		Igor	Denisov	CDM	Russia	37	70	176	100765
50494949		Jonathan	Orozco	GK	Mexico	35	79	184	110144
50500862		Scott	Sinclair	CF	England	32	70	178	78
50504073		Souleymane	Bamba	CB	Côte d'Ivoire	36	86	190	1961
50507543		Vadis	Odjidja-Ofoe	CM	Belgium	32	79	183	674
50512966		Albin	Ekdal	CM	Sweden	32	75	186	1837
50515075		Fabian	Delph	LB	England	31	78	174	10
50518296		Tamás	Kádár	LB	Hungary	31	79	188	101047
50520184		Sofiane	Hanni	LM	Algeria	30	72	178	100767
50521959		Lyle	Taylor	ST	Montserrat	31	79	188	89
50522426		Jeroen	Zoet	GK	Holland	30	88	189	247
50527316	Joel Robles	Joel	Robles Blázquez	GK	Spain	31	90	195	449
50530432		Alex	Oxlade-Chamberlain	CM	England	27	70	175	9
50531563		Lewis	Dunk	CB	England	29	88	192	1808
50532325	Pedro Mendes	Pedro Filipe	Teodósio Mendes	CB	Portugal	30	78	186	70
50533983		Eric	Dier	CDM	England	27	90	188	18
50535628		Konstantinos	Fortounis	CAM	Greece	28	70	183	280
50539510		Matthias	Ginter	CB	Germany	27	83	188	23
50541629		Yassine	Bounou	GK	Morocco	30	78	192	110062
50543029		Sofiane	Boufal	LM	Morocco	27	60	170	450
50545745		Benjamin	Bourigeaud	LM	France	27	68	178	74
50547364		Aleksandar	Mitrović	ST	Serbia	26	90	187	144
50551229		Samuel	Gigot	CB	France	27	83	187	100767
50554709		Franco	Cervi	LW	Argentina	27	62	165	234
50559950	Pedraza	Alfonso	Pedraza Sag	LWB	Spain	25	73	184	483
50564510		Shoya	Nakajima	LW	Japan	26	64	164	10031
50567461		Răzvan	Marin	CM	Romania	25	70	174	232
67270995	Llorente	Fernando Javier	Llorente Torres	ST	Spain	36	92	191	18
67291989		Troy	Deeney	ST	England	33	90	183	1795
50546139		Luis	Quiñones	LM	Colombia	30	65	178	1970
50548426	Rúben Semedo	Rúben Afonso	Borges Semedo	CB	Portugal	27	84	189	744
50550119	Kim Min Woo	Min Woo	Kim	LB	Korea Republic	31	69	172	2055
50553093	Wu Lei	Lei	Wu	ST	China PR	29	66	174	452
50554235		Franco	Escobar	RWB	Argentina	26	75	182	112885
50557863	Sabin Merino	Sabin	Merino Zuloaga	LW	Spain	29	75	187	100888
50560283	Borja Mayoral	Borja	Mayoral Moya	ST	Spain	24	74	182	1853
50561165	Toni Villa	Antonio	Villa Suárez	LM	Spain	26	63	171	462
50564317		Sarpreet	Singh	CAM	New Zealand	22	65	172	111766
50566781		Mattia	Finotto	ST	Italy	28	72	183	111993
50572743		Nikola	Vlašić	RM	Croatia	23	72	178	315
67299972		Sean	McConville	LM	England	32	74	180	110313
67310951		Johannes	Geis	CDM	Germany	27	81	181	31
67320720		Kevin	Akpoguma	CB	Germany	26	85	192	485
67328322		David	Wheeler	ST	England	30	76	180	1798
67331321		Bernard	Mensah	CAM	Ghana	26	65	180	240
67342124		Alexis	Vega	ST	Mexico	23	77	173	1880
84067351		Bořek	Dočkal	CAM	Czech Republic	32	72	182	267
164491		Dennis	Aogo	CDM	Germany	34	83	185	36
165769	Cássio	Cássio	Albuquerque Anjos	GK	Brazil	40	79	186	112393
168621	Zeca	José Carlos	Gonçalves Rodrigues	CM	Greece	32	67	182	819
170597		Tim	Krul	GK	Holland	33	74	188	1792
171896		Hugo	Ayala	CB	Mexico	34	81	183	1970
172939		Keiren	Westwood	GK	Republic of Ireland	36	86	187	1807
174549		Matías	Fernández	CM	Chile	35	72	178	101121
175847	Baiano	Wanderson	Souza Carneiro	RB	Brazil	34	69	178	113142
176794		Ola	Toivonen	CAM	Sweden	35	78	192	1809
177569		Jonathan	De Guzmán	CM	Holland	33	74	174	1824
178284		Lee	Nguyen	CAM	United States	34	68	173	112996
181573		Odil	Akhmedov	CM	Uzbekistan	33	75	180	112540
183249		Raúl	Bobadilla	ST	Paraguay	34	88	181	111019
183870		Anthony	Mounier	RW	France	33	65	174	1884
184873		Ismaël	Traoré	CB	Côte d'Ivoire	34	87	184	1530
186783		Albert	Adomah	LM	Ghana	33	74	182	2
187084		Mame	Diouf	ST	Senegal	33	79	185	1806
187800		Mauricio	Isla	RB	Chile	33	75	176	326
188556		Mohamed	Diamé	CM	Senegal	34	86	184	13
189099		Jonathan	Kodjia	ST	Côte d'Ivoire	31	77	189	2
189234		Marcel	Risse	RM	Germany	31	75	183	31
189357		Cristopher	Toselli	GK	Chile	33	75	183	112584
189709	Alcalá	Pedro	Alcalá Guirado	CB	Spain	32	93	196	110062
190209		Johannes	Hopf	GK	Sweden	34	94	194	101007
190576		Matías	Caruzzo	CB	Argentina	36	80	185	110580
190782	Sandro	Sandro	R. G. Cordeiro	CDM	Brazil	32	75	187	110556
191123		Deni	Alar	ST	Austria	31	78	185	254
191725		Pedro	Morales	CAM	Chile	36	77	180	112534
192202	Bruno César	Bruno César	Zanaki	LM	Brazil	32	75	177	237
192476	Fontàs	Andreu	Fontàs Prat	CB	Spain	31	72	181	696
192725		Maxime	Le Marchand	LB	France	31	77	185	144
193062		Marvin	Zeegelaar	LB	Holland	30	82	186	1795
193692	Fábio Espinho	Fábio Ricardo	Gomes Fonseca	CAM	Portugal	35	64	171	1898
194138		Andre	Gray	ST	England	30	78	180	1795
194665		Stefan	Ilsanker	CDM	Austria	32	86	189	112172
195033		Mathew	Leckie	RM	Australia	30	82	181	166
67309505		Yevhen	Konoplyanka	LM	Ukraine	31	78	178	34
67312469		Pavel	Kadeřábek	RWB	Czech Republic	29	81	182	10029
67330524		Victor	Lindelöf	CB	Sweden	27	80	187	11
84024386	Angulo	Igor	Angulo Albóniga	ST	Spain	37	77	181	420
84081700		Roy	Krishna	ST	Fiji	33	70	170	111766
84113135	Gelson Martins	Gelson Dany	Batalha Martins	RM	Portugal	26	72	173	69
100887442	Jesús Imaz	Jesús	Imaz Ballesté	ST	Spain	30	70	174	110745
164468		Gary	Cahill	CB	England	35	86	193	5
177458		Sven	Bender	CB	Germany	32	80	186	32
204024		Christoph	Kramer	CDM	Germany	30	76	191	23
50471941		Antonio	Mirante	GK	Italy	38	79	193	52
50484556		Ashley	Young	LB	England	36	65	175	11
50494017		Vedad	Ibišević	ST	Bosnia and Herzegovina	37	82	188	166
50500829		Kenneth	Vermeer	GK	Holland	35	80	183	246
50503523		Caner	Erkin	LB	Turkey	32	72	181	327
50506902		Felipe	Caicedo	ST	Ecuador	32	82	183	46
50509292	Kiko Casilla	Francisco	Casilla Cortés	GK	Spain	34	86	190	243
50514789	Oier	Oier	Olazábal Paredes	GK	Spain	31	91	190	1853
50518217		Sven	Ulreich	GK	Germany	33	84	192	21
50521223	Muniain	Iker	Muniain Goñi	CAM	Spain	28	63	169	448
50522104		Nathaniel	Clyne	RB	England	30	67	175	9
50524356	Carlos Eduardo	Carlos Eduardo	de Oliveira Alves	CAM	Brazil	31	74	184	605
50527507		Danny	Ings	ST	England	29	73	178	17
50530016	Tomás Pina	Tomás	Pina Isla	CM	Spain	33	75	185	463
50531315		Ramiro	Funes Mori	CB	Argentina	30	79	186	483
50532697		Lorenzo	Tonelli	CB	Italy	31	78	183	1837
50534437		Alexander	Schwolow	GK	Germany	29	84	189	25
50536467		Emiliano	Sala	ST	Argentina	30	83	187	71
50540183		Alfred	Duncan	CM	Ghana	28	78	178	111974
50542054		Piotr	Zieliński	CM	Poland	27	75	180	48
50543555		Jérôme	Gondorf	LM	Germany	33	78	176	25
50545695		Matheus	Uribe	CM	Colombia	30	71	182	1879
50548000		Marcelo	Brozović	CDM	Croatia	28	68	181	44
50553676		Julian	Weigl	CDM	Germany	25	72	186	22
50557007		Constantin	Budescu	CF	Romania	32	85	184	111674
50560909		Denis	Zakaria	CM	Switzerland	24	80	191	23
50565801	Carlos Soler	Carlos	Soler Barragán	RM	Spain	24	76	180	461
50567001		Ismaïla	Sarr	RM	Senegal	23	76	185	74
67282773		Kevin-Prince	Boateng	CM	Ghana	34	86	186	241
183068		Claudio	Beauvue	ST	France	33	66	174	450
183346		Fabian	Frei	CDM	Switzerland	32	80	183	896
183966		Facundo	Roncaglia	CB	Argentina	34	76	179	450
186650		Matías	Alustiza	CAM	Argentina	37	68	165	1881
187366		Denis	Glushakov	CDM	Russia	34	80	181	100767
188182		Leon	Balogun	CB	Nigeria	33	88	190	1808
189053		Francesco	Caputo	ST	Italy	34	74	181	1746
189207		Jimmy	Durmaz	LM	Sweden	32	69	180	1809
189280		Ashley	Westwood	CM	England	31	73	174	1796
189757		Aleksandar	Prijović	ST	Serbia	31	88	191	393
190223	Balenziaga	Mikel	Balenziaga	LB	Spain	33	76	177	448
190558		Ike	Opara	CB	United States	32	82	188	696
190607		Darwin	Quintero	CF	Colombia	33	66	166	111138
190885		Adam	Smith	RB	England	30	78	180	1943
191648		Maya	Yoshida	CB	Japan	32	78	189	17
192122	Bóveda	Eneko	Bóveda Altube	RB	Spain	32	77	180	242
192333		Lamine	Sané	CB	Senegal	34	77	191	112606
192838		Ezequiel	Schelotto	RB	Italy	32	77	187	1808
193116		Maxime	Gonalons	CDM	France	32	76	187	481
193844	Portillo	Francisco	Portillo Soler	RM	Spain	31	60	169	1860
194174	Keko	Sergio	Gontán Gallardo	RM	Spain	29	68	172	462
194947		Jagoš	Vuković	CB	Serbia	33	82	194	280
195088		Miloš	Ninković	CAM	Serbia	36	76	180	111400
195361	Javi López	Javier	López Rodríguez	RB	Spain	35	76	180	452
198113		Marco	Höger	CM	Germany	31	83	182	31
198331		Matěj	Vydra	CAM	Czech Republic	29	71	175	1796
206651	Roberto Torres	Roberto	Torres Morales	LM	Spain	32	72	178	479
207725		Mike	van der Hoorn	CB	Holland	28	83	190	1960
208277		Olivier	Boumal	RM	Cameroon	31	67	183	101151
209301		Maxime	Poundjé	LB	France	28	74	180	59
210112		Cristian	Benavente	CAM	Peru	27	73	173	670
210434		Fouad	Chafik	RB	Morocco	34	72	183	110569
211489		Jonathan	Gómez	CAM	Argentina	31	71	171	113057
211818		Kevin	Möhwald	CM	Germany	28	77	183	38
212197		Daniel	Heuer Fernandes	GK	Portugal	28	81	188	110502
213030		Jordan	Marié	CM	France	29	73	177	110569
213433		Fernando	Tobio	CB	Argentina	31	85	185	1882
213581		Martín	Nervo	CB	Argentina	30	84	183	110144
214169		William	Tesillo	CB	Colombia	31	78	184	110781
214409		Ezequiel	Videla	CM	Argentina	33	73	175	111707
214949		Harrison	Manzala	LM	Congo DR	27	71	177	1530
215071		Milton	Casco	LB	Argentina	33	69	170	1876
215165		Ciro	Rius	RM	Argentina	32	73	171	111710
215565		Matt	Miazga	CB	United States	26	84	193	71
216692		Sebastián	Torrico	GK	Argentina	41	84	183	1013
217813		Gibrán	Lajud	GK	Mexico	27	80	180	111678
3665		Benjamin	Nivet	CAM	France	44	75	178	294
52498		Matthias	Lehmann	CDM	Germany	38	75	179	31
120312		Michael	Dawson	CB	England	37	76	188	14
138436		Jonathan	Walters	ST	Republic of Ireland	37	79	183	1796
142705		Mariano	González	LM	Argentina	40	80	175	110406
146947	Vesga	Mikel	Vesga Arruti	CDM	Spain	28	84	191	100888
149064		Cristian	Molinaro	LB	Italy	38	82	182	111657
152718	Ricardo	Ricardo	Vaz Tê	RM	Portugal	34	80	188	111779
156227	Carlitos	Carlos Alberto	Alves Garcia	LM	Portugal	38	73	176	110770
162220		Sinan	Bolat	GK	Turkey	32	83	186	230
67293054		Romain	Thomas	CB	France	33	84	193	1530
67297807		Kevin	Trapp	GK	Germany	31	86	189	73
67302154		Martin	Braithwaite	ST	Denmark	30	73	180	100888
67310241		Jeison	Murillo	CB	Colombia	29	78	182	241
67316571	Marçal	Fernando	Marçal de Oliveira	LB	Brazil	32	74	178	66
67317479		Christopher	Jullien	CB	France	28	88	196	78
67321131	Ivan Cavaleiro	Ivan Ricardo	Cavaleiro	LW	Portugal	27	80	175	144
67325507		Léo	Dubois	RB	France	26	73	178	66
67352494		Jonathan	David	CAM	Canada	21	77	177	674
84091337		Naïm	Sliti	CAM	Tunisia	29	76	173	110569
84106017		Nils	Körber	GK	Germany	24	84	186	487
84118088	Lato	Antonio	Latorre Grueso	LB	Spain	23	64	171	461
167976689		Michy	Batshuayi	ST	Belgium	27	78	185	5
110677	Moyá	Miguel Ángel	Moyá Rumbo	GK	Spain	37	83	188	457
164835		Łukasz	Fabiański	GK	Poland	36	83	190	19
176104		Valter	Birsa	CAM	Slovenia	35	81	184	192
177604	Nacho Monreal	Ignacio	Monreal Eraso	LB	Spain	35	72	179	1
178424	Antunes	Vitorino	Pacheco Antunes	LB	Portugal	34	69	175	1860
188005	Camacho	Ignacio	Camacho Barnola	CDM	Spain	31	75	183	175
189354	Susaeta	Markel	Susaeta Laskurain	RW	Spain	33	68	179	448
190544		Adem	Ljajić	CAM	Serbia	29	74	182	54
192991		Cenk	Tosun	ST	Turkey	30	78	183	7
199110		Luis	Muriel	ST	Colombia	30	79	179	481
201144		Milan	Badelj	CDM	Croatia	32	76	186	46
203841		Nick	Pope	GK	England	29	76	200	1796
205525	Bernard	Bernard Anício	Caldeira Duarte	LM	Brazil	28	60	164	7
224069		Karl	Toko-Ekambi	ST	Cameroon	28	74	185	483
239207		Maximiliano	Gómez	ST	Uruguay	24	80	186	450
50505074		Simon	Mignolet	GK	Belgium	33	87	193	9
50508592		Marouane	Fellaini	CM	Belgium	33	85	194	11
50512551		Jay	O'Shea	CM	Republic of Ireland	32	70	183	1945
50516105		Ricky	van Wolfswinkel	ST	Holland	32	70	185	896
50517944		Roman	Neustädter	CB	Russia	33	81	188	326
50520866		Ryan	Jack	CDM	Scotland	29	72	182	86
50521891		Marwin	Hitz	GK	Switzerland	33	89	194	22
50529679	Sérgio Oliveira	Sérgio Miguel	Relvas de Oliveira	CM	Portugal	29	72	181	236
50532111		Tim	Melia	GK	United States	35	86	185	696
50536003		Paul	Dummett	CB	Wales	29	82	183	13
50540268	Omar Mascarell	Omar	Mascarell González	CDM	Spain	28	76	181	34
50546979		Leonardo	Jara	RB	Argentina	30	80	185	688
50548041		Youri	Tielemans	CM	Belgium	24	72	176	69
50553282		Luciano	Acosta	CAM	Argentina	27	61	161	688
50557809	Marcos Llorente	Marcos	Llorente Moreno	CDM	Spain	26	73	184	243
50562625		Miguel	Almirón	CAM	Paraguay	27	63	175	13
67279661		Nuri	Şahin	CDM	Turkey	32	73	180	22
67286508	Kiko Casilla	Francisco	Casilla Cortés	GK	Spain	34	86	190	8
67299320		Nathaniel	Clyne	RB	England	30	67	175	1943
67334527		Alexandr	Golovin	CM	Russia	25	69	180	69
100879081		Keita	Baldé	RM	Senegal	26	80	181	69
50556957		Nadiem	Amiri	CAM	Germany	24	73	180	10029
50562743		Nejc	Skubic	RB	Slovenia	32	75	178	101033
50563745		Amine	Harit	RW	Morocco	24	67	180	34
50567492		Edson	Álvarez	CDM	Mexico	23	73	185	1879
50570392		Weston	McKennie	CM	United States	22	84	185	34
67286346		Mathieu	Coutadeur	CM	France	35	69	170	614
67298036	Fidel	Fidel	Chaves de la Torre	RM	Spain	31	73	180	472
67301819		Mateusz	Klich	CM	Poland	31	82	183	8
67308645		Romain	Métanire	RB	France	31	74	178	111138
192238	José Cañas	José Alberto	Cañas Ruiz-Herrera	CDM	Spain	34	69	178	393
192537		Maxime	Lestienne	LM	Belgium	29	63	176	232
192575		Emmanuel	Badu	CM	Ghana	30	70	173	55
192930		Alan	Pulido	ST	Mexico	30	76	177	1880
193425		Hanno	Behrens	CM	Germany	31	82	188	171
193897		Jano	Ananidze	CAM	Georgia	28	64	171	100767
194203		Nenad	Tomović	CB	Serbia	33	79	184	192
194996	Borja Bastón	Borja	González Tomás	ST	Spain	28	82	191	463
195096	Fransérgio	Fransérgio	Rodrigues Barbosa	CM	Brazil	30	82	187	1896
198006		Jens	Toornstra	CAM	Holland	32	74	177	246
198150	Guerrero	Miguel Ángel	Guerrero Martín	ST	Spain	31	77	182	280
214136		Francisco	Meza	CB	Colombia	29	73	184	1970
214378		David	Silva	CM	Colombia	34	74	175	101105
214615		Jefferson	Duque	ST	Colombia	34	79	183	101114
215064		Julio	Furch	ST	Argentina	32	88	187	110144
215108		Julio	Buffarini	RB	Argentina	32	66	170	1877
215391		Ibrahima	Seck	CDM	Senegal	31	88	192	673
216334		Pieter	Gerkens	CAM	Belgium	26	67	179	229
216763	Dráusio	Dráusio Luis	Salia Gil	CB	Brazil	29	86	188	1893
218341		Josip	Elez	CB	Croatia	27	87	189	485
49045		Kris	Boyd	ST	Scotland	37	83	185	82
101880		Rob	Green	GK	England	41	93	191	5
137410		Daniele	Gastaldello	CB	Italy	38	77	185	190
138782		Darren	Fletcher	CM	Scotland	37	83	183	1806
146059	David García	David	García Santana	CB	Spain	39	82	184	472
148496		Arkadiusz	Malarz	GK	Poland	41	86	189	1871
150594		Jérémy	Perbet	ST	France	36	84	184	670
155533		Leon	Clarke	ST	England	36	89	188	1794
158790		Luis Gonzalo	Bustamante	CAM	Argentina	35	67	170	112531
162893		Johan	Djourou	CB	Switzerland	34	87	191	112791
163600		John	Ruddy	GK	England	34	97	193	110
164853		Adam	Federici	GK	Australia	36	90	188	1806
167753		Adem	Büyük	LM	Turkey	33	78	177	113259
168883		Taiseer	Al Jassam	CM	Saudi Arabia	37	69	169	112408
171774	Luso	Luis Eduardo	Delgado Pacheco	CDM	Spain	36	75	183	110066
67295054		Patrick	van Aanholt	LB	Holland	30	67	176	1799
67298311		Artur	Sobiech	ST	Poland	31	81	185	111091
67305665	Mexer	Edson Andre	Sitoe	CB	Mozambique	32	79	188	74
67316421		Robin	Olsen	GK	Sweden	31	88	198	52
67319794	Carles Gil	Carles	Gil Pareja	CM	Spain	28	65	170	691
67333980		Alex	Meret	GK	Italy	24	83	190	48
84069649		Eric Maxim	Choupo-Moting	ST	Cameroon	32	91	191	73
84080808		Ishak	Belfodil	ST	Algeria	29	86	191	10029
84098176		Vincenzo	Grifo	LM	Italy	28	75	180	25
84120316		Patrik	Schick	ST	Czech Republic	25	73	186	52
100884310	Carlos Fernández	Carlos	Fernández Luna	ST	Spain	25	72	186	242
168005891		Alexander	Isak	ST	Sweden	21	74	190	457
139997		Darijo	Srna	RB	Croatia	39	72	178	1842
146748	Diego López	Diego	López Rodríguez	GK	Spain	39	89	196	452
163264		Tom	Heaton	GK	England	35	92	187	1796
170815		Steven	Defour	CM	Belgium	33	72	175	1796
176915		Augusto	Fernández	CM	Argentina	35	73	177	112537
177723	Fabricio	Fabricio	Agosto Ramírez	GK	Spain	33	67	185	144
186547		Mateo	Musacchio	CB	Argentina	30	73	180	47
188829		Nicolas	Nkoulou	CB	Cameroon	31	77	184	54
190264	Iago Falqué	Iago	Falqué Silva	RW	Spain	31	69	174	54
192789	Mario Gaspar	Mario Gaspar	Pérez Martínez	RB	Spain	30	74	182	483
194879	Sergi Enrich	Sergi	Enrich Ametller	ST	Spain	31	77	181	467
200315	Cristian Tello	Cristian	Tello Herrera	LM	Spain	29	65	178	449
204082		John	Brooks	CB	United States	28	78	193	175
205705		Zouhair	Feddal	CB	Morocco	31	83	191	449
220477		Mattia	Caldara	CB	Italy	27	80	187	47
228229		Fabián	Balbuena	CB	Paraguay	29	85	188	19
50444013		Renaud	Cohade	CM	France	36	75	181	68
50507752		Valter	Birsa	CAM	Slovenia	35	81	184	1842
50511199		Ola	Kamara	ST	Norway	31	81	184	697
50514835		Valentin	Stocker	RM	Switzerland	32	73	179	896
50517767		Miroslav	Stoch	CAM	Slovakia	31	67	169	266
50520036		Ryad	Boudebouz	CAM	Algeria	31	74	177	450
50520919		Francis	Coquelin	CDM	France	30	74	177	461
50525232		Guido	Burgstaller	ST	Austria	32	80	187	34
50530952	Danilo	Danilo Luiz	da Silva	RB	Brazil	30	78	184	10
50532767	Ismaily	Ismaily	Gonçalves dos S.	LB	Brazil	31	82	177	101059
50535150		Bobby	Reid	CAM	England	28	68	170	1961
50536840	Denis Suárez	Denis	Suárez Fernández	CM	Spain	27	69	176	241
50545036		Flavien	Tait	LM	France	28	70	175	1530
50549987		Mahmoud	Dahoud	CM	Germany	25	68	178	22
50554526		Tyler	Walker	ST	England	24	63	179	1940
50568945		Yordan	Osorio	CB	Venezuela	27	84	189	1887
67297948		Eloy	Room	GK	Curaçao	32	81	188	247
67330146		Jack	Stacey	RB	England	25	62	178	1923
84119144		Mason	Mount	CM	England	22	64	175	91
50557359		Abdou	Diallo	CB	France	25	79	186	22
50562636		Filip	Krovinović	CAM	Croatia	25	70	177	234
50563393		Landry	Dimata	ST	Belgium	23	83	184	229
50567058		Youssef	En-Nesyri	ST	Morocco	24	78	192	100888
50568338		Michael	Ngadeu-Ngadjui	CB	Cameroon	30	93	190	266
67266165		Ryan	Babel	LM	Holland	34	85	185	144
67287151		Scott	Arfield	LF	Canada	32	80	179	86
67299535		Mike	Frantz	CAM	Germany	34	81	182	25
67306895	Sérgio Oliveira	Sérgio Miguel	Relvas de Oliveira	CM	Portugal	29	72	181	393
67309297		Lukas	Hinterseer	ST	Austria	30	86	192	160
197136		Karim	Ansarifard	ST	Iran	31	80	187	280
198143	Samu Saiz	Samuel	Saiz Alonso	CAM	Spain	30	68	174	8
214369		Andrés	Andrade	LM	Colombia	32	71	177	101114
214606		Sebastián	Pérez	CM	Colombia	28	72	175	1877
215050		Diego	Braghieri	CB	Argentina	34	86	186	101100
215089		Enzo	Kalinski	CM	Argentina	34	71	170	110404
215202		Lucas	Janson	LM	Argentina	26	67	169	111651
215970		Boli	Bolingoli	LB	Belgium	26	73	180	254
217085		Víctor	García	RB	Venezuela	27	71	178	1887
218050		Mohamed	Abarhoun	CB	Morocco	32	75	187	1900
29552		Shunsuke	Nakamura	CAM	Japan	43	71	178	101144
54013		Stewart	Downing	LM	England	37	64	180	12
112244		Jaroslav	Plašil	CM	Czech Republic	39	71	184	59
138247		Kevin	Stuhr-Ellegaard	GK	Denmark	38	93	196	700
143306		Tolga	Zengin	GK	Turkey	37	90	192	327
147579		Vladimir	Gabulov	GK	Russia	37	81	190	231
148684		Ali	Al Habsi	GK	Oman	39	93	193	605
153938	Àngel Rangel	Àngel	Rangel Zaragoza	RB	Spain	38	82	178	15
156683		Samuel	Holmén	CM	Sweden	37	72	178	700
161832	Casadesús	Víctor Manuel	Casadesús Castaño	CAM	Spain	36	79	180	100831
163209		Steven	Naismith	CAM	Scotland	34	72	178	80
164471	Xisco	Francisco	Jiménez Tejada	ST	Spain	35	76	188	479
167599		Rasmus	Elm	CM	Sweden	33	75	184	1439
168650		Zdravko	Kuzmanović	CM	Serbia	33	80	186	896
170231		Marvin	Compper	CB	Germany	36	80	185	78
172520		Pierre	Kanstrup	CB	Denmark	32	81	188	271
173162		Fabio	Ceravolo	ST	Italy	34	73	180	50
176346	Choi Chul Soon	Chul Soon	Choi	RB	Korea Republic	34	70	175	1477
176942		Mikael	Lustig	RB	Sweden	34	78	189	78
177571		Timothy	Derijck	CB	Belgium	34	81	186	674
178042		Andrea	Costa	CB	Italy	35	73	182	112026
181349		Alexander	Gerndt	ST	Sweden	35	80	184	10032
182343	Hao Junmin	Junmin	Hao	CM	China PR	34	74	181	111724
183414		Davide	Di Gennaro	CM	Italy	33	72	180	110373
183671		Emanuele	Terranova	CB	Italy	34	86	185	111434
184154		Nill	De Pauw	CAM	Belgium	31	79	181	15005
184518		Ömer	Şişmanoğlu	ST	Germany	32	83	186	113259
67297632	Serey Dié	Sereso Geoffroy	Gonzaroua Dié	CDM	Côte d'Ivoire	36	77	179	896
67300551	Maicon	Maicon	Pereira Roque	CB	Brazil	32	89	191	112139
67310755		Dario	Tadić	ST	Austria	31	77	177	2017
67315089		Denis	Cheryshev	LM	Russia	30	74	179	461
67317005	Gabriel	Gabriel	Appelt Pires	CDM	Brazil	27	82	187	234
67324454	Ayoze Pérez	Ayoze	Pérez Gutiérrez	RW	Spain	28	72	178	13
67330503	Mariano	Mariano	Díaz Mejía	ST	Dominican Republic	28	75	179	243
67344753		Cengiz	Ünder	RM	Turkey	24	66	173	52
84078802		Romain	Hamouma	LM	France	34	76	178	1819
84096395	De Tomás	Raúl	de Tomás Gómez	ST	Spain	26	72	180	480
84106333	Munir	Munir	El Haddadi	ST	Spain	25	69	175	481
100871918	Rubén Sobrino	Rubén	Sobrino Pozuelo	ST	Spain	29	73	185	461
117650132		Abdul Rahman	Baba	LB	Ghana	27	70	179	379
108080		Stephan	Lichtsteiner	RB	Switzerland	37	76	182	1
142754		Javier	Mascherano	CDM	Argentina	37	73	174	112978
165109		Ştefan	Radu	CB	Romania	34	79	183	46
177600	Beñat	Beñat	Etxebarria Urkiaga	CM	Spain	34	76	177	448
180216		Séamus	Coleman	RB	Republic of Ireland	32	67	177	7
188388		Ryad	Boudebouz	CAM	Algeria	31	74	177	449
189461		Jack	Wilshere	CM	England	29	68	172	19
192678	Kike García	Enrique	García Martínez	ST	Spain	31	79	186	467
193352		Ricardo	Rodríguez	LB	Switzerland	28	77	180	47
199561	Nolito	Manuel	Agudo Durán	LW	Spain	34	72	175	481
205114		Takashi	Inui	LM	Japan	33	63	169	449
211575	André Gomes	André Filipe	Tavares Gomes	CM	Portugal	28	84	188	7
230977		Miguel	Almirón	CAM	Paraguay	27	63	175	112885
50464388		Jesper	Hansen	GK	Denmark	36	78	188	1516
50506191		Claudio	Bravo	GK	Chile	38	80	184	10
50509570		Kamil	Grosicki	LM	Poland	33	78	180	1952
50515145		Orestis	Karnezis	GK	Greece	36	81	190	48
50517079		Nikola	Kalinić	ST	Croatia	33	80	187	240
50518480		Kwadwo	Asamoah	LB	Ghana	32	75	173	44
50521329	Rafael	Rafael	Pereira da Silva	RB	Brazil	31	78	172	66
50525349		James	Norwood	ST	England	30	73	175	15048
50531031		Timm	Klose	CB	Switzerland	33	87	193	1792
50534754		Leonardo	Bittencourt	LM	Germany	27	62	170	10029
50536762		Takashi	Inui	LM	Japan	33	63	169	463
50544944		Nabil	Bentaleb	CM	Algeria	26	78	187	34
50547440	Jemerson	Jemerson	de Jesus Nascimento	CB	Brazil	28	77	184	69
50548459		Kendall	Waston	CB	Costa Rica	33	88	196	101112
50555941	Rúben Neves	Rúben Diogo	da Silva Neves	CM	Portugal	24	80	180	110
50566422		Konstantinos	Laifis	CB	Cyprus	28	77	186	232
67280552	Fábio Coentrão	Fábio Alexandre	Silva Coentrão	LB	Portugal	33	66	179	243
67329046		Jason	Denayer	CB	Belgium	26	70	184	66
84072636	Dentinho	Bruno	Ferreira Bonfim	ST	Brazil	32	75	176	101059
100896360		Mason	Mount	CM	England	22	64	175	91
50557877		Thilo	Kehrer	CB	Germany	24	76	186	73
50562890		Adam	Ounas	RW	Algeria	24	65	172	48
50566044		Alphonso	Davies	RM	Canada	20	72	180	101112
50567592	Brais Méndez	Brais	Méndez Portela	RM	Spain	24	78	187	450
50572350		Roman	Yaremchuk	ST	Ukraine	25	79	190	674
67297133		Roberto	Gutiérrez	ST	Chile	38	76	178	111328
67308250		Bryan	Linssen	ST	Holland	30	70	170	1909
198581		Óscar	Murillo	CB	Colombia	33	77	184	110147
198658		Fredrik	Midtsjø	CM	Norway	27	70	176	1906
198843	Aday Benítez	Aday	Benítez Caraballo	LB	Spain	33	75	179	110062
199601		Musa	Çağıran	CDM	Turkey	28	82	181	101037
199912		Sonny	Kittel	LW	Germany	28	76	179	111239
200758		Liam	Moore	CB	England	28	86	185	1793
201313		Camillo	Ciano	CAM	Italy	31	73	176	111657
202035		Nicolas	Benezet	CAM	France	30	65	170	62
202151		Konstantinos	Stafylidis	LB	Greece	27	77	178	100409
202408		Aden	Flint	CB	England	32	83	197	12
202882		Thievy	Bifouma	RM	Congo	29	80	180	101007
203624		Ognjen	Vranješ	CB	Bosnia and Herzegovina	31	75	183	229
204043		Emir	Dilaver	CB	Austria	30	82	184	211
204497		Kevin	Stöger	CAM	Austria	27	75	175	110636
204823	Nildo Petrolina	Evanildo	Fernandes Gomes	LW	Brazil	35	61	175	666
205391		Soualiho	Meïté	CDM	France	27	80	187	54
206075		Sam	Johnstone	GK	England	28	85	193	109
206424		Mykola	Morozyuk	RB	Ukraine	33	71	176	101047
207444		Jürgen	Damm	RM	Mexico	28	69	187	1970
207924	Lucas Lima	Lucas Pedro	Alves de Lima	LB	Brazil	29	76	179	71
163156		Richard	Keogh	CB	Republic of Ireland	34	87	188	91
164079	Juninho	Anselmo	Vendrechovski Jr.	CB	Brazil	38	80	181	1970
167524		Jorge	Torres Nilo	LB	Mexico	33	78	180	1970
167931		Rob	Elliot	GK	Republic of Ireland	35	94	190	13
169708		Sam	Hutchinson	CDM	England	32	73	182	1807
172672	Varela	Silvestre	Gonçalves Varela	LM	Portugal	36	79	179	101020
173179	Torrejón	Marc	Torrejón Moya	CB	Spain	35	88	187	1831
176348	Yeom Ki Hun	Ki Hun	Yeom	ST	Korea Republic	38	78	182	983
176901		Hugo	Droguett	CAM	Chile	38	70	172	112534
177934		Sidney	Sam	RM	Germany	33	68	174	160
178297	Canella	Roberto	Canella Suárez	LB	Spain	33	73	179	459
181559		François	Bellugou	CB	France	34	75	188	57
182411	Yu Hanchao	Hanchao	Yu	LM	China PR	34	70	179	111839
183475		Sten Michael	Grytebust	GK	Norway	31	82	185	272
183706		Martyn	Waghorn	ST	England	31	83	178	91
184274		Chris	Basham	CB	England	33	80	190	1794
185427		Ørjan	Nyland	GK	Norway	30	90	192	2
186253		Tomáš	Hubočan	CB	Slovakia	35	70	184	219
186651		Güray	Vural	LM	Turkey	33	65	177	111340
67309393		Nacer	Chadli	LM	Belgium	32	85	187	69
67324829		Carlos	Strandberg	ST	Sweden	25	85	185	705
67342730		Odsonne	Edouard	ST	France	23	83	187	78
84087415		Federico	Santander	ST	Paraguay	30	80	187	189
100868488	Denis Suárez	Denis	Suárez Fernández	CM	Spain	27	69	176	1
53050		Emmanuel	Adebayor	ST	Togo	37	82	192	101014
160741		David	Abraham	CB	Argentina	35	84	189	1824
169706		Jack	Cork	CM	England	32	75	184	1796
179645		Simon	Kjær	CB	Denmark	32	84	189	481
186132		Danny	Drinkwater	CM	England	31	70	177	5
191076		Jóhann Berg	Guðmundsson	RM	Iceland	30	77	179	1796
192679	Escudero	Sergio	Escudero Palomo	LB	Spain	31	72	176	481
199439		Michael	Gregoritsch	CAM	Austria	27	87	193	100409
203757	Zé Luís	José Luís	Mendes Andrade	ST	Cape Verde Islands	30	88	184	100767
207939		Guido	Pizarro	CDM	Argentina	31	74	185	1970
213160		Roman	Zobnin	CDM	Russia	27	75	182	100767
223682	Granell	Àlex	Granell Nogué	CM	Spain	33	70	175	110062
50469325		Michel	Vorm	GK	Holland	37	84	184	18
50512362	Guilherme	Guilherme Alvim	Marinato	GK	Russia	35	95	195	100765
50522653		Ahmed	Elmohamady	RB	Egypt	33	78	182	2
50531588		Juan Ezequiel	Cuevas	CM	Argentina	33	63	161	112584
50537636		Luke	Shaw	LB	England	26	75	181	11
50540098	Andreas Pereira	Andreas Hugo	Hoelgebaum Pereira	RM	Brazil	25	71	178	11
50542527		Aljaž	Struna	CB	Slovenia	31	86	191	698
50552394		Andrija	Živković	LW	Serbia	25	68	169	234
50556809	Vallejo	Jesús	Vallejo Lázaro	CB	Spain	24	79	184	243
143587		Fernando	Belluschi	CAM	Argentina	37	78	173	1013
152912		José	Sand	ST	Argentina	41	79	182	101102
162329		Karim	El Ahmadi	CDM	Morocco	36	71	181	607
167431		Gonzalo	Castro	CM	Germany	34	72	172	36
169588		Jonny	Evans	CB	Northern Ireland	33	77	188	95
172962		Victor	Moses	RW	Nigeria	30	75	177	5
178085	Granero	Esteban	Granero Molina	CM	Spain	34	78	180	452
182495		Martín	Cáceres	CB	Uruguay	34	78	180	46
184252		Lucas	Pratto	ST	Argentina	33	91	187	1876
187924		Clément	Grenier	CAM	France	30	72	186	74
189156	Daniel Carriço	Daniel Filipe	Martins Carriço	CB	Portugal	33	80	180	481
189606		Julian	Baumgartlinger	CDM	Austria	33	85	183	32
192598	Elkeson	Elkeson	de Oliveira Cardoso	ST	Brazil	32	77	180	112540
193198		Nemanja	Gudelj	CDM	Serbia	29	73	187	237
196934		Oğuzhan	Özyakup	CM	Turkey	28	75	180	327
199576	Oriol Romeu	Oriol	Romeu Vidal	CDM	Spain	29	83	183	17
200529		Nacer	Chadli	LM	Belgium	32	85	187	109
203299		André	Carrillo	RM	Peru	30	78	181	605
205431		Niclas	Füllkrug	ST	Germany	28	83	189	485
208104	Matheus	Matheus	Lima Magalhães	GK	Brazil	29	76	187	1896
210333		Alexander	Szymanowski	LM	Argentina	32	65	175	100888
212196		Pione	Sisto	LW	Denmark	26	69	173	450
213732		Alexandr	Selikhov	GK	Russia	27	85	188	100767
216435		Stanislav	Lobotka	CM	Slovakia	26	64	170	450
198504		Josip	Drmić	ST	Switzerland	28	81	183	23
198817		Romain	Amalfitano	CM	France	31	71	175	110569
199487	Gálvez	Alejandro	Gálvez Jimena	CB	Spain	32	79	188	480
199669		Leandro	González Pirez	CB	Argentina	29	80	185	112885
200443		Barry	Douglas	LB	Scotland	31	70	177	8
201073		Nicolas	De Préville	LW	France	30	77	177	59
201389		Cristiano	Biraghi	LB	Italy	28	78	183	110374
202054	Naldo	Edinaldo	Gomes Pereira	CB	Brazil	32	80	188	452
202282		Stuart	Armstrong	CAM	Scotland	29	75	183	17
202445	Rodrigo Ely	Rodrigo	Ely	CB	Brazil	27	83	188	463
203030		Robin	Knoche	CB	Germany	29	77	190	175
203796		Felipe	Gutiérrez	CM	Chile	30	64	170	696
204233		Charly	Musonda	RW	Belgium	24	66	173	5
204757	Toño García	Antonio	García Aranda	LB	Spain	31	69	179	1853
204904		Moritz	Bauer	RB	Austria	29	74	181	1806
205590	Luís Hernández	Luís	Hernández Rodríguez	CB	Spain	32	74	182	573
205989		Calum	Chambers	CB	England	26	66	183	144
206222	Bigas	Pedro	Bigas Rigo	CB	Spain	30	78	181	467
206553		Simon	Falette	CB	France	29	91	184	1824
207894		Tobias	Strobl	CDM	Germany	31	77	188	23
172685	Crespo	José Ángel	Crespo Rincón	CB	Spain	34	75	185	393
175462		Oswaldo	Vizcarrondo	CB	Venezuela	37	85	191	294
176693		Jean-Sylvain	Babin	CB	France	34	89	181	459
177528		Alessandro	Matri	ST	Italy	36	80	183	111974
178029		Özer	Hurmacı	CAM	Turkey	34	70	174	749
178418		Federico	Peluso	LB	Italy	37	82	188	111974
181681		Shaun	Williams	CDM	Republic of Ireland	34	80	185	97
183220		Jan	Morávek	CM	Czech Republic	31	77	180	100409
183540		Barry	Bannan	CM	Scotland	31	61	169	1807
183769		Ali	Çamdalı	CDM	Germany	37	75	186	101037
184337	Go Yo Han	Yo Han	Go	CM	Korea Republic	33	65	170	982
184703		Luis	Montes	CAM	Mexico	35	67	165	110781
186511	René	René	Román Hinojo	GK	Spain	37	79	186	1861
186684	Kiko Olivas	Francisco José	Olivas Alba	CB	Spain	32	83	189	462
187339		Jiloan	Hamad	RM	Sweden	30	72	173	708
188157		Lex	Immers	CM	Holland	35	78	187	650
188499		Manuel	Iori	CM	Italy	39	72	182	111993
188600		Mehdi	Abeid	CDM	Algeria	29	85	178	110569
188696		Franck	Tabanou	LB	France	32	77	178	62
189118	Thiago Cionek	Thiago	Rangel Cionek	CB	Poland	35	80	183	112791
189288		Gabriele	Angella	CB	Italy	32	79	189	55
189342		Carlo	Pinsoglio	GK	Italy	31	85	194	45
189490		Mirko	Boland	CM	Germany	34	70	174	111393
67321342		Gyasi	Zardes	ST	United States	29	79	188	687
84063024		Marouane	Fellaini	CM	Belgium	33	85	194	111724
84093720		Mohamed	Yattara	RM	Guinea	28	79	185	57
121933		René	Adler	GK	Germany	36	85	191	169
159065		Ezequiel	Lavezzi	ST	Argentina	36	75	173	112978
172723		Asmir	Begović	GK	Bosnia and Herzegovina	34	83	199	1943
183899		Pablo	Piatti	LM	Argentina	32	63	163	452
185122		Péter	Gulácsi	GK	Hungary	31	83	190	112172
192064	Ricardo Goulart	Ricardo	Goulart Pereira	CF	Brazil	30	75	181	111839
193171	Jaume Costa	Jaume Vicent	Costa Jordá	LB	Spain	33	62	171	483
198715	Sergio León	Sergio	León Limones	ST	Spain	32	73	178	449
202325		Diego	Demme	CDM	Germany	29	68	170	112172
204277	Roque Mesa	Roque	Mesa Quevedo	CDM	Spain	32	74	171	481
205407		Daniele	Baselli	CM	Italy	29	70	182	54
212150		Max	Meyer	CM	Germany	25	68	173	1799
215061		Darío	Benedetto	ST	Argentina	31	75	175	1877
225997		Benjamin	Verbič	LM	Slovenia	27	70	179	101047
50473906		Sammy	Bossut	GK	Belgium	35	79	187	15005
50508928		Tore	Reginiussen	CB	Norway	35	80	185	298
50522523		Juraj	Kucka	CM	Slovakia	34	84	186	50
50529848		Benjamin	Stambouli	CB	France	30	82	180	34
50537591		Vlad	Chiricheş	CB	Romania	31	75	184	48
50539916		Bryan	Cristante	CM	Italy	26	78	186	52
50543801		Roberto	Gagliardini	CDM	Italy	27	77	190	44
50551580		Antonio	Sanabria	ST	Paraguay	25	74	180	110556
50555984		Taras	Romanczuk	CDM	Poland	29	73	186	110745
142721		Marcelo	Barovero	GK	Argentina	37	74	182	1032
146460	Javi Fuego	Javier	Fuego Martínez	CDM	Spain	37	74	182	483
158856		Christian	Gentner	CM	Germany	35	81	189	36
163806	Sergio	Sergio	Álvarez Conde	GK	Spain	35	75	179	450
165517		Fernando	Gago	CM	Argentina	35	75	178	1877
172175		Kevin	Mirallas	LM	Belgium	33	72	182	110374
172862		Niklas	Moisander	CB	Finland	35	76	183	38
177983		Cristian	Zapata	CB	Colombia	34	78	186	47
180432	Hernanes	A. Hernanes	de Carvalho A. Lima	CM	Brazil	36	77	180	112978
183855		Angelo	Ogbonna	CB	Italy	33	86	191	19
187598	Rafael Tolói	Rafael	Tolói	CB	Brazil	30	75	185	39
188840	Miguel Lopes	Hugo Miguel	Almeida Costa Lopes	RB	Portugal	34	83	182	111340
189574	Iturraspe	Ander	Iturraspe Derteano	CM	Spain	32	78	187	448
192557		Marvin	Plattenhardt	LB	Germany	29	76	181	166
193152	Herrerín	Iago	Herrerín Buisán	GK	Spain	33	95	187	448
197948		Florian	Lejeune	CB	France	30	89	189	13
199005		Mathew	Ryan	GK	Australia	29	82	184	1808
199986	Arbilla	Anaitz	Arbilla Zabala	CB	Spain	34	76	177	467
202642	Fernando	Fernando Lucas	Martins	CDM	Brazil	29	80	175	100767
204240		Baptiste	Reynet	GK	France	30	85	185	1809
205340	Marcelo	Marcelo	dos Santos Ferreira	CB	Brazil	32	74	182	237
206591		Mitchell	Weiser	RB	Germany	27	67	176	32
210679	Paulo Oliveira	Paulo André	Rodrigues Oliveira	CB	Portugal	30	82	187	467
212811		Mario	Lemina	CM	Gabon	27	85	184	17
214394		Wilmar	Barrios	CDM	Colombia	27	74	178	1877
216189	Capa	Ander	Capa Rodríguez	RB	Spain	29	74	175	448
198614	Raúl Navas	Raúl	Rodríguez Navas	CB	Spain	33	84	186	457
198760		Saphir	Taïder	CM	Algeria	29	78	180	111139
199417		Harun	Tekin	GK	Turkey	32	78	187	742
199833		Lars	Unnerstall	GK	Germany	31	103	198	100651
200517	Carles Planas	Carles	Planas Antolínez	LB	Spain	30	76	173	110062
201269		Frederik	Rønnow	GK	Denmark	29	77	190	1824
201943		Andreas	Cornelius	ST	Denmark	28	91	193	39
202061		Jasmin	Kurtić	CM	Slovenia	32	88	186	112791
202330		Abdoulay	Diaby	ST	Mali	30	71	172	237
202746		Thulani	Serero	CM	South Africa	31	58	172	1909
202934		Ogenyi	Onazi	CDM	Nigeria	28	73	173	436
203910		Anthony	Knockaert	RM	France	29	69	172	1808
204307		Julian	Korb	RB	Germany	29	70	177	485
204555		Ricardo	Álvarez	CAM	Argentina	33	84	188	101114
204886		Prince-Désir	Gouano	CB	France	27	78	186	1816
205409		Sebastián	Sosa	GK	Uruguay	34	79	182	1028
205659		Alessio	Cragno	GK	Italy	27	78	184	1842
206171	Júnior Urso	Ocimar	Almeida Júnior	CDM	Brazil	32	72	177	112429
207431	Insua	Pablo	Insua Blanco	CB	Spain	27	76	187	110839
207734	Paulinho	Paulo Henrique	Soares dos Santos	CAM	Brazil	27	58	166	10031
182959		Aleš	Hruška	GK	Czech Republic	35	88	192	110468
183520	Fran Mérida	Francisco	Mérida Pérez	CDM	Spain	31	74	177	479
183781		Andreas	Bjelland	CB	Denmark	33	85	188	819
184183		Sebastien	Dewaest	CB	Belgium	30	94	188	673
185200	Vasco Fernandes	Vasco Herculano	Cunha Fernandes	CB	Portugal	34	76	182	665
186385		Adam	Clayton	CDM	England	32	75	175	12
186941		Raphael	Wolf	GK	Germany	33	86	190	110636
187478		Jair	Pereira	CB	Mexico	35	81	183	1880
188400		Thomas	Kaminski	GK	Belgium	28	80	190	100081
188540		Rajiv	van La Parra	LM	Holland	30	72	181	1939
188930	Laure	Laureano	Sanabria Ruiz	RB	Spain	36	68	166	100831
189263		Tunay	Torun	RM	Turkey	31	72	176	742
189272		Alexander	Esswein	RM	Germany	31	85	183	166
189403		Nathan	Baker	CB	England	30	82	189	1919
189536		Duje	Čop	ST	Croatia	31	73	184	462
189586	Dani Hernández	Daniel	Hernández Santos	GK	Venezuela	35	89	196	260
189819	Rogerinho	Rogério	de A. S. Coutinho	LM	Brazil	34	70	176	112389
189938		Maikel	van der Werff	CB	Holland	32	82	186	1909
190093	Dani Castellano	Daniel	Castellano Betancor	LB	Spain	33	69	180	472
190549		Markus	Henriksen	CM	Norway	29	80	187	1952
67320037		Saleh	Al Shehri	ST	Saudi Arabia	27	77	182	112392
67341119		Agustín	Bouzat	RM	Argentina	27	70	173	101088
84071148		Johnny	Russell	RW	Scotland	31	70	177	696
84102430		Arijan	Ademi	CDM	FYR Macedonia	30	79	185	211
117645704	Denis Suárez	Denis	Suárez Fernández	CM	Spain	27	69	176	1
137351		Daniel	Baier	CDM	Germany	37	78	176	100409
169115		Andrea	Masiello	CB	Italy	35	82	184	39
176731		Pontus	Wernbloom	CDM	Sweden	35	85	187	393
184826	Adrien Silva	Adrien S.	Perruchet Silva	CM	Portugal	32	69	175	95
189423	Souza	Josef	de Souza Dias	CDM	Brazil	32	80	188	112387
192565		Yunus	Mallı	LM	Turkey	29	72	179	175
194761	Borja García	Borja	García Freire	LM	Spain	30	72	175	110062
199602		John	Guidetti	ST	Sweden	29	79	185	463
202201		Jeffrey	Gouweleeuw	CB	Holland	30	78	188	100409
203775		Loris	Karius	GK	Germany	28	87	189	327
206304		Luka	Milivojević	CDM	Serbia	30	80	186	1799
214584		Franco	Armani	GK	Argentina	34	88	189	1876
216150		Davide	Zappacosta	RB	Italy	29	70	182	5
233419	Raphinha	Raphael	Dias Belloli	RM	Brazil	24	68	176	237
50503336	Fábio Coentrão	Fábio Alexandre	Silva Coentrão	LB	Portugal	33	66	179	744
50515717		Sandro	Wagner	ST	Germany	33	92	194	21
50524554		Luis Miguel	Rodríguez	CAM	Argentina	36	71	168	111708
50533587		Cristiano	Piccini	RB	Italy	28	79	189	461
50538242		Solly	March	RM	England	27	77	180	1808
50540425	Óliver Torres	Óliver	Torres Muñoz	CM	Spain	26	63	175	236
50545080		Facundo	Ferreyra	ST	Argentina	30	78	185	234
50552867		Germán	Conti	CB	Argentina	27	80	194	234
115909	Rubén Castro	Rubén	Castro Martín	ST	Spain	40	72	174	472
143745		Arda	Turan	CM	Turkey	34	76	177	101014
147621		Alexandr	Samedov	RM	Russia	37	75	178	100767
159287		Riccardo	Montolivo	CDM	Italy	36	76	181	47
165247		Itumeleng	Khune	GK	South Africa	34	81	181	110929
167514		Dušan	Basta	RB	Serbia	36	72	183	46
172287	Manu García	Manuel	García Sánchez	CDM	Spain	35	74	182	463
173546		James	Tomkins	CB	England	32	74	192	1799
182179		Sebastian	De Maio	CB	France	34	90	190	189
184477		Kyriakos	Papadopoulos	CB	Greece	29	87	185	28
188086	Jefferson	Jefferson	Nascimento	LB	Brazil	33	72	176	237
188524		Volkan	Babacan	GK	Turkey	32	86	192	101014
190765		Pascal	Groß	CAM	Germany	30	78	181	1808
194911	Adrián	Adrián	San Miguel Castillo	GK	Spain	34	80	190	19
198584		Kara	Mbodji	CB	Senegal	31	92	192	71
199633		Matthew	Lowton	RB	England	32	78	181	1796
201046		Riccardo	Saponara	CAM	Italy	29	73	184	1837
203886		Adrien	Trebel	CM	France	30	74	174	229
204311		Kurt	Zouma	CB	France	26	96	190	7
205633		Lucas	Castro	CM	Argentina	32	80	180	1842
206511		Maximilian	Arnold	CM	Germany	27	74	184	175
212501		Leander	Dendoncker	CB	Belgium	26	88	189	110
213400		Diego	Laxalt	LM	Uruguay	28	68	178	47
214766		Carlos	Izquierdoz	CB	Argentina	32	85	185	1877
198657		Jonas	Svensson	RB	Norway	28	70	170	1906
198719		Nathan	Redmond	RM	England	27	69	173	17
199550		Bruno	Martins Indi	CB	Holland	29	76	185	1806
199745		Erik	Sviatchenko	CB	Denmark	29	82	184	1516
200478		Jeff	Hendrick	CAM	Republic of Ireland	29	84	183	1796
201215		Ladislav	Krejčí	LW	Czech Republic	29	68	180	189
201976		Alfred	Gomis	GK	Senegal	27	80	194	112791
202115		Matthias	Ostrzolek	LB	Germany	31	72	178	485
202350	Fabrício	Fabrício	dos Santos Messias	ST	Brazil	31	78	183	111575
202539		Leigh	Griffiths	ST	Scotland	30	75	173	78
203505		Joe	Bryan	LB	England	27	72	170	144
204102		Yassin	Ayoub	CM	Morocco	27	70	174	246
204523	Rubén Pardo	Rubén	Pardo Gutiérrez	CM	Spain	28	69	181	457
204874		Aleksandar	Katai	LM	Serbia	30	70	182	693
205408		Santiago	Gentiletti	CB	Argentina	36	77	186	1854
205601		Christian	Atsu	LM	Ghana	29	65	165	13
206003		Yvon	Mvogo	GK	Switzerland	27	84	186	112172
206436		Yassine	Benzia	CAM	Algeria	26	76	178	65
207555		Filip	Helander	CB	Sweden	28	84	192	189
207920		Erik	Durm	LB	Germany	29	72	183	1939
184071		Ryan	Koolwijk	CDM	Holland	35	76	194	1971
184606	Fábio Pacheco	Fábio José	Ferreira Pacheco	CDM	Portugal	33	73	180	1900
186143		Oliver	Norwood	CM	Northern Ireland	30	69	175	1794
186674		Roger	Espinoza	CM	Honduras	34	77	180	696
187878		Lukáš	Mareček	CM	Czech Republic	31	79	183	2007
188607		Rodrigo	Salinas	RB	Mexico	33	78	180	1882
189228		Maximiliano	Caire	RB	Argentina	33	70	177	111715
189436		Lorenzo	Ariaudo	CB	Italy	32	79	186	111657
189568		Abdoul	Sissoko	CDM	Mali	31	75	183	111340
189600		Josef	Hušbauer	CM	Czech Republic	31	76	182	266
190276		Stoppila	Sunzu	CB	Zambia	32	91	190	68
190432	Oier	Oier	Sanjurjo Maté	CB	Spain	35	72	178	479
190471		Bernard	Parker	CF	South Africa	35	65	170	110929
190629		Daniel	Villalva	LM	Argentina	29	61	158	110150
190555	Mossa	José María	Angresola Jiménez	LWB	Spain	32	72	178	110827
190779	Rúben Micael	Rúben Micael	F. da Ressureição	CM	Portugal	34	70	176	665
190769		Eugenio	Lamanna	GK	Italy	32	80	187	110741
191055	Dídac Vilà	Dídac	Vilà Roselló	LB	Spain	32	75	185	452
191256		Osama	Hawsawi	CB	Saudi Arabia	37	83	188	112408
191066		Felix	Kroos	CDM	Germany	30	78	184	1831
191547		Shinzo	Koroki	ST	Japan	35	72	175	111575
191627		Mats	Rits	CM	Belgium	28	73	178	231
192205		Rene	Krhin	CDM	Slovenia	31	81	189	71
67323327		Wilson	Morelo	ST	Colombia	34	70	172	101104
67330038		Mislav	Oršić	LM	Croatia	28	69	179	211
83931163		Steve	von Bergen	CB	Switzerland	38	79	182	900
84115423	Wanderson	Wanderson	Carvalho Oliveira	RM	Brazil	32	60	172	1474
124375		Burak	Yılmaz	ST	Turkey	36	77	188	436
164859		Theo	Walcott	RM	England	32	68	176	7
183892		Gabriel	Mercado	CB	Argentina	34	83	180	481
192492		Fabián	Orellana	CAM	Chile	35	64	168	467
192620		Holger	Badstuber	CB	Germany	32	84	190	36
195202		Tom	Cairney	CM	Scotland	30	83	185	144
199767		Marco	van Ginkel	CM	Holland	28	82	186	5
202648	Sergi Darder	Sergi	Darder Moll	CM	Spain	27	71	180	452
204525	Iñigo Martínez	Iñigo	Martínez Berridi	CB	Spain	30	77	182	448
205976	Leo Baptistao	Leonardo	Carrilho Baptistão	ST	Brazil	28	72	181	452
210455	Jonny	Jonathan	Castro Otto	LWB	Spain	27	70	170	110
215057		Iván	Marcone	CDM	Argentina	31	83	183	1878
219932		Antonio	Sanabria	ST	Paraguay	25	74	180	449
50500213		Hugo	Rodallega	ST	Colombia	36	72	181	436
50516474	Adrien Silva	Adrien S.	Perruchet Silva	CM	Portugal	32	69	175	69
50531064	Ibai Gómez	Ibai	Gómez Pérez	RM	Spain	31	72	177	448
50536262	Mário Rui	Mário Rui	Silva Duarte	LB	Portugal	30	67	170	48
50539272		Kenneth	Omeruo	CB	Nigeria	27	81	185	100888
50542059	Otávio	Otávio Edmilson	da Silva Monteiro	RM	Brazil	26	71	172	236
50546705		Iván	Marcone	CDM	Argentina	31	83	183	1877
50554642		Marvelous	Nakamba	CDM	Zimbabwe	27	79	176	231
134744		Atiba	Hutchinson	CDM	Canada	38	83	187	327
146439	Negredo	Álvaro	Negredo Sánchez	ST	Spain	35	86	186	327
150724		Joe	Hart	GK	England	34	91	196	1796
161754	Javi García	Fran. Javier	García Fernández	CDM	Spain	34	82	186	449
165501		Nicolás	Pareja	CB	Argentina	37	74	181	101114
172049		Eljero	Elia	LM	Holland	34	77	176	101014
173306		Cristian	Ansaldi	LB	Argentina	34	76	181	54
178416		Jeremain	Lens	RM	Holland	33	75	178	327
183556		Neven	Subotić	CB	Serbia	32	85	193	1819
186302		Elías	Hernández	RM	Mexico	33	65	171	1878
188427		Senad	Lulić	LM	Bosnia and Herzegovina	35	78	183	46
189296		Etrit	Berisha	GK	Albania	32	92	194	39
192123		Chris	Wood	ST	New Zealand	29	92	189	1796
193361		Roberto	Soriano	LM	Italy	30	76	182	54
196432		Enzo	Pérez	CM	Argentina	35	77	178	1876
198648		Bibras	Natcho	CM	Israel	33	77	176	280
200607		Christopher	Schindler	CB	Germany	31	77	189	1939
203280		Valère	Germain	ST	France	31	73	180	219
204120		Tomáš	Vaclík	GK	Czech Republic	32	85	188	481
205083		Fayçal	Fajr	CM	Morocco	33	71	178	210
208520		Hiroki	Sakai	RB	Japan	31	70	183	219
211706	Pere Pons	Pere	Pons Riera	CM	Spain	28	70	177	110062
213051		Mohamed	Elneny	CDM	Egypt	29	74	181	1
216065		Marco	Sportiello	GK	Italy	29	87	192	111657
207928		Tom	Rogić	CAM	Australia	28	88	189	78
209236	Guilherme	Guilherme	dos Santos Torres	CDM	Brazil	30	77	179	280
209984		Mikel	Agu	CDM	Nigeria	28	77	184	665
210372		Rachid	Ghezzal	RM	Algeria	29	70	182	95
210489		Louis	Schaub	RM	Austria	26	70	177	31
211093		Callum	McGregor	CAM	Scotland	28	67	174	78
211361		Danilo	Cataldi	CM	Italy	27	70	180	46
212023		Robert	Berić	ST	Slovenia	30	83	188	1819
212476	Medrán	Álvaro	Medrán Just	CM	Spain	27	71	176	480
212933		Laurent	Depoitre	ST	Belgium	32	91	191	1939
213114		Diego	Rolán	ST	Uruguay	28	70	178	100888
214110		José	Cuadrado	GK	Colombia	36	80	180	101106
214491		Luis	Quiñones	LM	Colombia	30	65	178	1882
214781		Silvio	Romero	ST	Argentina	33	76	177	110093
215251		Guido	Herrera	GK	Argentina	29	84	188	112670
215644	Burgui	Jorge	Franco Alviz	LM	Spain	27	75	184	463
216356		Josip	Pivarić	LB	Croatia	32	69	176	101047
216778	Rúben Semedo	Rúben Afonso	Borges Semedo	CB	Portugal	27	84	189	110839
218154		Khama	Billiat	RW	Zimbabwe	30	60	170	110929
219792		Baptiste	Santamaria	CDM	France	26	73	183	1530
220658	Ailton	Ailton	Ferreira Silva	LB	Brazil	26	70	181	1896
221701	Gabriel Boschilia	Gabriel	Boschilia	CAM	Brazil	25	63	172	71
222331		Lukas	Klostermann	RB	Germany	25	83	189	112172
223017		Ömer Ali	Şahiner	RM	Turkey	29	70	175	101033
224218		François	Kamano	LW	Guinea	25	77	175	59
225193	Merino	Mikel	Merino Zazón	CM	Spain	25	83	186	457
225439		Rolando	Mandragora	CM	Italy	24	76	183	55
225945	Thiago Maia	Thiago	Maia Alencar	CDM	Brazil	24	76	179	65
226414		Marcus	Coco	LM	France	25	78	184	62
227222		Frédéric	Guilbert	RB	France	26	70	178	210
228092		Sander	Berge	CDM	Norway	23	94	195	673
229391	Palhinha	João Maria	Palhinha Gonçalves	CDM	Portugal	26	82	190	1896
230564		Mijat	Gaćinović	CM	Serbia	26	69	175	1824
231545	Miguel Silva	João Miguel	Macedo da Silva	GK	Portugal	26	78	190	1887
233601		Ramadan	Sobhi	LM	Egypt	24	77	183	1939
234711		Josip	Brekalo	LM	Croatia	23	70	175	175
235663		Guus	Til	CAM	Holland	23	74	183	1906
236331		Erick	Cabaco	CB	Uruguay	26	75	186	1853
238359	Wendel	Marcus Wendel	Valle da Silva	CM	Brazil	23	66	180	237
240898	Francis	Francisco	Guerrero Martín	RM	Spain	25	75	185	449
244260	Dani Olmo	Daniel Olmo	Carvajal	LM	Spain	23	72	179	211
50497722	Bebé	Tiago Manuel	Dias Correia	LM	Portugal	31	83	190	480
50503478		Nicolás	Spolli	CB	Argentina	38	90	193	110734
50508442		Ola	Toivonen	ST	Sweden	35	78	192	111397
67324281		Christian	Mathenia	GK	Germany	29	90	189	171
67325257		Youri	Tielemans	CM	Belgium	24	72	176	95
67350771		Diego	Rossi	LW	Uruguay	23	68	170	112996
84091426		Ryan	Fredericks	RB	England	28	74	181	19
117678093		Dever	Orgill	RW	Jamaica	31	68	183	101007
157301		Ryan	Babel	LM	Holland	34	85	185	327
169705		Ryan	Bertrand	LB	England	32	85	179	17
177358		Morgan	Schneiderlin	CDM	France	31	75	185	7
183909		Ibrahima	Traoré	RM	Guinea	33	61	171	23
190875		Juraj	Kucka	CM	Slovakia	34	84	186	436
193061		Roberto	Pereyra	LM	Argentina	30	77	182	1795
199416	Ibai Gómez	Ibai	Gómez Pérez	RM	Spain	31	72	177	463
203362		Mohamed	Elyounoussi	LM	Norway	27	70	178	17
205193		Karim	Rekik	CB	Holland	26	79	186	166
214947		Jean-Philippe	Gbamin	CDM	Côte d'Ivoire	25	83	186	169
219576		Rodrigo	Battaglia	CM	Argentina	30	79	187	237
50502445		Nuri	Şahin	CDM	Turkey	32	73	180	38
50516908		Deniz	Kadah	CAM	Turkey	35	80	186	101026
50528890		Grzegorz	Krychowiak	CDM	Poland	31	85	186	100765
50535543	Pozuelo	Alejandro	Pozuelo Melero	CAM	Spain	29	72	172	673
50537706		Mattia	De Sciglio	RB	Italy	28	78	182	45
50541097	Gerso	Gerso	Fernandes	LW	Guinea-Bissau	30	65	172	696
50547114		Nikola	Maksimović	CB	Serbia	29	87	193	48
111661		Carlos Idriss	Kameni	GK	Cameroon	37	86	186	326
139064		Leonardo	Ponzio	CDM	Argentina	39	71	174	1876
146758	Soldado	Roberto	Soldado Rillo	ST	Spain	36	74	180	326
159171	Jurado	José Manuel	Jurado Marín	RM	Spain	35	72	176	112387
164082	Adriano	Adriano	Correia Claro	LB	Brazil	36	75	172	327
168312		Ignazio	Abate	RB	Italy	34	73	180	47
172316	Coke	Jorge	Andújar Moreno	RB	Spain	34	74	177	1853
173474		Zlatko	Junuzović	CM	Austria	33	69	172	191
178322		Miguel	Layún	RB	Mexico	33	76	180	483
183483		Konstantinos	Mitroglou	ST	Greece	33	86	188	219
186307		Marco	Fabián	CAM	Mexico	32	65	171	1824
188253		James	McCarthy	CDM	Republic of Ireland	30	72	180	7
189165		Jonjo	Shelvey	CM	England	29	80	184	13
190324		Christian	Kabasele	CB	Belgium	30	84	188	1795
193130		André	Schürrle	LM	Germany	30	73	184	144
196147		Giovanni	Moreno	CAM	Colombia	35	83	192	110955
198513	Cláudio Ramos	Cláudio Pires	de Morais Ramos	GK	Portugal	29	85	183	112516
199827		Pablo	Hernández	CM	Chile	34	81	185	110093
201262		Vladimír	Darida	CM	Czech Republic	30	64	171	166
203487		Jamaal	Lascelles	CB	England	27	89	188	13
204385		Santiago	García	ST	Uruguay	30	80	181	111706
206411		Denys	Garmash	CM	Ukraine	31	75	186	101047
209307	Tiago Volpi	Tiago Luis	Volpi	GK	Brazil	30	89	185	110150
212213	Ricardo Esgaio	Ricardo	Sousa Esgaio	RM	Portugal	28	68	173	1896
214026		Johan	Mojica	LWB	Colombia	28	73	185	110062
216466	Wendell	Wendell	Nascimento Borges	LB	Brazil	28	71	176	32
208339		Oumar	Niasse	ST	Senegal	31	82	182	7
208615		Christopher	Jullien	CB	France	28	88	196	1809
209997		Kevin	Wimmer	CB	Austria	28	85	187	485
210259		Ahmed	Hassan	ST	Egypt	28	85	191	280
210463		Darwin	Machís	LW	Venezuela	28	74	169	55
210930	Carles Gil	Carles	Gil Pareja	RM	Spain	28	65	170	242
211382		Ibrahim	Amadou	CDM	France	28	81	184	481
211591		Moussa	Dembélé	ST	France	25	77	183	78
212225		Enzo	Roco	CB	Chile	28	79	192	327
212729	Tozé	António José	Pinheiro Carvalho	CAM	Portugal	28	61	166	1887
213000		Sven	van Beek	CB	Holland	27	76	188	246
213956	Adama	Adama	Traoré Diarra	RW	Spain	25	76	178	110
214327		Vladimir	Hernández	CAM	Colombia	32	68	160	101100
214605		Alexander	Mejía	CDM	Colombia	33	79	178	110781
214955		Emmanuel	Mas	LB	Argentina	32	73	183	1877
215270		Lucas	Zelarayán	CAM	Argentina	29	73	172	1970
216097	Idris	Idrissa	Mandiang	CDM	Senegal	36	80	189	1898
216749	Carlos Mané	Carlos Manuel	Cardoso Mané	RM	Portugal	27	67	173	237
217844	Djavan	Djavan	da Silva Ferreira	LB	Brazil	33	76	184	518
219728	Edgar Méndez	Edgar Antonio	Méndez Ortega	RM	Spain	30	76	188	1878
220245		Bongani	Zungu	CM	South Africa	28	76	184	1816
221130		Yoan	Cardinale	GK	France	27	84	181	72
221743	Hélder Costa	Hélder Wander	Sousa Azevedo Costa	RW	Portugal	27	77	179	110
222390	Unai López	Unai	López Cabrera	CM	Spain	25	70	170	448
223329		Andrea	Conti	RM	Italy	27	76	184	47
224869	Bustinza	Unai	Bustinza Martínez	CB	Spain	29	74	175	100888
225523	Lekue	Iñigo	Lekue Martínez	RB	Spain	28	72	180	448
226215	Sabin Merino	Sabin	Merino Zuloaga	LW	Spain	29	75	187	448
226376		Alejandro	Romero Gamarra	CAM	Paraguay	26	68	171	689
226777		Cyle	Larin	ST	Canada	26	90	188	327
229270		Mauricio	Lemos	CB	Uruguay	25	85	187	111974
229764	Córdoba	Iñigo	Córdoba Kerejeta	LW	Spain	24	73	180	448
231102		Ludovic	Blas	RM	France	23	73	180	62
232805	Bernardo	Bernardo	Fernandes	LB	Brazil	26	76	186	1808
234986		Panagiotis	Retsos	CB	Greece	22	80	186	32
235883		Ryan	Sessegnon	LW	England	21	70	178	144
237034		Juan Camilo	Hernández	ST	Colombia	22	79	175	110839
239212	Carlitos	Carlos Daniel	López Huesca	ST	Spain	31	70	176	1871
241463	Dani Raba	Daniel	Raba Antolin	RM	Spain	25	76	184	483
50491239		Andrés	Pérez	CDM	Colombia	40	75	180	101104
50498828		Fredrik	Nordkvelle	CM	Norway	35	79	180	1456
50506197		Matías	Fernández	CM	Chile	35	72	178	101101
50514716		Claudio	Beauvue	ST	France	33	66	174	210
208534		Alfie	Mawson	CB	England	27	87	188	144
209782		Sam	Larsson	LW	Sweden	28	70	179	246
210021		Hany	Mukhtar	CAM	Germany	26	71	173	269
210537		Renato	Steffen	LM	Switzerland	29	65	170	175
210822	Douglas Santos	Douglas	Justino de Melo	LB	Brazil	27	70	175	28
211269		Guillermo	Fernández	CM	Argentina	29	75	178	101085
211899		Florian	Niederlechner	ST	Germany	30	86	187	25
212541		Leonel	Vangioni	LB	Argentina	34	68	178	1032
212883		Daniel	Amartey	CDM	Ghana	26	79	186	95
213113		Matías	Cabrera	CAM	Uruguay	35	69	177	101102
214207		Felipe	Pardo	RM	Colombia	30	83	178	280
214639	Postigo	Sergio	Postigo Redondo	CB	Spain	32	78	185	1853
215199		Rubén	Botta	LM	Argentina	31	71	175	1013
215531		Deniz	Türüç	CAM	Turkey	28	72	177	101020
216247		Marcel	Tisserand	CB	Congo DR	28	80	190	175
216452	Gonçalo Paciência	Gonçalo	Mendes Paciência	ST	Portugal	27	83	184	1824
217097		Rómulo	Otero	CAM	Venezuela	28	62	169	112408
218868		Alejandro	Silva	RW	Uruguay	31	68	178	111139
219797		Roger	Martínez	ST	Colombia	27	85	180	1879
220475		Alberto	Grassi	CM	Italy	26	75	183	50
221671	Lee Jae Sung	Jae Sung	Lee	CAM	Korea Republic	28	70	180	576
221797		Erik	Thommy	LM	Germany	26	70	174	36
222467	Ivi	Iván	López Álvarez	LM	Spain	27	74	174	462
224030		Maxime	Lopez	CM	France	23	58	167	219
224808		Gian Marco	Ferrari	CB	Italy	29	82	189	111974
225356		Andrés	Ibargüen	LW	Colombia	29	63	168	1879
225878		Cecilio	Domínguez	LM	Paraguay	26	70	179	1879
226221	Aritz	Aritz	Elustondo	CB	Spain	27	71	180	457
226536		Omar	Colley	CB	Gambia	28	87	191	1837
227508	Melero	Gonzalo	Melero Manzanares	CM	Spain	27	79	183	110839
229624	Sergi Guardiola	Sergio	Guardiola Navarro	ST	Spain	30	77	187	1860
230005		Tom	Davies	CM	England	23	70	185	7
231235		Kelvin	Amian	RB	France	23	78	180	1809
233299	Felipe Vizeu	Felipe dos Reis	Vizeu do Carmo	ST	Brazil	24	82	184	55
235634		Ghislain	Konan	LB	Côte d'Ivoire	25	71	176	379
236245		Alberth	Elis	RW	Honduras	25	77	183	698
237556		Christian	Luyindama	CB	Congo DR	27	91	191	232
239872	Pablo Santos	Pablo	Renan dos Santos	CB	Brazil	29	82	188	1896
241827	Martín	Martín	Aguirregabiria	RB	Spain	25	72	178	463
50489326		Laurent	Ciman	CB	Belgium	36	70	184	110569
50499489		Chris	Maguire	CAM	Scotland	32	68	170	106
50509367		Łukasz	Broź	RB	Poland	35	74	180	111092
50515614		Facundo	Roncaglia	CB	Argentina	34	76	179	461
50519878		Geoffrey	Treand	LM	France	35	74	178	435
50522206		Ike	Opara	CB	United States	32	82	188	111138
50524710		Marvin	Zeegelaar	LB	Holland	30	82	186	55
50531065		Harun	Tekin	GK	Turkey	32	78	187	326
50536471	Nildo Petrolina	Evanildo	Fernandes Gomes	LW	Brazil	35	61	175	112393
50538084		Yassine	Benzia	CAM	Algeria	26	76	178	326
49488		Étienne	Didot	CDM	France	38	70	176	62
53739		Lee	Grant	GK	England	38	83	193	11
137460		Alessandro	Rosina	RW	Italy	37	69	170	110373
145047	Bruno Saltor	Bruno	Saltor Grau	RB	Spain	40	76	181	1808
158851		Jean	Beausejour	LB	Chile	37	83	178	15029
162508		Oleksandr	Kucher	CB	Ukraine	38	77	184	101020
163925		Alessandro	Diamanti	CF	Italy	38	75	180	1844
168379	Carmona	Carlos	Carmona Bonet	RM	Spain	34	73	178	459
169386		Sergio	Floccari	ST	Italy	39	79	180	112791
172517		Mike	Jensen	CM	Denmark	33	75	177	298
173608	Joselu	José Luis	Sanmartín Mato	ST	Spain	31	80	192	13
176062		Sacha	Kljestan	CAM	United States	35	77	185	112606
176377		Duško	Tošić	CB	Serbia	36	85	185	112429
177448		Gustav	Svensson	CDM	Sweden	34	77	184	111144
178090		Diego	Biseswar	CAM	Holland	33	79	176	393
178393		Alessio	Cerci	RW	Italy	34	78	180	101007
181780		Tim	Matavž	ST	Slovenia	32	81	188	1909
183288		Yohan	Benalouane	CB	Tunisia	34	86	185	95
183969		Juan	Forlín	CB	Argentina	33	74	180	110827
184823	Djalma	Djalma Braume	Manuel Abel Campos	RM	Angola	34	78	179	113142
186392		Joel	Ward	RB	England	31	83	188	1799
186598		Kyle	Naughton	RB	England	32	73	180	1960
186912		Christian	Träsch	CDM	Germany	33	75	180	111239
187939		Aatif	Chahechouhe	LM	Morocco	35	68	176	326
188270		Bruno	Ecuélé Manga	CB	Gabon	33	76	186	1961
188938		Cristian	Álvarez	GK	Argentina	35	83	186	244
189468	Daniel Candeias	Daniel João	Santos Candeias	RM	Portugal	33	78	177	86
189650		Jan	Kovařík	LM	Czech Republic	33	80	183	110468
190034		Timothée	Kolodziejczak	CB	France	29	75	185	1819
190536		Osvaldo	Martínez	CM	Paraguay	35	71	165	110144
190653		Isaac	Brizuela	RM	Mexico	30	66	171	1880
190868		Kévin	Théophile-Catherine	CB	France	31	86	183	211
191388		Takashi	Usami	RM	Japan	29	69	178	110636
192102		Niklas	Hult	LB	Sweden	31	66	173	278
192373		Milton	Caraglio	ST	Argentina	32	86	187	1878
192667		Allan	Nyom	RB	Cameroon	33	81	189	100888
193091		Bram	Nuytinck	CB	Holland	31	82	190	55
193786		Francesco	Bardi	GK	Italy	29	80	188	111657
194359		Yuto	Nagatomo	LB	Japan	34	68	170	325
195698		Cheick	Doukouré	CDM	Côte d'Ivoire	28	82	180	1853
197786		Giulio	Donati	RB	Italy	31	76	178	169
198136		Antonino	Ragusa	LW	Italy	31	78	183	206
198420		Majeed	Waris	ST	Ghana	29	71	172	71
199000		Trent	Sainsbury	CB	Australia	29	78	184	247
199274		Ilja	Nestorovski	ST	FYR Macedonia	31	75	182	1843
200302		Graeme	Shinnie	CDM	Scotland	30	72	175	77
208607		Martín	Mantovani	CB	Argentina	37	77	183	472
209846		Christian	Günter	LWB	Germany	28	83	184	25
210007	André Ramalho	André	Ramalho Silva	CB	Brazil	29	78	182	191
210377	João Teixeira	João Carlos	Vilaça Teixeira	CAM	Portugal	28	76	177	1887
210722	Júlio Tavares	Júlio Carolino	Tavares	ST	Cape Verde Islands	32	88	187	110569
211119	Pedro Santos	Pedro Miguel	Martins Santos	RM	Portugal	33	65	173	687
211124		Paolo	Hurtado	CAM	Peru	31	72	176	101033
211703		Marc	Schnatterer	RM	Germany	35	75	180	111235
212267	Ivan Cavaleiro	Ivan Ricardo	Cavaleiro	RW	Portugal	27	80	175	110
212772		Óscar	Duarte	CB	Costa Rica	32	81	186	452
213013		Frank	Acheampong	ST	Ghana	27	60	166	111774
213974		Diego	Rodríguez	CDM	Uruguay	31	65	170	111678
214763		Paolo	Goltz	CB	Argentina	36	80	184	1877
215042		Gastón	Lezcano	RW	Argentina	34	65	168	1028
215334		Guido	Carrillo	ST	Argentina	30	87	191	100888
215703	Marlon Santos	Marlon	da Silva Barbosa	CB	Brazil	25	80	182	111974
216320		Seko	Fofana	CM	Côte d'Ivoire	26	77	184	55
216939		Andre	Blake	GK	Jamaica	30	79	193	112134
217605		Lukas	Lerager	CM	Denmark	28	85	186	59
219712		Sebastián	Cristóforo	CDM	Uruguay	27	68	175	110374
220093		Hans	Hateboer	RM	Holland	27	74	187	39
221445	Wu Lei	Lei	Wu	ST	China PR	29	66	174	112540
222077		Manuel	Locatelli	CDM	Italy	23	75	186	111974
222943	Jony	Jonathan	Rodríguez Menéndez	LM	Spain	30	76	179	463
224574		Orbelín	Pineda	CM	Mexico	25	64	169	1880
225719		Kelechi	Iheanacho	ST	Nigeria	24	80	183	95
226370	André Horta	André Filipe	Luz Horta	CM	Portugal	24	64	175	112996
226637	Rubén Duarte	Rubén	Duarte Sánchez	LB	Spain	25	75	180	463
227236		André Franck	Zambo Anguissa	CDM	Cameroon	25	78	184	144
229037	Borja Valle	Borja	Valle Balonga	ST	Spain	29	72	177	242
229723		Mathias	Jensen	CM	Denmark	25	68	173	450
230965		Nahitan	Nández	CM	Uruguay	25	69	171	1877
232119		Çağlar	Söyüncü	CB	Turkey	25	82	187	95
234201	Tchê Tchê	Danilo	das Neves Pinheiro	CM	Brazil	28	66	175	101047
235424		Diadie	Samassékou	CDM	Mali	25	68	177	191
235945	Marc Roca	Marc	Roca Junqué	CDM	Spain	24	74	184	452
237604		Alan	Franco	CB	Argentina	24	77	183	110093
240900	Unai Núñez	Unai	Núñez Gestoso	CB	Spain	24	81	186	448
244373		Vitaliy	Buyalskyi	CM	Ukraine	28	61	170	101047
50493928		Adrian	Mierzejewski	CAM	Poland	34	73	174	112165
50505018		Benny	Feilhaber	CM	United States	36	74	175	694
50515097		Joe	Jacobson	LB	Wales	34	79	180	1933
50518213		Scott	Wagstaff	CM	England	31	79	178	112259
50520416	Serey Dié	Sereso Geoffroy	Gonzaroua Dié	CDM	Côte d'Ivoire	36	77	179	435
50522430	Sandro	Sandro	R. G. Cordeiro	CDM	Brazil	32	75	187	55
50530138		Alexander	Faltsetas	CM	Sweden	34	79	181	711
50535881		Charly	Musonda	RW	Belgium	24	66	173	1909
7647		Dario	Dainelli	CB	Italy	42	78	191	1844
49756		Jakob	Poulsen	CM	Denmark	38	74	181	1516
54033		Tom	Huddlestone	CDM	England	34	80	188	91
137361		Giampaolo	Pazzini	ST	Italy	37	78	180	206
148212		Artem	Rebrov	GK	Russia	37	90	194	100767
158375		Nana	Asare	LB	Ghana	35	66	173	674
161644		Marvin	Matip	CB	Cameroon	35	85	185	111239
163418		Younès	Kaboul	CB	France	35	87	193	1795
164478		Chinedu	Obasi	ST	Nigeria	35	79	188	700
168320		Asamoah	Gyan	ST	Ghana	35	77	180	101020
169078		Luke	Freeman	CAM	England	29	73	172	15
171378		Paul	Aguilar	RB	Mexico	35	67	180	1879
173857		Mariano	Andújar	GK	Argentina	38	88	194	101083
176071		Dax	McCarty	CDM	United States	34	68	175	693
176903		Manuel	Iturra	CDM	Chile	37	73	174	573
177481		Ludovic	Baal	LB	France	35	75	176	74
178253	Ivo	Olívio	da Rosa	CAM	Brazil	34	65	183	111779
179574		Gary	Hooper	ST	England	33	71	175	1807
183284		Aurélien	Chedjou	CB	Cameroon	36	77	184	101014
183975		Jean-Armel	Kana-Biyik	CB	Cameroon	32	86	184	101020
185010		Michał	Pazdan	CB	Poland	33	78	181	1871
186524		Filip	Đorđević	ST	Serbia	33	80	186	192
186817		Rafik	Halliche	CB	Algeria	34	81	188	1900
187033		Sean	Morrison	CB	England	30	84	194	1961
188337		Mubarak	Wakaso	CM	Ghana	31	72	171	463
189059		Jake	Livermore	CM	England	31	74	180	109
189576	Ramalho	Jonás	Ramalho Chimeno	CB	Spain	28	68	181	110062
189707	Da Costa	Angelo Esmael	da Costa Júnior	GK	Brazil	37	81	186	189
190024	Fernandão	José Fernando	Viana de Santana	ST	Brazil	34	88	192	112408
190330		Nicola	Rigoni	CM	Italy	30	84	187	192
190636		Antonio	Ríos	CDM	Mexico	32	75	172	1882
190824		Omar	Elabdellaoui	RB	Norway	29	73	179	280
191269		Salman	Al Faraj	CM	Saudi Arabia	32	64	181	605
191488		Lucas	Orbán	CB	Argentina	32	79	179	101085
192362		Luciano	Narsingh	RW	Holland	30	77	177	1960
192612		Mato	Jajalo	CM	Bosnia and Herzegovina	33	81	182	1843
193077		Diego	Falcinelli	ST	Italy	30	75	185	189
193337		Joel	Obi	CM	Nigeria	30	71	176	192
193881		Filip	Đuričić	CAM	Serbia	29	72	181	111974
194979	Tiago Pinto	Tiago Miguel	Baía Pinto	LB	Portugal	33	70	177	101007
197402	Anselmo	Anselmo	de Moraes	CDM	Brazil	32	82	185	112408
197926		Lorenzo	Crisetig	CM	Italy	28	80	183	111657
198264		Billy	Ketkeophomphone	ST	France	31	71	180	1530
198617		Dominick	Drexler	CAM	Germany	31	71	182	31
199157	Luna	Antonio Manuel	Luna Rodriguez	LB	Spain	30	68	178	1853
199418		Eric	Bauthéac	LM	France	33	69	169	111395
50518298		Matías	Alustiza	CAM	Argentina	37	68	165	110152
50521005		Cristopher	Toselli	GK	Chile	33	75	183	110975
50529791	Samu Saiz	Samuel	Saiz Alonso	CAM	Spain	30	68	174	1860
50534530		Thievy	Bifouma	RM	Congo	29	80	180	113259
50538072		Mykola	Morozyuk	RB	Ukraine	33	71	176	101037
25420		Claudio	Pizarro	ST	Peru	42	84	184	38
52306		Chris	Brunt	CM	Northern Ireland	36	84	185	109
122849		Arouna	Koné	ST	Côte d'Ivoire	37	81	182	101041
144172		Serkan	Kırıntılı	GK	Turkey	36	78	185	101033
151508		Steven	Davis	CM	Northern Ireland	36	70	173	17
158372		Ibrahim	Afellay	CAM	Holland	35	76	180	1806
162932		Pablo	Barrientos	CAM	Argentina	36	69	176	1882
163873	Eduardo	Eduardo	dos Reis Carvalho	GK	Portugal	38	88	187	1909
165531		Ismael	Sosa	RM	Argentina	34	74	179	1970
168567		Aldo Leão	Ramírez	CM	Colombia	40	76	175	101100
169600		Danny	Simpson	RB	England	34	80	176	95
172835		Marco	Andreolli	CB	Italy	35	80	187	1842
174542		Johnny	Herrera	GK	Chile	40	87	184	15029
176652		Daniel	Kolář	CAM	Czech Republic	35	80	181	110468
177475		Tobias	Sippel	GK	Germany	33	78	183	23
178091		Stefano	Okaka	ST	Italy	31	90	186	1795
178567		Erik	Pieters	LB	Holland	33	84	183	1806
183177		Lucas	Barrios	ST	Paraguay	36	84	188	110980
183795		Georg	Margreitter	CB	Austria	32	85	186	171
184133	Castro	André	Castro Pereira	CAM	Portugal	33	75	181	101026
184926	Fabiano	Fabiano	Ribeiro de Freitas	GK	Brazil	33	91	197	236
186444		Hamdi	Harbaoui	ST	Tunisia	36	87	186	15005
186681	Alberto	Alberto	García Cabrera	GK	Spain	36	77	182	480
187858		Paul-José	Mpoku	LM	Congo DR	29	79	180	232
188135	Juanfran	Juan Francisco	Moreno Fuertes	RB	Spain	32	69	180	100888
188727		Benoît	Poulain	CB	France	34	83	189	231
189491		Olcay	Şahan	LM	Turkey	34	71	179	436
189930		İsmail	Köybaşı	LB	Turkey	32	70	178	326
190535	Míchel	Miguel Ángel	Herrero Javaloyas	CAM	Spain	33	71	183	462
190666		Manuel	Gulde	CB	Germany	30	78	184	25
191173		Alejandro	Bedoya	CM	United States	34	73	178	112134
192349	Renatinho	Renato	Ribeiro Calixto	RM	Brazil	32	68	167	112429
192397	Rafael	Rafael	Cabral Barbosa	GK	Brazil	31	83	186	1837
192636	David Simão	David Martins	Simão	CM	Portugal	31	74	183	1898
193247		Heinz	Lindner	GK	Austria	31	80	187	322
193849		Conor	Hourihane	CM	Republic of Ireland	30	62	181	2
194795		Gonzalo	Jara	CB	Chile	35	78	178	15029
195912	Suk Hyun Jun	Hyun Jun	Suk	ST	Korea Republic	30	84	190	379
197681		Giannelli	Imbula	CM	France	28	77	186	1806
198145		Sergio	Araujo	ST	Argentina	29	74	180	472
198347		Franco	Jara	ST	Argentina	33	76	181	110147
198868		Nicolas	Isimat-Mirin	CB	France	29	80	189	247
199170		Bryan	Dabo	CM	Burkina Faso	29	81	186	110374
200212		Michael	Esser	GK	Germany	33	97	198	485
200765		Muhamed	Bešić	CDM	Bosnia and Herzegovina	28	80	180	12
201139		Ivan	Strinić	LB	Croatia	34	78	186	47
201549		Nemanja	Nikolić	ST	Hungary	33	80	180	693
202157		Aziz	Behich	LB	Australia	30	63	170	742
202858		Fabián	Castillo	LM	Colombia	29	68	173	111678
203884		Koffi	Djidji	CB	Côte d'Ivoire	28	81	184	54
204464		Joe	Ralls	CM	England	27	70	178	1961
204776		Toni	Leistner	CB	Germany	30	90	190	15
205347		Massimo	Luongo	CDM	Australia	28	76	176	15
205495		Anthony	Lozano	ST	Honduras	28	79	185	110062
205895		Alexander	Ring	CDM	Finland	30	73	178	112828
206662		Matt	Hedges	CB	United States	31	84	193	695
207785		Thabo	Matlaba	LB	South Africa	33	75	169	110930
208251		Samuele	Longo	ST	Italy	29	81	185	110839
208787		Adrien	Thomasson	LM	France	27	72	177	76
209621	Mattheus Oliveira	Mattheus A.	Gama de Oliveira	CAM	Brazil	27	76	182	237
210136		Tomasz	Kędziora	RB	Poland	27	73	183	101047
210441	Fran Sol	Francisco	Sol Ortiz	ST	Spain	29	77	181	1907
210719		Marc-Oliver	Kempf	CB	Germany	26	87	186	36
211014	Paulinho	Paulo Sérgio	Mota	RB	Portugal	30	70	176	518
211239		Corentin	Jean	RM	France	26	65	170	1809
212127		Darko	Lazović	RM	Serbia	30	66	181	110556
212273		Clinton	Njie	ST	Cameroon	27	68	175	219
212519		Romain	Philippoteaux	LM	France	33	67	170	57
213620		Felipe	Mora	ST	Chile	28	72	175	1881
214665		Juan	Ramírez	CM	Argentina	28	68	174	112670
215069		Rodrigo	Rey	GK	Argentina	30	76	190	393
215181		Gino	Peruzzi	RB	Argentina	29	71	178	1877
215616	Jason	David Jason	Remeseiro Salgueiro	RM	Spain	27	65	178	1853
215998		Ignacio	Fernández	CM	Argentina	31	67	182	1876
216079		Antonio	Di Gaudio	LM	Italy	31	63	169	50
217036	Álex Moreno	Alexandre	Moreno Lopera	LB	Spain	28	68	179	480
219758		Luca	Rizzo	RM	Italy	29	80	185	110911
220609		Valentin	Vada	CM	Argentina	25	71	175	59
221269		Jaïro	Riedewald	CB	Holland	24	79	182	1799
221931		Peter	Žulj	CM	Austria	28	80	185	209
222900		Warner	Hahn	GK	Holland	29	88	190	1913
223685		Octavio	Rivero	ST	Uruguay	29	82	187	101114
224719		Alexandr	Tashaev	LM	Russia	27	75	179	100767
225299		Emiliano	Velázquez	CB	Uruguay	27	79	185	480
225410		Adam	Masina	LB	Italy	27	87	191	1795
226789		Angelo	Fulgini	RM	France	24	71	183	1530
228737		Gelmin	Rivas	ST	Venezuela	32	86	184	605
231007		Josip	Mišić	CM	Croatia	27	75	187	237
231352		Tammy	Abraham	ST	England	23	80	196	5
232294		Ryota	Morioka	CAM	Japan	30	79	180	229
50518691		Stefan	Johansen	CM	Norway	30	78	182	109
50521405		Aleksandar	Prijović	ST	Serbia	31	88	191	607
50528784		Karim	Ansarifard	ST	Iran	31	80	187	14
50533591		Andreas	Cornelius	ST	Denmark	28	91	193	59
50536936	Fernando	Fernando	Martínez Rubio	GK	Spain	31	79	185	1861
48745		Fabricio	Coloccini	CB	Argentina	39	83	184	1013
53110		Craig	Gordon	GK	Scotland	38	83	193	78
135742	Alexis	Alexis	Ruano Delgado	CB	Spain	36	75	183	112387
138460		Roman	Hubník	CB	Czech Republic	37	88	193	110468
156975		Christophe	Berra	CB	Scotland	36	92	191	80
159175		Alaixys	Romao	CDM	Togo	37	74	180	379
162297		Daniele	Padelli	GK	Italy	35	82	191	44
163665		Daniel	Congré	CB	France	36	80	185	70
165560		Marco	Ruben	ST	Argentina	34	75	178	110580
168585		Ron	Vlaar	CB	Holland	36	80	189	1906
170159		Felix	Bastians	CB	Germany	33	83	188	111774
172953		Adrian	Mariappa	CB	Jamaica	34	78	180	1795
176048		Kei	Kamara	ST	Sierra Leone	36	75	188	101112
176687		Andreas	Beck	RB	Germany	34	79	180	36
177766		Gaëtan	Bong	LB	Cameroon	33	74	187	1808
178249		Jirès	Kembo-Ekoko	RW	Congo DR	33	78	178	742
179515		Taras	Mykhalyk	CB	Ukraine	37	83	184	100765
183211		Milan	Škoda	ST	Czech Republic	35	86	190	266
183937		Gregory	van der Wiel	RB	Holland	33	78	183	111651
184312		Jonathan	Biabiany	RW	France	33	73	177	50
186098		Rodolfo	Cota	GK	Mexico	34	84	188	110781
186519	Juan Cala	Juan	Torres Ruiz	CB	Spain	31	84	187	472
186680	Raúl Fernández	Raúl	Fdez-Cavada Mateos	GK	Spain	33	86	196	472
186935	Claudemir	Claudemir	Domingues de Souza	CM	Brazil	33	72	185	1896
188042		Matías	Suárez	CAM	Argentina	33	75	183	111022
188506		Riccardo	Meggiorini	ST	Italy	35	78	182	192
189067		Miguel Angel	Britos	CB	Uruguay	36	85	190	1795
189615		Aaron	Cresswell	CB	England	31	66	170	19
189946		Vincent	Manceau	RB	France	32	70	176	1530
190507	Etxeita	Xabier	Etxeita Gorritxat.	CB	Spain	33	80	186	110839
190772		Matt	Besler	CB	United States	34	77	183	696
191011		Luigi	Sepe	GK	Italy	30	75	185	50
191726		Diego	Arismendi	CDM	Uruguay	33	82	189	110580
192371		Fabián	Rinaudo	CDM	Argentina	34	78	175	101084
192587		Artur	Ioniţă	CM	Moldova	30	73	184	1842
192766	Marc Muniesa	Marc	Muniesa Martínez	CB	Spain	29	72	179	110062
193554		Diafra	Sakho	ST	Senegal	31	79	184	74
194053		Lasse	Sobiech	CB	Germany	30	88	196	31
194904		Bill	Hamid	GK	United States	30	102	191	688
196069		José Pedro	Fuenzalida	RW	Chile	36	67	170	110975
198023	Ximo Navarro	Joaquín	Navarro Jiménez	CB	Spain	31	71	178	463
198190		Greg	Cunningham	LB	Republic of Ireland	30	70	183	1961
198861		Nampalys	Mendy	CDM	France	29	68	168	95
199103		Alexander	Domínguez	GK	Ecuador	34	84	195	101088
199562	Ilie Sánchez	Ilie	Sánchez Farres	CDM	Spain	30	77	180	696
200408		Ben	Gibson	CB	England	28	78	185	1796
200773		Alhassan	Wakaso	CDM	Ghana	29	76	180	1887
201342		Frederik	Sørensen	CB	Denmark	29	88	194	31
201931	Gabrìel	Gabrìel	Vasconcelos F.	GK	Brazil	28	90	193	199
202184		Joao	Plata	LW	Ecuador	29	61	157	111065
203067		Diego	Chará	CDM	Colombia	35	68	172	111140
204367		Benjamin	van Leer	GK	Holland	29	80	187	1904
204539		Luis	Advíncula	RB	Peru	31	80	178	480
204760		Charlie	Taylor	LB	England	27	70	185	1796
205243		Molla	Wagué	CB	Mali	30	87	191	55
205540		Jordon	Ibe	RM	England	25	81	176	1943
205942		Silviu	Lung	GK	Romania	32	84	189	101020
206407	João Pereira	João Pedro	da Silva Pereira	RB	Portugal	37	66	172	436
207559		Simon	Tibbling	CM	Sweden	26	74	175	269
208045		Oussama	Tannane	ST	Morocco	27	80	177	1903
208295		Romain	Saïss	CM	Morocco	31	84	188	110
209610		José Juan	Vázquez	CDM	Mexico	33	64	166	110144
210258	Renato Santos	Renato João	Saleiro Santos	RM	Portugal	29	75	177	573
210583		Marc	Stendera	CM	Germany	25	72	173	1824
210859		Vincent	Laurini	RB	France	32	72	173	110374
211108	Fernandinho	Da Conceição	Fernando Henrique	RM	Brazil	28	65	174	112165
212125		Lazar	Marković	RM	Serbia	27	65	175	9
212269		Riechedly	Bazoer	CM	Holland	24	74	184	175
212474	Tiago Silva	Tiago Rafael	Maia Silva	CM	Portugal	28	68	175	10019
213597		Diego	Valdés	CAM	Chile	27	75	178	1028
214209		Ayron	del Valle	ST	Colombia	32	67	175	101105
215070		Guillermo	Ortíz	CB	Argentina	28	80	183	110406
215228		Cristian	Lema	CB	Argentina	31	90	191	234
215985		Fernando	Monetti	GK	Argentina	32	76	180	101100
216433		Anwar	El Ghazi	RM	Holland	26	90	189	2
216468		Juan Pablo	Añor	RM	Venezuela	27	65	175	573
218359		Didier	Ndong	CDM	Gabon	27	75	179	106
219777	Chema Rodríguez	José Manuel	Rodríguez Benito	CB	Spain	29	80	189	1853
219808	Tana	Pedro Tanausú	Domínguez Placeres	RM	Spain	30	69	168	472
221838		Miloš	Jojić	CM	Serbia	29	79	177	101014
222515		Zinedine	Ferhat	RM	Algeria	28	70	180	1738
223142		Aytaç	Sulu	CB	Turkey	35	80	183	110502
223724		Stefan	Lainer	RB	Austria	28	70	175	191
225139		Keagan	Dolly	CAM	South Africa	28	70	170	70
225402	Bruno Gaspar	Bruno Miguel	Boialvo Gaspar	RB	Portugal	28	69	180	237
226211	Roger Guedes	Roger	Krug Guedes	RW	Brazil	24	67	184	111724
227873		Almamy	Touré	RB	Mali	25	72	183	69
229712	Jorge	Jorge Marco	de Oliveira Moraes	LB	Brazil	25	60	184	69
230936		Ádám	Nagy	CDM	Hungary	26	74	178	189
200353		Adama	Soumaoro	CB	France	29	93	186	65
200653		Guillermo	Burdisso	CB	Argentina	32	82	189	110093
200875		Emmanuel	Gigliotti	ST	Argentina	34	81	183	110093
201303		Rasmus	Falk Jensen	CAM	Denmark	29	65	177	819
201982		Jonathan	Schmid	RM	France	31	79	179	100409
202401	Patric	Anderson Patric	Aguiar Oliveira	ST	Brazil	33	82	189	113157
202911		Rodrigo	Mora	ST	Uruguay	33	74	170	1876
203979		Marvin	Bakalorz	CDM	Germany	31	78	180	485
204450		Pape Maly	Diamanka	CDM	Senegal	31	72	182	477
204738		Renato	Ibarra	RM	Ecuador	30	69	175	1879
205212	David Ferreiro	David	Ferreiro Quiroga	LM	Spain	33	63	170	110839
205402		Jean-Paul	Boëtius	LW	Holland	27	63	178	169
205869	Jairo	Jairo	Samperio Bustara	LM	Spain	28	69	173	28
206160		Amato	Ciciretti	RW	Italy	27	62	170	50
207472		Gōtoku	Sakai	RB	Japan	30	74	176	28
207984		Alfonso	González	CM	Mexico	26	70	173	1032
208260		Dimitrios	Kourmpelis	CDM	Greece	27	77	182	1884
208949		Nawaf	Al Abed	LM	Saudi Arabia	31	59	168	605
209818		Joshua	Brenet	LWB	Holland	27	74	181	10029
210439		Khalid	Boutaïb	ST	Morocco	34	82	189	113259
210520	Edgar Ié	Edgar Miguel	Ié	CB	Portugal	27	68	178	65
210972	Manquillo	Javier	Manquillo Gaitán	LB	Spain	27	76	178	13
211879		Janik	Haberer	CM	Germany	27	77	186	25
212207		Nicolae	Stanciu	CAM	Romania	28	71	169	267
212432	Cho Hyun Woo	Hyun Woo	Cho	GK	Korea Republic	29	75	189	2056
213353		Kaku Guélor	Kanga	CAM	Gabon	30	63	167	267
214076		Nicolás	Vikonis	GK	Uruguay	37	76	184	110152
214979		Juan	Musso	GK	Argentina	27	93	191	55
215322		Jonathan	Silva	LB	Argentina	27	75	180	100888
215886		Damir	Kreilach	CM	Croatia	32	78	186	111065
216055		Federico	Carrizo	LM	Argentina	30	68	170	110580
216706		Franco	Mussis	CDM	Argentina	29	75	174	1013
219536		Ignacio	Pussetto	RW	Argentina	25	74	180	55
220132	Zaldúa	Joseba	Zaldúa Bengoetxea	RB	Spain	29	70	176	457
220673		Renato	Tapia	CB	Peru	26	78	182	246
221697		Ollie	Watkins	LW	England	25	70	180	1925
221982		Patrick	Roberts	RM	England	24	58	167	110062
223066		Andrés	Chávez	ST	Argentina	30	80	184	111711
223524		Edoardo	Goldaniga	CB	Italy	27	82	188	111657
224202		Ivaylo	Chochev	CM	Bulgaria	28	80	190	1843
225305		Sinan	Gümüş	RM	Germany	27	71	179	325
225880		Jorge	Moreira	RB	Paraguay	31	77	174	1876
226419		Fabián	Sambueza	RM	Argentina	33	65	170	101101
228295		Rob	Holding	CB	England	25	75	189	1
230021		Joseph	Aidoo	CB	Ghana	25	83	178	673
231111		Alexander	Hack	CB	Germany	27	88	193	169
231240		Emre	Mor	LW	Turkey	24	64	169	450
232437		Federico	Ricca	LB	Uruguay	26	72	178	573
234128	Luiz Araújo	Luiz	Araújo	LM	Brazil	25	70	175	65
234924		Adama	Diakhaby	ST	France	25	74	188	1939
235875	Pol Lirola	Pol Mikel	Lirola Kosok	RB	Spain	23	78	183	111974
238463		Amadou	Haidara	RM	Mali	23	67	174	191
244383		Mykyta	Burda	CB	Ukraine	26	80	187	101047
50504434		Marco	Mancosu	CAM	Italy	32	76	182	347
50514936		Yohan	Benalouane	CB	Tunisia	34	86	185	14
50519690		Matías	Suárez	ST	Argentina	33	75	183	1876
50524985		Joel	Obi	CM	Nigeria	30	71	176	113142
50529912		Billy	Ketkeophomphone	ST	France	31	71	180	57
50533805		Aziz	Behich	LB	Australia	30	63	170	247
50539702		Leandro	Fernández	ST	Argentina	30	74	176	101088
50542168	Edgar Ié	Edgar Miguel	Ié	CB	Portugal	27	68	178	71
50545245		Diego	Valdés	CAM	Chile	27	75	178	110144
50547633		Fernando	Monetti	GK	Argentina	32	76	180	1013
50548734		Cedric	Amissi	CM	Burundi	31	70	173	112393
50554802		Ozan	Tufan	CDM	Turkey	26	79	179	113142
50563942		Ryota	Morioka	CAM	Japan	30	79	180	670
50565198		Samuel	Grandsir	RM	France	24	64	168	76
67320989		Lazar	Marković	RM	Serbia	27	65	175	144
100908575	Reguilón	Sergio	Reguilón Rodríguez	LB	Spain	24	67	180	481
219591		Stefan	Simič	CB	Czech Republic	26	79	189	47
220655	Valdivia	Wanderson	Ferreira Oliveira	CAM	Brazil	26	66	177	607
221201		Tim	Leibold	LB	Germany	27	72	174	171
221750	André Geraldes	André Geraldes	de Barros	RB	Portugal	30	74	181	459
222825		Chadrac	Akolo	RW	Congo DR	26	72	172	36
223751		Gideon	Jung	CB	Germany	26	76	189	28
224242		Derrick	Luckassen	CB	Holland	26	78	186	166
225060		Motaz	Hawsawi	CB	Saudi Arabia	29	77	180	112387
225426	Arana	Guilherme	Arana Lopes	LB	Brazil	24	68	176	481
225701		Pedro	Gallese	GK	Peru	31	77	189	110145
226045		Jesús	Gallardo	LM	Mexico	26	68	176	1032
226626	Ricardo Valente	Ricardo Jorge	Oliveira Valente	LW	Portugal	30	76	181	1893
226853		Jeremiah	St. Juste	CB	Holland	24	71	186	246
228236		Simon	Deli	CB	Côte d'Ivoire	29	84	192	266
229218	Pedro Rocha	Pedro	Rocha Neves	LW	Brazil	26	74	177	100767
229494	Miguel Vieira	Luís Miguel	Vieira da Silva	CB	Portugal	30	80	190	110831
229857		Stefano	Sensi	CDM	Italy	26	62	168	111974
230967		Brian	Lozano	LM	Uruguay	27	65	167	110144
231485		Axel	Tuanzebe	CB	England	23	72	185	2
232066		Walter	González	ST	Paraguay	26	79	185	110781
232869		Gen	Shoji	CB	Japan	28	74	182	101147
234468		Emanuel	Reynoso	CM	Argentina	25	65	177	1877
234943		Florian	Neuhaus	CM	Germany	24	74	183	23
236276		Arnaut	Groeneveld	LM	Holland	24	78	178	231
236699		Saša	Lukić	CDM	Serbia	24	77	183	54
237600		Bassem	Srarfi	RW	Tunisia	24	71	176	72
200754		Tolga	Ciğerci	CDM	Turkey	29	80	185	325
201043		Brecht	Dejaegere	CM	Belgium	30	72	174	674
201403	Álvaro	Álvaro	Vázquez García	ST	Spain	30	78	182	244
202058		Siniša	Anđelković	CB	Slovenia	35	82	186	205
202697		Jack	Stephens	CB	England	27	75	185	17
203774	Welthon	Welthon	Fiel Sampaio	ST	Brazil	29	80	180	1887
204401	Diogo Figueiras	Diogo José	Figueiras	RB	Portugal	30	64	168	1896
204699		Lorenzo	Melgarejo	LM	Paraguay	30	75	177	100767
205194	Ewerton	Ewerton José	Almeida Santos	CB	Brazil	32	89	188	171
205351		Alex	Pritchard	CAM	England	28	62	171	1939
205735		Manuel	Pucciarelli	ST	Italy	30	64	174	192
206124		Willard	Katsande	CDM	Zimbabwe	35	78	178	110929
206590	Moi Gómez	Moisés	Gómez Bordonado	CAM	Spain	27	71	176	110839
207650		Emil	Krafth	RB	Sweden	27	72	181	1816
208054		Leandro	Fernández	ST	Argentina	30	74	176	110093
208451		Robin	Quaison	CF	Sweden	27	77	183	169
209547		Stefan	Mitrović	CB	Serbia	31	84	189	76
210394		Jordan	Ikoko	RB	Congo DR	27	76	177	62
210468		Ilya	Kutepov	CB	Russia	28	84	192	100767
210831		Birger	Verstraete	CDM	Belgium	27	68	175	674
211048		Olarenwaju	Kayode	ST	Nigeria	28	65	174	101059
212107		Adis	Jahović	ST	FYR Macedonia	34	90	191	101033
212245		Yannick	Gerhardt	LB	Germany	27	81	184	175
212449		Mateo	Pavlović	CB	Croatia	31	94	196	1530
213134		Levin	Öztunalı	RM	Germany	25	80	184	169
213689		Ben	Pearson	CDM	England	26	71	176	1801
214594		Matías	Laba	CDM	Argentina	29	70	175	101083
214973		Lucas	Villafañez	RM	Argentina	29	65	169	113142
215103		Édson	Puch	LM	Chile	34	73	168	110150
215331		Leonardo	Jara	RB	Argentina	30	80	185	1877
215901	Rafael Vaz	Rafael	Vaz dos Santos	CB	Brazil	32	84	186	15029
216019		Damián	Musto	CDM	Argentina	34	82	182	110839
216447	Álvaro García	Álvaro	García Rivera	LM	Spain	28	59	168	480
217235	Zainadine	Zainadine	Chavango Júnior	CB	Mozambique	33	75	178	1893
218746	Pozo	José Ángel	Pozo la Rosa	CAM	Spain	25	65	170	480
219789		Hamari	Traoré	RB	Mali	29	57	174	74
220620		Florent	Hadergjonaj	RB	Switzerland	27	73	182	1939
220883		Rafael Santos	Borré	ST	Colombia	25	71	175	1876
221740		Enzo	Crivelli	ST	France	26	79	184	210
222457		Bernard	Mensah	CAM	Ghana	26	65	180	101020
223154		Ozan	Tufan	CDM	Turkey	26	79	179	326
224158		Sofyan	Amrabat	CM	Morocco	24	77	183	231
225263		Duje	Ćaleta-Car	CB	Croatia	24	89	192	219
226203		Joevin	Jones	LM	Trinidad and Tobago	30	73	180	110502
227275		Agustín	Rossi	GK	Argentina	25	94	194	1877
228698		Viktor	Kovalenko	CAM	Ukraine	25	75	182	101059
230065		Suat	Serdar	CM	Germany	24	75	184	34
231138		Christian	Bassogog	ST	Cameroon	25	75	175	111779
232270		Timothy	Fosu-Mensah	RB	Holland	23	78	185	144
232693		Chidozie	Awaziem	CB	Nigeria	24	78	189	236
234457		Oghenekaro	Etebo	CDM	Nigeria	25	70	176	1806
234730		Valentin	Rosier	RB	France	24	71	175	110569
234949	João Amaral	João Pedro	Reis Amaral	RM	Portugal	29	65	172	873
236007		Ezequiel	Barco	LM	Argentina	22	66	167	112885
239875	Bebeto	Roberto Jesus	Machado Beto Alves	RB	Brazil	31	70	174	1893
50483156		Steven	Davis	CM	Northern Ireland	36	70	173	86
50504483		Marco	Andreolli	CB	Italy	35	80	187	192
50514825		Lucas	Barrios	ST	Paraguay	36	84	188	111711
50522184		Osvaldo	Martínez	CM	Paraguay	35	71	165	101114
50524284	David Simão	David Martins	Simão	CM	Portugal	31	74	183	230
50529574		Lorenzo	Crisetig	CM	Italy	28	80	183	112026
50532523		Emmanuel	Gigliotti	ST	Argentina	34	81	183	1882
50537808		Amato	Ciciretti	RW	Italy	27	62	170	1847
50541269	Mattheus Oliveira	Mattheus A.	Gama de Oliveira	CAM	Brazil	27	76	182	1887
50543855		Nicolae	Stanciu	CAM	Romania	28	71	169	112387
50546751		Édson	Puch	LM	Chile	34	73	168	110147
50548116		Juan Pablo	Añor	RM	Venezuela	27	65	175	110839
50548627		Rufat	Dadashov	ST	Azerbaijan	29	84	190	531
50552257		Valentin	Vada	CM	Argentina	25	71	175	1819
50557851		Joevin	Jones	LM	Trinidad and Tobago	30	73	180	111144
50562655		Josip	Mišić	CM	Croatia	27	75	187	393
50565168		Barış	Atik	CAM	Turkey	26	72	170	503
50571351		Merveille	Biankadi	LF	Congo	26	78	181	27
84125033		Maximilian	Wolfram	RW	Germany	24	75	185	110591
218745		Olivier	Ntcham	CM	France	25	80	180	78
220131		Mbaye	Diagne	ST	Senegal	29	86	191	111339
220685	Léo Bonatini	Leonardo B.	Lohner Maia	ST	Brazil	27	83	184	110
221306		Michael	Barrios	RM	Colombia	30	65	162	695
221331		Luca	Mazzitelli	CM	Italy	25	76	184	110556
222148		Ondrej	Duda	CAM	Slovakia	26	74	181	166
222707	Marcos Guilherme	Marcos G.	Santos Matos	RM	Brazil	26	58	170	112408
223247		Nelson	Acevedo	CDM	Argentina	33	77	179	111716
223978	Manu García	Manuel	García Alonso	CAM	Spain	23	65	170	1809
224813		Kenneth	Saief	LM	United States	27	77	176	229
225403		İrfan Can	Kahveci	CAM	Turkey	26	67	176	101014
225926	Pere Milla	Pere	Milla Peña	CAM	Spain	28	70	179	467
226060		Roger	Assalé	ST	Côte d'Ivoire	27	67	167	900
226539		Younes	Namli	RM	Denmark	27	63	181	1914
226807		Cristian	Roldan	CDM	United States	26	75	173	111144
228312		Robin	Lod	CAM	Finland	28	76	180	459
228942		Dion	Cools	RM	Belgium	25	78	184	231
229473	Costinha	João José	Pereira da Costa	CM	Portugal	28	64	170	665
229927	Gerson	Gerson	Santos da Silva	CM	Brazil	24	72	184	110374
231600	Marc Navarro	Marc	Navarro Ceciliano	RB	Spain	26	79	188	1795
232310	Maurício	Maurício	de Carvalho António	CB	Brazil	29	82	183	111575
233550		Samuel	Grandsir	RM	France	24	64	168	69
234575	Diogo Leite	Diogo Filipe	Pinto Leite	CB	Portugal	22	73	188	236
235454		Malang	Sarr	CB	France	22	73	182	72
237135	Davidson	Davidson	da Luz Pereira	LM	Brazil	30	62	177	1887
240493		Alexandros	Paschalakis	GK	Greece	32	92	197	393
244368		Artem	Besedin	ST	Ukraine	25	76	185	101047
50497179		Ismael	Sosa	RM	Argentina	34	74	179	110147
50509739		Stefano	Okaka	ST	Italy	31	90	186	55
50514932		Aurélien	Chedjou	CB	Cameroon	36	77	184	742
50516658		Michał	Pazdan	CB	Poland	33	78	181	101007
50522801		Robert Marcus	Sandberg	GK	Sweden	30	80	191	917
50524019		Fabián	Rinaudo	CM	Argentina	34	78	175	110580
50526443		Gonzalo	Jara	CB	Chile	35	78	178	101083
50530516		Nicolas	Isimat-Mirin	CB	France	29	80	189	327
50533706		Siniša	Anđelković	CB	Slovenia	35	82	186	110912
50539899		Samuele	Longo	ST	Italy	29	81	185	111434
50542089	Fran Sol	Francisco	Sol Ortiz	ST	Spain	29	77	181	101047
50545857		Ayron	del Valle	ST	Colombia	32	67	175	110150
50547727		Antonio	Di Gaudio	LW	Italy	31	63	169	206
50550007		Didier	Ndong	CDM	Gabon	27	75	179	62
50553579		Peter	Žulj	CM	Austria	28	80	185	229
50559521		Almamy	Touré	RB	Mali	25	72	183	1824
50564586		Takehiro	Tomiyasu	CB	Japan	22	84	187	680
50570111		Amadou	Haidara	CM	Mali	23	67	174	112172
67347983		Luke	Leahy	LB	England	28	73	178	1803
219525		Ezequiel	Cerutti	RM	Argentina	29	75	179	110093
220209		Kemar	Lawrence	LB	Jamaica	28	73	178	689
220702		Gastón	Silva	CB	Uruguay	27	74	185	110093
221310		Andrés Felipe	Roa	CAM	Colombia	28	69	175	111711
221919		Arber	Zeneli	RW	Kosovo	26	72	176	1913
222634		Isaac	Success	RM	Nigeria	25	90	182	1795
223198		Ali	Adnan	LB	Iraq	27	70	185	39
223765		Robert	Bauer	LB	Germany	26	76	183	171
224428		Juan Ferney	Otero	ST	Colombia	26	70	182	1816
225252		Jhon	Duque	CDM	Colombia	29	68	174	101105
225646		Camilo	Mayada	RB	Uruguay	30	75	174	1876
225995		Petar	Stojanović	RB	Slovenia	25	72	178	211
226518		Antonio	Milić	CB	Croatia	27	85	189	229
226803		Tim	Parker	CB	United States	28	88	188	689
227789	Kim Seung Joon	Seung Joon	Kim	RW	Korea Republic	26	73	181	1473
228821		Zinédine	Machach	CAM	France	25	77	184	112409
229221	William	William	de Asevedo Furtado	LB	Brazil	26	67	171	175
229758		Rade	Krunić	CM	Bosnia and Herzegovina	27	74	184	1746
229980		César	Montes	CB	Mexico	24	70	191	1032
231041		Casimir	Ninga	ST	Chad	28	81	186	210
231391	João Carvalho	João António	Antunes Carvalho	CAM	Portugal	24	66	170	14
231838		Maximilian	Wöber	CB	Austria	23	82	189	245
232517		Nicolás	Silva	RM	Argentina	31	58	163	110404
234624		Bakaye	Dibassy	LB	Mali	31	74	183	1816
235002		Lazar	Rosić	CB	Serbia	28	83	190	1896
236355	Luiz Felipe	Luiz Felipe	Ramos Marchi	CB	Brazil	24	80	187	46
237678		Ibrahima	Konaté	CB	France	22	84	192	112172
239088		Rafael	Pérez	CB	Colombia	31	82	186	101101
241486		Jules	Koundé	CB	France	22	70	178	59
50481926		Jaroslav	Drobný	GK	Czech Republic	41	90	192	110636
50509737		David	Williams	ST	Australia	33	73	174	111766
50520951	Nélson Oliveira	Nélson Miguel	Castro Oliveira	ST	Portugal	29	82	186	1793
50524208		Reinhold	Yabo	RM	Germany	29	70	177	159
50535551		Lucas	Andersen	CAM	Denmark	26	73	185	820
50536060		George	Saville	CM	Northern Ireland	28	73	176	12
50539381	Filipe Augusto	Filipe Augusto	Carvalho Souza	CDM	Brazil	27	80	183	744
50546254		Sebastián	Pérez	CM	Colombia	28	72	175	110147
50546737		Enzo	Kalinski	CM	Argentina	34	71	170	101083
50551239		Stefan	Simič	CB	Czech Republic	26	79	189	111657
50554896		Juan Martín	Lucero	ST	Argentina	29	72	179	111706
50560469		Zinédine	Machach	CAM	France	25	77	184	110734
50565126		Miha	Zajc	CAM	Slovenia	27	76	179	326
50569230		Katsuya	Nagato	LB	Japan	26	71	172	112836
50576192		Barış	Alıcı	RM	Turkey	24	70	180	113259
2147		Maarten	Stekelenburg	GK	Holland	38	92	197	7
49000		Allan	McGregor	GK	Scotland	39	84	183	86
116308		Rod	Fanni	CB	France	39	81	186	111139
142499	Aitor Sanz	Aitor	Sanz Martín	CDM	Spain	36	71	181	260
143809		Muhammet	Demir	ST	Turkey	29	69	180	101041
152514		Jason	Puncheon	CM	England	35	66	173	1799
157716		Marco	Russ	CB	Germany	36	92	190	1824
159818	Élton	Élton José	Xavier Gomes	CAM	Brazil	35	60	158	112391
163804		Julien	Féret	CM	France	39	76	187	57
165232		Olivier	Veigneau	LB	France	36	70	176	111339
167706		Nicklas	Bendtner	ST	Denmark	33	84	193	298
169324		Andreas	Ulmer	LB	Austria	35	69	175	191
172077		José María	Basanta	CB	Argentina	37	78	188	1032
173703		Rhys	Williams	CB	Australia	33	78	185	112391
176605		Pablo	Armero	LB	Colombia	34	73	174	101099
178323		Abdou Razack	Traoré	CAM	Burkina Faso	32	71	174	101033
178746	Miguel Torres	Miguel	Torres Gómez	CB	Spain	35	74	185	573
179972		Eren	Derdiyok	ST	Switzerland	33	92	191	325
181383		Jakob	Johansson	CM	Sweden	31	86	187	74
182435		Mitchell	Langerak	GK	Australia	32	84	193	112092
182763		Nikica	Jelavić	ST	Croatia	35	88	188	112977
183422		Jonny	Howson	CM	England	33	77	180	12
184136	Orlando Sá	Orlando Carlos	Braga de Sá	ST	Portugal	33	85	188	232
232543		Sebastián	Bertoli	GK	Argentina	43	81	185	110581
234126	Vitor Bueno	Vitor	Frezarin Bueno	CAM	Brazil	26	79	183	101047
234568	Gedson Fernandes	Gedson	Carvalho Fernandes	CM	Portugal	22	71	181	234
234930	Pedro Rebocho	Pedro Miguel	Braga Rebocho	LB	Portugal	26	74	170	62
235623	Álvaro Jiménez	Álvaro José	Jiménez Guerrero	RM	Spain	26	71	176	459
237670	Bruno Xadas	Bruno Alexandre	Vieira Almeida	RM	Portugal	23	72	179	1896
240679		Teun	Koopmeiners	CM	Holland	23	77	183	1906
50496126		Chinedu	Obasi	ST	Nigeria	35	79	188	433
50508551		Manuel	Iturra	CDM	Chile	37	73	174	483
50510215		Erik	Pieters	LB	Holland	33	84	183	1816
50515948		Jay	Simpson	ST	England	32	84	180	112134
50519587		Aatif	Chahechouhe	LM	Morocco	35	68	176	101037
50523997	Renatinho	Renato	Ribeiro Calixto	RW	Brazil	32	68	167	112983
50525202		Diafra	Sakho	ST	Senegal	31	79	184	742
50529329		Giannelli	Imbula	CM	France	28	77	186	480
50532402		Tolga	Ciğerci	CDM	Turkey	29	80	185	326
50536891		Molla	Wagué	CB	Mali	30	87	191	14
50540461		George	Williams	ST	Wales	25	73	172	561
50543917		Riechedly	Bazoer	CM	Holland	24	74	184	236
50546829		Gino	Peruzzi	RB	Argentina	29	71	178	1013
50548354		Franco	Mussis	CDM	Argentina	29	75	174	101084
50551406		Luca	Rizzo	RM	Italy	29	80	185	112409
50552321		Renato	Tapia	CDM	Peru	26	78	182	1907
50561360	Jorge	Jorge Marco	de Oliveira Moraes	LB	Brazil	25	60	184	236
50564341		Chidozie	Awaziem	CB	Nigeria	24	78	189	101037
50566435		Bernard	Tekpetey	RM	Ghana	23	69	172	10030
67321133		Riechedly	Bazoer	CM	Holland	24	74	184	1903
218540		Ambroise	Oyongo	LWB	Cameroon	30	68	175	70
219626		José Luis	Gómez	RB	Argentina	27	63	173	110395
220337		Junior	Alonso	CB	Paraguay	28	82	184	450
221250		Gerónimo	Poblete	CDM	Argentina	28	63	173	1013
221641		Wilfried	Kanon	CB	Côte d'Ivoire	28	85	188	650
222368		Anton	Miranchuk	CAM	Russia	25	72	183	100765
222844	Walace	Walace	Souza Silva	CDM	Brazil	26	75	188	485
223248		Juan Martín	Lucero	ST	Argentina	29	72	179	111678
223816		Jonathan	Rodríguez	ST	Uruguay	28	77	179	110144
225182		Jarlan	Barrera	CAM	Colombia	25	73	171	101101
225456		Joel	Tagueu	ST	Cameroon	27	78	178	1893
225673		Kasim	Adams Nuhu	CB	Ghana	26	83	190	10029
226289		Uche	Agbo	CDM	Nigeria	25	76	185	232
226627		Takumi	Minamino	ST	Japan	26	67	174	191
227732		Anastasios	Donis	ST	Greece	24	76	178	36
228736		Wuilker	Faríñez	GK	Venezuela	23	81	181	101105
229255	Charles	Charles Marcelo	da Silva	GK	Brazil	27	84	186	1893
229595		Lucas	Rodríguez	CAM	Argentina	24	64	168	101083
230850		Gojko	Cimirot	CM	Bosnia and Herzegovina	28	74	178	232
231263		Jérémy	Gélin	CB	France	24	79	183	74
231826		Yann	Karamoh	RM	France	23	77	185	44
232459	Carlos Ponck	Carlos	Santos Rodrigues	CB	Cape Verde Islands	26	84	183	666
233738	Zubeldia	Igor	Zubeldia Elorza	CM	Spain	24	79	180	457
235320		Bjørn	Johnsen	ST	Norway	29	81	195	1906
236639	Xeka	Miguel Ângelo	da Silva Rocha	CM	Portugal	26	82	186	65
237799		Kenyu	Sugimoto	ST	Japan	28	79	187	101148
238856	Pedro Sá	Pedro Miguel	Cunha Sá	CDM	Portugal	27	70	175	10031
240359		Omar	Alderete	CB	Paraguay	24	77	188	111711
244376		Volodymyr	Shepelev	CDM	Ukraine	24	73	184	101047
50498496		Neil	Danns	CM	Guyana	38	78	175	1945
50509819	Sergio Sánchez	Sergio	Sánchez Ortega	CB	Spain	35	78	185	1968
50518320		Geoff	Cameron	CDM	United States	36	84	191	15
50521133	Diego Farías	Diego	Farías da Silva	CF	Brazil	31	66	173	1746
50525819		Knowledge	Musona	CF	Zimbabwe	31	71	173	2007
50535882	Edgar Badía	Edgar	Badía Guardiola	GK	Spain	29	79	180	468
50536174	Hervías	Pablo	Hervías Rubio	RM	Spain	28	68	174	462
50545806		Yeison	Gordillo	CDM	Colombia	29	73	176	111722
50547039		Ibrahima	Seck	CDM	Senegal	31	88	192	15005
50553567		Arber	Zeneli	LM	Kosovo	26	72	176	379
50559437	Kim Seung Joon	Seung Joon	Kim	RW	Korea Republic	26	73	181	111588
50564517		Gen	Shoji	CB	Japan	28	74	182	1809
50567869		Darko	Brasanac	CM	Serbia	29	73	178	463
67340702		Maximilian	Wöber	CB	Austria	23	82	189	481
84131448		Guven	Yalçin	ST	Turkey	22	77	184	327
46175		Markus	Rosenberg	ST	Sweden	38	81	184	320
110974	Riesgo	Asier	Riesgo Unamuno	GK	Spain	37	76	185	467
142818		Fabián	Cubero	CB	Argentina	42	72	175	101088
143799		Yalçın	Ayhan	CB	Turkey	39	82	192	101007
152922		Edgar	Barreto	CM	Paraguay	37	79	180	1837
156650		Yoan	Gouffran	LM	France	35	76	176	101026
158956		Julio	Barroso	CB	Argentina	36	71	175	110980
162123		Fernando	Amorebieta	CB	Venezuela	36	77	190	110093
164857	Edinho	Arnaldo Edi	Lopes da Silva	ST	Portugal	39	75	182	10019
165788		Leonardo	Ulloa	ST	Argentina	35	89	188	110147
167936		Jérémy	Sorbon	CB	France	38	79	183	62
169345		Markus	Suttner	LB	Austria	34	73	179	1808
172684	Javi Varas	Javier	Varas Herrera	GK	Spain	38	74	182	110832
176029	Hélder Barbosa	Hélder Jorge	Rodrigues Barbosa	LW	Portugal	34	67	172	111340
177712		Kévin	Monnet-Paquet	LM	France	32	81	184	1819
178475		Daniel	Ciofani	ST	Italy	36	82	190	111657
179565		Mario	Gavranović	ST	Switzerland	31	76	175	211
179891		Marcel	Heller	RM	Germany	35	70	175	110502
181456		Romain	Genevois	CB	Haiti	33	79	182	210
181560		Mapou	Yanga-M'Biwa	CB	France	32	77	184	66
182864		Diego	Vera	ST	Uruguay	36	74	181	111715
183519		Nacer	Barazite	CAM	Holland	31	80	188	113259
230964		Michael	Santos	ST	Uruguay	28	66	174	100888
231638		Adalberto	Peñaranda	ST	Venezuela	24	83	185	1795
232099		Marko	Grujić	CDM	Serbia	25	82	191	166
232905		Junya	Ito	RM	Japan	28	68	176	101145
233478		Miha	Zajc	CAM	Slovenia	27	76	179	1746
235565		Dylan	Bronn	CB	Tunisia	26	75	184	674
236499	Douglas Luiz	Douglas Luiz	Soares de Paulo	CM	Brazil	23	70	178	10
236786		Martin	Terrier	ST	France	24	73	184	66
238095		Nikola	Milenković	CB	Serbia	23	90	195	110374
239433		Nemanja	Maksimović	CDM	Serbia	26	75	184	1860
241461	Ferrán Torres	Ferrán	Torres García	RM	Spain	21	72	180	461
50484162		Jason	Puncheon	CM	England	35	66	173	1939
50514892		Andrew	Redmayne	GK	Australia	32	83	194	111400
50519982		Fabrizio	Cacciatore	RB	Italy	34	85	182	1842
50521371		Samuel	Armenteros	ST	Sweden	31	80	181	112026
50531923		Youness	Mokhtar	LM	Morocco	29	72	179	917
50535898		Marcello	Trotta	ST	Italy	28	85	188	111657
50539268		Connor	Jennings	LM	England	30	72	183	15048
50540937	Kévin Rodrigues	Kévin Manuel	Rodrigues	LB	Portugal	27	70	170	457
50546698		Diego	Braghieri	CB	Argentina	34	86	186	111678
50547213		Matt	Miazga	CB	United States	26	84	193	1793
50551985		Junior	Alonso	CB	Paraguay	28	82	184	1877
50557937		Uche	Agbo	CDM	Nigeria	25	76	185	480
50563714		Walter	González	ST	Paraguay	26	79	185	110147
50566266	Perdigão	Jeferson	Fernandes Macedo	RW	Brazil	30	77	185	1898
50575969		Danny	Mullen	LW	Scotland	26	63	177	100805
84100543		Wilson	Morelo	ST	Colombia	34	70	172	110406
24248		David	Pizarro	CM	Chile	41	65	170	15029
51257		Peter	Crouch	ST	England	40	75	201	1806
137109		Stijn	Schaars	CDM	Holland	37	75	178	1913
142942		Javier	Gandolfi	CB	Argentina	40	78	178	112670
150477		Romain	Salin	GK	France	37	76	189	237
155344	Shin Hwa Yong	Hwa Yong	Shin	GK	Korea Republic	38	78	183	983
158800		Willem	Janssen	CB	Holland	35	75	186	1903
160292		Ben	Watson	CDM	England	36	80	181	14
162047	Zapater	Alberto	Zapater Arjol	CDM	Spain	36	82	180	244
165190		Joe	Ledley	CDM	Wales	34	73	183	91
167379	Danilo Silva	Danilo	Aparecido da Silva	RB	Brazil	34	70	185	112996
168732		Danijel	Milićević	CAM	Bosnia and Herzegovina	35	63	172	2013
172283	Carlos Martínez	Carlos	Martínez Díaz	RB	Spain	35	79	189	110827
173132		Federico	Dionisi	ST	Italy	34	68	179	111657
176545		Christian	Marrugo	CAM	Colombia	36	75	177	101105
178251		Romain	Danzé	RB	France	35	73	184	74
178600		Uğur	Demirok	CB	Turkey	33	85	190	101033
179820		Luis	Robles	GK	United States	37	91	185	689
180754		Kengo	Nakamura	CAM	Japan	40	66	175	111730
181459		Vassilis	Torosidis	RB	Greece	36	82	186	280
182440		Robbie	Kruse	LM	Australia	32	66	180	160
183287		Fabien	Lemoine	CDM	France	34	70	175	217
184082		Lamine	Koné	CB	Côte d'Ivoire	32	90	189	76
184472		Martin	Olsson	LB	Sweden	33	81	178	1960
186156		Luke	Ayling	RB	England	29	72	185	8
186567		Khaled	Adénon	CB	Benin	36	72	181	1816
186992		Jesús	Dueñas	CM	Mexico	32	73	174	1970
188334		Fabrizio	Cacciatore	RB	Italy	34	85	182	192
188541		Pasquale	Schiattarella	CM	Italy	34	73	178	112791
188762		Igor	Lewczuk	CB	Poland	36	85	187	59
189303	Nélson Oliveira	Nélson Miguel	Castro Oliveira	ST	Portugal	29	82	186	1792
189715		Marko	Vejinović	CM	Holland	31	76	186	1906
190560		Omar	Gonzalez	CB	United States	32	92	196	101114
190947		David	Jensen	GK	Denmark	29	92	195	1903
192091	Welinton	Welinton	Souza Silva	CB	Brazil	32	81	181	113142
192490	Juan Villar	Juan	Villar Vázquez	RM	Spain	33	72	182	479
193133		Jens	Stryger Larsen	CB	Denmark	30	82	182	55
193549		Shaun	Hutchinson	CB	England	30	80	188	97
194171		Knowledge	Musona	CF	Zimbabwe	31	71	173	229
196935	Ignasi Miquel	Ignasi	Miquel i Pons	CB	Spain	28	80	189	1860
198076		Aymen	Abdennour	CB	Tunisia	32	84	187	219
198554		Anthony	Ujah	ST	Nigeria	30	82	183	169
199387		Pablo	Chavarría	ST	Argentina	33	74	185	379
199568		Konstantinos	Lamprou	GK	Greece	29	84	178	245
200106		Aras	Özbiliz	RW	Armenia	31	72	175	1907
200446	Camilo	Camilo	da Silva Sanvezzo	ST	Brazil	33	74	169	110150
201025		Gaëtan	Bussmann	LB	France	30	79	184	169
201509	Juankar	Juan Carlos	Pérez López	LB	Spain	31	72	179	573
202078		Darlington	Nagbe	CM	United States	31	75	175	112885
202491		Tom	Carroll	CM	England	29	66	178	1960
203544		Chris	Löwe	LB	Germany	32	68	175	1939
203903		Lucas	Andersen	CAM	Denmark	26	73	185	322
204526	Hervías	Pablo	Hervías Rubio	RM	Spain	28	68	174	467
205364		Filip	Novák	LB	Czech Republic	31	78	184	436
205598	André Sousa	André Alexandre	Carreira Sousa	CAM	Portugal	31	78	181	459
206167		Sanjin	Prcić	CDM	Bosnia and Herzegovina	27	73	181	1853
207645		Modou	Barrow	LM	Gambia	28	63	176	1793
208088	Sergi Samper	Sergi	Samper Montañá	CDM	Spain	26	73	182	241
208522		Hörður	Magnússon	CB	Iceland	28	81	190	315
210111	José Rodríguez	José	Rodríguez Martínez	CDM	Spain	26	75	180	634
210313		Thomas	Murg	CAM	Austria	26	70	173	254
211061		Alexandru	Maxim	CAM	Romania	31	73	177	169
211107	Frederico Venâncio	Frederico André	Ferrão Venâncio	CB	Portugal	28	81	186	1887
211862		André	Hahn	RM	Germany	30	79	185	100409
212214		Augusto	Solari	RM	Argentina	29	69	176	101085
212424		Wil	Trapp	CDM	United States	28	68	173	687
213313		Rémi	Walter	CM	France	26	73	174	72
234618	Perdigão	Jeferson	Fernandes Macedo	RW	Brazil	30	77	185	518
234772	Salvi Sánchez	Salvador	Sánchez Ponce	RM	Spain	30	63	175	1968
236221		Darko	Brasanac	CM	Serbia	29	73	178	449
236679	Melendo	Óscar	Melendo Jiménez	RM	Spain	23	63	167	452
237209		Matej	Mitrović	CB	Croatia	27	85	187	231
238305	Nacho Vidal	Ignacio	Vidal Miralles	RB	Spain	26	73	180	479
239593		Kaveh	Rezaei	ST	Iran	29	77	184	231
241166		Sergiy	Rybalka	CDM	Ukraine	31	70	176	101041
244470		Vladimír	Coufal	RB	Czech Republic	28	75	175	266
50497141		Nicolás	Navarro	GK	Argentina	36	87	191	110150
50504332	Javi Varas	Javier	Varas Herrera	GK	Spain	38	74	182	110839
50521128		Josef	Šural	ST	Czech Republic	31	80	184	113142
50521623		Yevhen	Seleznyov	ST	Ukraine	36	87	187	573
50533924		Simon	Zoller	ST	Germany	30	70	179	160
50535895		Kerim	Frei	LM	Austria	27	70	171	101014
50538225		Stef	Peeters	CM	Belgium	29	74	188	15005
50540157		Thomas	Foket	RB	Belgium	26	81	178	379
50546697		Damián	Pérez	LB	Argentina	32	66	168	1013
50549698		Mohamed	Abarhoun	CB	Morocco	32	75	187	101037
50552333	Léo Bonatini	Leonardo B.	Lohner Maia	ST	Brazil	27	83	184	14
50555464		Jonathan	Rodríguez	ST	Uruguay	28	77	179	1878
50561121	Costinha	João José	Pereira da Costa	CM	Portugal	28	64	170	518
50564553		Junya	Ito	RM	Japan	28	68	176	673
50568147	Douglas Luiz	Douglas Luiz	Soares de Paulo	CM	Brazil	23	70	178	110062
67346545		Takefusa	Kubo	RM	Japan	20	67	173	101150
6826		Gareth	Barry	CDM	England	40	78	183	109
52326		Eldin	Jakupović	GK	Switzerland	36	85	191	95
121937		Michael	Rensing	GK	Germany	37	93	190	110636
142822		Jonás	Gutiérrez	CM	Argentina	38	83	184	111710
145996	Seoane	Fernando	Seoane Antelo	CDM	Spain	38	75	179	110831
154634		Manuel	Pasqual	LB	Italy	39	71	178	1746
157804		Scott	Carson	GK	England	35	86	190	91
158969		Leonardo	Pisculichi	CAM	Argentina	37	73	174	111019
162981		James	Morrison	CAM	Scotland	35	64	178	109
165493		Nicolás	Navarro	GK	Argentina	36	87	191	1013
167601		Kirill	Nababkin	LB	Russia	34	77	184	315
172019		Pablo	Mouche	ST	Argentina	33	72	177	1013
172960		Lewis	Grabban	ST	England	33	78	183	14
176137		Jelle	Vossen	ST	Belgium	32	79	183	231
176717		Per	Karlsson	CB	Sweden	35	81	184	433
178571	Bracali	Rafael	Wihby Bracali	GK	Brazil	40	78	185	1898
179516		Rouwen	Hennings	ST	Germany	33	80	180	110636
180706		Craig	Cathcart	CB	Northern Ireland	32	83	190	1795
181445		Rasmus	Bengtsson	CB	Sweden	35	80	186	320
181483		Mile	Jedinák	CDM	Australia	37	78	188	2
182731		Brian	Sarmiento	CAM	Argentina	31	66	166	110396
183256		Henri	Saivet	CM	Senegal	30	76	174	742
183581		Jesús	Molina	CDM	Mexico	33	77	186	1032
184417	Sergio Tejera	Sergio	Tejera Rodríguez	CDM	Spain	31	75	180	110827
185199		Sebastian	Ribas	ST	Uruguay	33	80	189	110395
186158		Kyle	Bartley	CB	England	30	94	194	109
186745		Matías	Pérez García	CAM	Argentina	36	64	165	111715
188058		Artem	Kravets	ST	Ukraine	32	79	189	101020
188616		Marco	Sau	ST	Italy	33	65	169	1842
188992		Marcelo	Estigarribia	LM	Paraguay	33	74	181	110406
189167		Aron	Gunnarsson	CDM	Iceland	32	86	178	1961
189485	Diego Farías	Diego	Farías da Silva	CF	Brazil	31	66	173	1842
189975		Yevhen	Seleznyov	ST	Ukraine	36	87	187	111340
190664		Julian	Schieber	ST	Germany	32	83	186	100409
191688	Botía	Alberto Tomás	Botía Rabasco	CB	Spain	32	96	189	605
192321		Christopher	Buchtmann	CM	Germany	29	72	175	110329
192634	Marc Mateu	Marc	Mateu Sanjuán	LM	Spain	31	71	180	477
193278		Chris	Mavinga	CB	Congo DR	30	78	185	111651
193945		Necip	Uysal	CDM	Turkey	30	72	180	327
194334	Daniel Ayala	Daniel	Sánchez Ayala	CB	Spain	30	84	190	12
197031		Marvin	Ducksch	ST	Germany	27	79	188	110636
198261		Tim	Ream	CB	United States	33	79	186	144
198705		Andy	Najar	RB	Honduras	28	69	170	229
199409	Deivid	David Omar	Rodríguez Barrera	CB	Spain	32	73	189	472
199729		Daniel	Royer	LM	Austria	31	73	177	689
200159		Stefan	Ortega	GK	Germany	28	88	185	159
200473		Steven	Skrzybski	RW	Germany	28	70	175	34
201016		Oliver	Sorg	RB	Germany	31	75	175	485
201967		Gustav	Wikheim	LW	Norway	28	70	182	1516
202106		Marvin	Knoll	CB	Germany	30	81	184	110329
203304		Britt	Assombalonga	ST	Congo DR	28	78	178	12
204125		Jan	Bořil	RB	Czech Republic	30	75	175	266
204412		George	Saville	CM	Northern Ireland	28	73	176	97
205210		Oscar	Lewicki	CDM	Sweden	29	68	171	320
205630		Luciano	Abecasis	RB	Argentina	31	73	175	111706
206238	Iván López	Iván	López Mendoza	RB	Spain	27	69	175	15019
207722	Cristiano	Cristiano	da Silva	ST	Brazil	34	83	183	101145
208137	Lucas Torró	Lucas	Torró Marset	CDM	Spain	27	83	190	1824
208621	Óscar Plano	Óscar	Plano Pedreño	LM	Spain	30	72	182	462
209723		Matías	Britos	ST	Uruguay	32	63	169	110150
210320		Ibrahima	Mbaye	RB	Senegal	26	70	188	189
210723		Niko	Gießelmann	LB	Germany	29	75	182	110636
211098		Bradley	Dack	CAM	England	27	71	175	3
211556	Carlos Hernández	Carlos	Hernández Alarcón	CB	Spain	30	81	185	110827
211999		Rani	Khedira	CDM	Germany	27	84	188	100409
212350		Loïs	Diony	ST	France	28	82	183	1819
213061		Mu	Kanazaki	ST	Japan	32	70	180	113160
213242		Adrien	Tameze	CDM	France	27	78	180	72
213777		Iver	Fossum	CM	Norway	25	73	180	485
238439		Paolo	Maldini	CB	Italy	53	83	186	112658
151207162		Aymeric	Laporte	CB	France	27	85	189	10
168003603		Ousmane	Dembélé	RW	France	24	67	178	241
184765643		Andrew	Robertson	LB	Scotland	27	64	178	9
201541925		Duván	Zapata	ST	Colombia	30	88	189	39
214100		Ruud	Gullit	CF	Holland	58	88	191	112658
84098542	Alex Telles	Alex	Nicolao Telles	LB	Brazil	28	71	181	236
100837027		Gareth	Bale	ST	Wales	32	81	185	243
100881236		Dakonam	Djené	CB	Togo	29	71	176	1860
117637957		David	Alaba	CM	Austria	29	76	180	21
134407241	Parejo	Daniel	Parejo Muñoz	CM	Spain	32	74	182	461
151176402		Ivan	Perišić	LM	Croatia	32	80	186	44
167974716		Memphis	Depay	LW	Holland	27	78	176	66
184742150		Kostas	Manolas	CB	Greece	30	83	189	48
218281221		Axel	Witsel	CDM	Belgium	32	81	188	22
4231	Rivaldo	Rivaldo Vítor	Borba Ferreira	LW	Brazil	49	75	186	112658
190044		Bobby	Moore	CB	England	80	72	178	112658
238388		Dennis	Bergkamp	CF	Holland	52	78	183	112658
50545522	Thiago Mendes	Thiago Henrique	Mendes Ribeiro	CDM	Brazil	29	78	176	65
84087898		Ahmed	Musa	ST	Nigeria	28	62	170	112139
84111930		Presnel	Kimpembe	CB	France	25	80	189	73
134408541		Stephan	El Shaarawy	LM	Italy	28	72	178	52
134457858	Éder Militão	Éder	Gabriel Militão	CB	Brazil	23	79	186	236
167984776		Rodrigo Javier	De Paul	CM	Argentina	27	70	178	55
51		Alan	Shearer	ST	England	50	78	182	112658
1605		Robert	Pirès	LM	France	47	74	187	112658
51539		Edwin	van der Sar	GK	Holland	50	83	197	112658
222000		Michael	Laudrup	CAM	Denmark	57	78	183	112658
50499143		Manuel	Neuer	GK	Germany	35	92	193	21
50524531		Henrikh	Mkhitaryan	CAM	Armenia	32	75	177	1
84054028		Hugo	Lloris	GK	France	34	82	188	18
239053		Federico	Valverde	CM	Uruguay	23	74	181	243
244193	Jovane Cabral	Jovane Eduardo	Borges Cabral	RM	Cape Verde Islands	23	68	176	237
244544		Barış	Alıcı	RM	Turkey	24	70	180	326
50500993		Markus	Suttner	LB	Austria	34	73	179	110636
50515229		Jesús	Molina	CDM	Mexico	33	77	186	1880
50520264		Marco	Sau	ST	Italy	33	65	169	1837
50529888	Raul García	Raúl	García Carnero	LB	Spain	32	74	175	110062
50535520		Gabriel	Hauche	ST	Argentina	34	73	167	111019
50537815		Sanjin	Prcić	CDM	Bosnia and Herzegovina	27	73	181	76
50539736	Sergi Samper	Sergi	Samper Montañá	CDM	Spain	26	73	182	101146
50546017		Andrés	Andrade	LM	Colombia	32	71	177	110781
50546850		Lucas	Janson	LM	Argentina	26	67	169	111715
50554846		Ali	Adnan	LM	Iraq	27	70	185	101112
50556830		Jarlan	Barrera	CAM	Colombia	25	73	171	110580
50564101		Naoki	Ishikawa	CB	Japan	35	74	180	112444
50566650		Lazar	Rosić	CB	Serbia	28	83	190	1891
50569447		Kenyu	Sugimoto	ST	Japan	28	79	187	111575
84088571		Tom	Carroll	CM	England	29	66	178	2
18122		Nicolas	Penneteau	GK	France	40	86	185	670
110638	Cifuentes	Alberto	Cifuentes Martínez	GK	Spain	42	78	190	1968
139274		Boštjan	Cesar	CB	Slovenia	39	89	191	192
143598		Luciano	Pocrnjic	GK	Argentina	40	86	190	111707
150278		Jaroslav	Drobný	GK	Czech Republic	41	90	192	38
156253		Joe	Lewis	GK	England	33	85	198	77
158394		Ken	Reichel	LB	Germany	34	83	185	1831
160766		Jérémy	Ménez	ST	France	34	77	183	1879
164505		Brad	Guzan	GK	United States	36	95	193	112885
166664	Molinero	Francisco José	Molinero Calderón	LB	Spain	36	64	175	459
169317		Tarik	Elyounoussi	CF	Norway	33	66	172	433
172100		Gabriel	Peñalba	CM	Argentina	36	91	194	472
175962		Niko	Bungert	CB	Germany	34	75	188	169
176619		Adrián	Ramos	ST	Colombia	35	78	186	110832
178171	Sergio Sánchez	Sergio	Sánchez Ortega	CB	Spain	35	78	185	452
178616	Adrián González	Adrián	González Morales	CDM	Spain	33	76	183	573
179875		Dame	N'Doye	ST	Senegal	36	81	186	819
181123		Tomáš	Hořava	CM	Czech Republic	33	70	182	110468
181481		Danny	Vukovic	GK	Australia	36	99	187	673
182670		Mahmut	Tekdemir	CDM	Turkey	33	68	178	101014
183188		Marcello	Gazzola	RB	Italy	36	78	183	50
183644		Alexander	Grünwald	CAM	Austria	32	84	188	256
184436		Alex	Smithies	GK	England	31	88	188	1961
185394		Vegard	Forren	CB	Norway	33	88	186	417
186614		Samuel	Di Carmine	ST	Italy	32	78	187	206
187492		Dmitriy	Kombarov	LB	Russia	34	72	182	100767
188413		Carlos	Carmona	CDM	Chile	34	68	173	110980
188931	Alex Bergantiños	Alejandro	Bergantiños García	CDM	Spain	36	70	176	242
189177		John	Fleck	CM	Scotland	29	72	169	1794
189514		Harrison	Afful	RB	Ghana	35	58	168	687
190502		Grégory	Sertic	CB	France	32	76	183	219
190942		Kian	Hansen	CB	Denmark	32	74	184	1516
192129		Kristoffer	Nordfeldt	GK	Sweden	32	85	190	1960
192367		Ignacio	Canuto	CB	Argentina	35	80	181	111715
193098		Christian	Clemens	RM	Germany	30	79	179	31
193331		Karl	Darlow	GK	England	30	88	190	13
194146		Kevin	Long	CB	Republic of Ireland	30	82	190	1796
194753		Luca	Marrone	CB	Italy	31	75	186	206
197890	Arribas	Alejandro	Arribas Garrido	CB	Spain	32	76	182	1881
198599		Martin	Linnes	RB	Norway	29	72	177	325
199392		Matías	Aguirregaray	RB	Uruguay	32	78	177	112390
199663	Renato Neto	Renato	Neto Cardoso Porto	CM	Brazil	29	83	185	674
199792		Anders	Christiansen	CM	Denmark	31	75	174	320
200438	Guilherme	Guilherme	Costa Marques	CAM	Brazil	30	70	174	113259
200911		Bogdan	Stancu	ST	Romania	34	75	183	742
192658		Sebastian	Jung	RB	Germany	31	72	179	175
192767		Tongo	Doumbia	CDM	Mali	32	83	192	211
193029		Astrit	Ajdarević	CM	Albania	31	85	190	278
193182		Wes	Foderingham	GK	England	30	75	185	86
193226		Benjamin	Jeannot	ST	France	29	78	183	110569
193254		Christopher	Trimmel	RB	Austria	34	81	189	1831
193420		Manuel	Schmiedebach	CDM	Germany	32	70	171	1831
193953		Abdoul Razzagui	Camara	LW	Guinea	31	71	178	62
194956	Edgar Costa	José Edgar	Andrade da Costa	RW	Portugal	34	78	177	1893
197777		Jacopo	Sala	RB	Italy	29	75	181	1837
197937		Papy	Djilobodji	CB	Senegal	32	88	192	106
198335		Bryan	Oviedo	LB	Costa Rica	31	70	172	106
198474	Guitián	Alberto	Guitián Ceballos	CB	Spain	31	69	181	462
198904		Grant	Hanley	CB	Scotland	29	81	187	1792
199353		Marc	Rzatkowski	CM	Germany	31	66	172	689
199574		Alexandre	Letellier	GK	France	30	93	193	294
199897		Nicolas	Höfler	CDM	Germany	31	78	181	25
200588	Hong Jeong Ho	Jeong Ho	Hong	CB	Korea Republic	31	77	188	1477
201000		Ondřej	Zahustel	RB	Czech Republic	30	77	187	267
201257		Thibault	Moulin	CDM	France	31	75	174	101007
201966		Alexander	Søderlund	ST	Norway	34	86	187	298
202416	Martos	Javi	Martos Espigares	CB	Spain	37	74	181	670
202547		Jean-Christophe	Bahebeck	ST	France	28	76	182	73
203024	Isaías	Isaías	Sánchez Cortes	CDM	Spain	34	71	173	111393
203455		Oliver	Kragl	LM	Germany	31	77	180	110911
203801		Francisco	Silva	CM	Chile	35	75	178	110093
204078		Rafał	Wolski	CAM	Poland	28	70	180	111091
204246		Marcus	Bettinelli	GK	England	29	82	194	144
204370		Sander	van de Streek	CAM	Holland	28	74	183	1903
204682	Rafael Lopes	Rafael	Guimarães Lopes	ST	Portugal	30	79	185	1898
205343		Jean-Daniel	Akpa Akpro	CM	Côte d'Ivoire	28	71	180	110373
205594	Dener	Dener	Gomes Clemente	CM	Brazil	29	76	185	10031
206006		Ezgjan	Alioski	RM	FYR Macedonia	29	63	172	8
206316		Tal	Ben Haim	LM	Israel	32	75	180	267
207746		Steeve	Yago	RB	Burkina Faso	28	77	180	1809
207997	Albentosa	Raúl	Albentosa Redal	CB	Spain	32	89	192	242
208364	Clinton Mata	Clinton Mukoni	Mata Pedro Lourenço	RB	Angola	28	72	180	231
209372		Mustafa	Saymak	CAM	Holland	28	63	169	101037
209729		Barrie	McKay	LW	Scotland	26	67	175	1960
210010		Joris	van Overeem	CAM	Holland	27	71	181	1903
210321		Romell	Quioto	LW	Honduras	29	78	180	698
210697		Christian	Nørgaard	CDM	Denmark	27	77	187	110374
211260		Mpho	Makola	CAM	South Africa	35	70	172	110930
211741		Tom	Schütz	CDM	Germany	33	75	181	159
212401		Steven	Moreira	RB	France	26	72	178	1809
212613		Wesley	Saïd	ST	France	26	75	171	110569
213203	Gonçalo Silva	Gonçalo Filipe	Oliveira Silva	CB	Portugal	30	79	186	1889
213414		William	Troost-Ekong	CB	Nigeria	27	82	191	55
213725		Lebogang	Phiri	CM	South Africa	26	63	173	62
214129		Jaine	Barreiro	CB	Colombia	27	78	189	110147
214393		Danovis	Banguero	LB	Colombia	31	79	185	111722
214506		Román	Torres	CB	Panama	35	88	187	111144
214609		Sherman	Cárdenas	CAM	Colombia	32	65	168	112992
214965		Claudio	Riaño	ST	Argentina	33	75	177	101121
215177		Francisco	Cerro	CM	Argentina	33	71	178	111710
215254		Luciano	Lollo	CB	Argentina	34	85	184	1876
215433		Francesco	Vicari	CB	Italy	27	80	190	112791
216036		Rafael	Delgado	LB	Argentina	31	70	174	111710
216380		Daley	Sinkgraven	LB	Holland	26	65	179	245
217047		Aníbal	Godoy	CDM	Panama	31	75	182	111928
218936	Rafa Soares	Luís Rafael	Soares Alves	LB	Portugal	26	71	178	1887
219181	Pedro Tiba	Pedro Miguel	Pereira Silva	CM	Portugal	32	69	174	873
219496	Simy	Simeon	Tochukwu Nwankwo	ST	Nigeria	29	84	198	110734
219988		Felipe Nicolás	Avenatti	ST	Uruguay	28	86	196	100081
220084		César	Falletti	CAM	Uruguay	28	65	170	1843
220466		Federico	Mattiello	LM	Italy	26	70	184	189
220715		Ezequiel	Ponce	ST	Argentina	24	78	178	278
221311		Johan	Arango	CAM	Colombia	30	82	180	112990
221753		Marcel	Sobottka	CDM	Germany	27	75	185	110636
222123		Aaron	Long	CB	United States	28	86	185	689
222832	João Teixeira	João Rafael	Brito Teixeira	LW	Portugal	27	72	179	518
223053		Ángel	Mena	RW	Ecuador	33	67	168	1878
223245		Brian	Fernández	ST	Argentina	26	74	171	101121
223510		Alexandre	Mendy	ST	France	27	94	185	59
223818	João Afonso	João Ricardo	da Silva Afonso	CB	Portugal	31	84	188	1887
224003	Sergio Herrera	Sergio	Herrera Pirón	GK	Spain	28	80	192	479
224367		Germán	Lanaro	CB	Argentina	35	84	186	110975
224599	Yan Junling	Junling	Yan	GK	China PR	30	83	191	112540
225114		Mimoun	Mahi	ST	Morocco	27	69	181	1915
225696	Murilo	Murilo	de Souza Costa	RM	Brazil	26	72	178	1896
226075		Michalis	Bakakis	RB	Greece	30	65	175	278
226584		Pablo	Aránguiz	CAM	Chile	24	65	172	695
226811		Franco	Soldano	ST	Argentina	26	74	177	111716
227235		Konstantin	Kerschbaumer	CM	Austria	29	77	180	111239
227667		Isaac	Mbenza	ST	Belgium	25	77	187	1939
228386		Pape Abou	Cissé	CB	Senegal	25	93	197	280
228777		Geovanni	Banguera	GK	Colombia	25	80	187	112528
229104		Hicham	Faik	CM	Holland	29	78	190	15005
229699		Nicolás	Benedetti	CAM	Colombia	24	70	177	101102
230144		Assane	Dioussé	CDM	Senegal	23	68	175	1819
231150	Jamiro Monteiro	Jamiro Gregory	Monteiro Alvarenga	CM	Cape Verde Islands	27	72	175	68
231919		Alessandro	Murgia	CM	Italy	24	78	185	46
232639		Ritsu	Doan	CAM	Japan	23	70	172	1915
192732		Edgar	Prib	LM	Russia	31	77	180	485
192816		Leandro	Cabrera	CB	Uruguay	29	80	187	1860
193148		Vincent	Le Goff	LB	France	31	68	177	217
193186		Neil	Etheridge	GK	Philippines	31	89	191	1961
193250		Marin	Leovac	LB	Croatia	33	71	180	211
192665		Andreas	Luthe	GK	Germany	34	85	195	100409
193267		Fabio	Pisacane	CB	Italy	35	77	178	1842
193336		Vid	Belec	GK	Slovenia	31	93	192	1837
193468		Loris	Benito	LB	Switzerland	29	85	184	900
193686		Vasco	Regini	LB	Italy	30	79	185	1837
193690		Žarko	Tomašević	CB	Montenegro	31	84	190	682
194916	António Filipe	António Filipe	Norinho de Carvalho	GK	Portugal	36	81	187	518
197900		Pajtim	Kasami	RM	Switzerland	29	70	188	110770
196848		Írven	Ávila	ST	Peru	31	68	167	1028
198067		François	Moubandje	LB	Switzerland	31	74	180	1809
198079		Marcel	Büchel	CM	Liechtenstein	30	71	175	1746
198350		Daniel	Bentley	GK	England	28	72	188	1925
198426		Gonzalo	Castellani	CM	Argentina	33	75	183	101100
198489		James	McClean	LW	Republic of Ireland	32	70	180	1806
198900		Uroš	Ćosić	CB	Serbia	28	77	187	278
198908		Isaac	Cofie	CM	Ghana	29	75	184	459
199191		Dennis	Appiah	RB	France	29	77	176	229
199290		Arsen	Khubulov	RM	Russia	30	74	181	749
199412	Sebá	Sebastião	de Freitas Couto	LW	Brazil	29	73	179	112165
199517	Claiton	Claiton	Machado dos Santos	CB	Brazil	36	79	188	111434
199580		Connor	Goldson	CB	England	28	85	191	86
199781		Romain	Métanire	RB	France	31	74	178	379
199779		André	Hoffmann	CB	Germany	28	84	190	110636
200138		Michael	Hector	CB	Jamaica	29	82	193	5
200778		Cyrus	Christie	RB	Republic of Ireland	28	78	188	144
200918		Christoph	Knasmüllner	CAM	Austria	29	70	181	254
201066		Dominik	Kaiser	CAM	Germany	32	67	171	269
201266		Kasper	Kusk	RM	Denmark	29	67	180	820
201285		Christian	Gytkjær	ST	Denmark	31	77	185	873
201380		Junior	Tallo	ST	Côte d'Ivoire	28	80	185	1887
202069		José Luis	Fernández	LM	Argentina	33	67	169	110580
202101		Ola	John	LM	Holland	29	72	179	1887
202399		Diego	Arias	CDM	Colombia	36	74	173	101106
202428		Bobby	Wood	ST	United States	28	79	180	485
202811		Emiliano	Martínez	GK	Argentina	28	85	193	1
202905		Christoffer	Nyman	ST	Sweden	28	82	185	110500
203038	Lucas Piazon	Lucas	Domingues Piazon	RW	Brazil	27	73	182	5
203368		Eirik Ulland	Andersen	LM	Norway	28	73	181	922
203581		Iván	Balliu	RB	Albania	29	63	172	68
203604		David	Pavelka	CDM	Czech Republic	30	74	185	111339
203793		Aron	Jóhannsson	ST	United States	30	70	184	38
203875		Jurgen	Mattheij	CB	Holland	28	84	191	1971
204163		Jores	Okore	CB	Denmark	28	80	183	820
204193		Tom	Trybull	CDM	Germany	28	72	181	1792
204215		Adam	Reach	CAM	England	28	73	185	1807
204337		Gervasio	Núñez	CAM	Argentina	33	78	180	111708
204476		Tom	Beugelsdijk	CB	Holland	31	79	192	650
204542		Yoshimar	Yotún	CM	Peru	31	68	173	112606
204841		Duvier	Riascos	ST	Colombia	35	73	180	112378
205360		Kemar	Roofe	ST	England	28	65	178	8
205425	Luís Leal	Luís Leal	dos Anjos	ST	São Tomé e Príncipe	34	70	176	110396
205818		Ryan	Woods	CDM	England	27	70	173	1806
205934		Nicola	Murru	LB	Italy	26	64	180	1837
206042		Jacopo	Dezi	CM	Italy	29	69	178	50
206098	Patric	Patricio	Gabarrón Gil	RB	Spain	28	72	184	46
207553		Marcus	Rohdén	CM	Sweden	30	76	182	110734
207616		Adam	Webster	CB	England	26	75	191	1919
207788		Syam	Ben Youssef	CB	Tunisia	32	82	189	111339
207935		Matías	Dituro	GK	Argentina	34	90	191	110975
208015		Stéphane	Badji	CDM	Senegal	31	75	180	742
208144		Daniel	Bessa	CM	Italy	28	75	178	110556
208892		Sam	Byram	RB	England	27	72	180	14
209218		Jehad	Al Hussien	CAM	Syria	39	63	168	112393
209407		Lorenzo	Lollo	CM	Italy	30	75	180	1746
209440	Romarinho	Romário Ricardo	da Silva	ST	Brazil	30	69	174	607
209673		Dorian	Dessoleil	CB	Belgium	29	79	188	670
209780		Siebe	Schrijvers	CAM	Belgium	25	68	180	231
209840		Julian	Jeanvier	CB	France	28	84	185	1925
210237		Thomas	Pledl	RW	Germany	27	72	173	111239
210303		Denis	Linsmayer	CDM	Germany	29	79	182	110178
210603		Yasser	Al Shahrani	LB	Saudi Arabia	29	61	170	605
210695		Haitam	Aleesami	LB	Norway	30	81	182	1843
210964		Federico	Ceccherini	CB	Italy	29	75	187	110374
210985		Ben	Osborn	LB	England	27	75	176	14
211265		Ariel	Rojas	CM	Argentina	35	82	176	1013
211338		Alejandro	Chumacero	CM	Bolivia	30	65	164	110152
211891		Andreas	Voglsammer	ST	Germany	29	81	178	159
212240		Kenan	Karaman	LM	Turkey	27	83	189	110636
212469		Aly	Ghazal	CDM	Egypt	29	84	189	101112
212591		Walker	Zimmerman	CB	United States	28	89	191	112996
212947		Jimmy	Cabot	RW	France	27	64	164	217
213106		Rúnar Már	Sigurjónsson	CM	Iceland	31	83	178	322
213317	Kim Jin Su	Jin Su	Kim	LB	Korea Republic	29	67	177	1477
213323		Saulo	Decarli	CB	Switzerland	29	82	188	231
213556	Somália	Calmon	Wergiton do Rosário	RM	Brazil	32	73	180	111674
213718		Bismar	Acosta	CB	Costa Rica	34	92	182	919
214190		Leandro	Castellanos	GK	Colombia	37	78	183	101104
214302		Claudio	Baeza	CM	Chile	27	64	171	110980
214392		Jefferson	Cuero	LM	Colombia	33	70	175	101099
214421		Freddy	Hinestroza	LM	Colombia	31	72	179	112578
214483		Carlos	Arboleda	RB	Colombia	35	60	169	101104
214717		Lorenzo	Reyes	CM	Chile	30	75	175	101114
192673		Moustapha	Diallo	CDM	Senegal	35	78	192	224
193314	Aitor	Aitor	Fernández	GK	Spain	30	78	182	1853
193550		Beram	Kayal	CM	Israel	33	74	178	1808
194333		Rafał	Gikiewicz	GK	Poland	33	81	190	1831
197688	Gabriel Silva	Gabriel Moisés	Antunes da Silva	LB	Brazil	30	75	179	1819
198641		Kenneth	Zohore	ST	Denmark	27	96	194	1961
199247	Álex Fernández	Alejandro	Fernández Iglesias	CDM	Spain	28	68	180	1968
199413		Tobias	Kempe	RM	Germany	32	77	184	110502
199776		Luca	Caldirola	CB	Italy	30	79	189	38
200073		Miloš	Kosanović	CB	Serbia	31	85	191	232
200857		Moritz	Leitner	CM	Germany	28	68	176	1792
201122		Tomáš	Kalas	CB	Czech Republic	28	80	183	1919
201290		Robert	Žulj	CF	Austria	29	89	189	1831
202107		Alfredo	Morales	CM	United States	31	77	183	110636
202458		Navarone	Foor	CAM	Holland	29	66	172	1909
202940		Neeskens	Kebano	LW	Congo DR	29	65	170	144
203435		Ismaël	Diomandé	CDM	Côte d'Ivoire	28	82	183	210
203672		Cristian	Galano	RW	Italy	30	69	170	110911
203929		Jón Guðni	Fjóluson	CB	Iceland	32	86	191	702
204278	David Simón	David Simón	Rodríguez Santana	RB	Spain	31	68	175	242
204493		Raphael	Holzhauser	CDM	Austria	28	84	192	322
204908		Dieumerci	Ndongala	RM	Congo DR	30	59	170	673
205553		Luca	Ceppitelli	CB	Italy	31	83	186	1842
205998		André	Biyogo Poko	CM	Gabon	28	72	173	101026
206115		Isaac	Hayden	CDM	England	26	79	185	13
207641		Bryan	Carrasco	RM	Chile	30	70	172	110145
207998		Danny	Ward	GK	Wales	28	88	191	95
208250		Anastasios	Bakasetas	CAM	Greece	28	77	181	278
209329	Dória	Matheus	Dória Macedo	CB	Brazil	26	82	189	110144
209669		Dimitrios	Siovas	CB	Greece	32	83	192	100888
209839		Timo	Letschert	CB	Holland	28	84	188	1903
210533	João Schmidt	João Felipe	Schmidt Urbano	CM	Brazil	28	82	184	744
210947		Nikos	Karelis	ST	Greece	29	80	173	673
211327		Mauro	Goicoechea	GK	Uruguay	33	82	186	1809
211815		Süleyman	Koç	RM	Germany	32	80	178	101037
212408	Frédéric Mendy	Frédéric	Mendy	ST	Guinea-Bissau	32	82	194	665
212889	Josué Sá	Josué Humberto	Gonçalves Leal Sá	CB	Portugal	29	78	187	111339
213260		Santiago	Montoya	CAM	Colombia	29	63	172	101105
213480		Fouad	Bachirou	CM	Comoros	31	65	169	320
213829		Alberto	Cerri	ST	Italy	25	91	194	1842
214350		Michael	Rangel	ST	Colombia	30	80	185	112992
214462		Iván	Arboleda	GK	Colombia	25	80	182	110404
214562		Leonardo	Castro	ST	Colombia	32	80	183	110929
214685		Patricio	Rubio	ST	Chile	32	74	174	112584
215060		Nicolás	Aguirre	CM	Argentina	31	78	180	110832
215213		Axel	Werner	GK	Argentina	25	85	192	110839
215292		Martín	Cauteruccio	ST	Uruguay	34	76	180	1878
215927		Renaud	Emond	ST	Belgium	29	73	186	232
216076		Lorenzo	Pasciuti	RM	Italy	31	68	172	112409
216464		Alan	Browne	CM	Republic of Ireland	26	71	173	1801
217852		Kevin	Molino	CAM	Trinidad and Tobago	31	70	173	111138
218981		Helibelton	Palacios	RB	Colombia	28	75	175	101100
219469		Stipe	Perica	ST	Croatia	26	80	192	111657
219652	Rober Ibáñez	Roberto	Ibáñez Castro	RM	Spain	28	71	178	1860
220029		Saîf-Eddine	Khaoui	CAM	Tunisia	26	68	182	219
220302		Bubacarr	Sanneh	CB	Gambia	26	75	183	1516
220671		Federico	Melchiorri	ST	Italy	34	76	185	199
220862		Jordan	Hugill	ST	England	29	92	183	12
221433		Omar	Govea	CDM	Mexico	25	68	176	230
221860		Carlos	Gruezo	CDM	Ecuador	26	67	171	695
222352		Albian	Ajeti	ST	Switzerland	24	77	183	896
223046		Ahmet	Çalık	CB	Turkey	27	77	184	325
223065		Gustavo	Toledo	RB	Argentina	31	72	171	110406
223332		Mattia	Sprocati	LW	Italy	27	75	173	50
223593		Javier	Correa	ST	Argentina	28	85	187	110406
223875		Yacine	Bammou	ST	Morocco	29	78	188	210
224186		Jordy	de Wijs	CB	Holland	26	95	189	1952
224440		Julian	Pollersbeck	GK	Germany	26	87	195	28
224591		Yann	Bodiger	CDM	France	26	80	188	1809
224921	Adrián Marín	Adrián	Marín Gómez	LB	Spain	24	78	186	463
225591		Leonardo	Suárez	RM	Argentina	25	60	167	462
225951		Denis	Bouanga	LM	Gabon	26	71	180	224
226380	Hwang Hee Chan	Hee Chan	Hwang	ST	Korea Republic	25	77	177	191
226797		Víctor	Malcorra	LM	Argentina	34	74	170	1881
227106	Diego González	Diego	González Polanco	CB	Spain	26	86	184	573
227550		Diego	Viera	CB	Paraguay	30	91	185	111706
228644		Rico	Strieder	CDM	Germany	29	68	174	1903
228819		Matías	Vargas	CAM	Argentina	24	66	168	101088
229526		Maksym	Malyshev	CDM	Ukraine	28	76	181	101059
229896	Jordi Calavera	Jordi	Calavera Espinach	RB	Spain	26	74	182	467
230899		Ademola	Lookman	LM	England	23	78	174	7
231685		Ronaël	Pierre-Gabriel	RB	France	23	76	177	69
232278		Santiago	Mosquera	RM	Colombia	26	84	168	695
233119		Michael	Olunga	ST	Kenya	27	85	193	101145
233556		Riccardo	Orsolini	RW	Italy	24	73	183	189
234488		Mikkel	Rygaard	CAM	Denmark	30	73	179	1788
234642		Edouard	Mendy	GK	France	29	86	197	379
235163		Michele	Castagnetti	CM	Italy	31	71	180	111434
235673		Dario	Maresic	CB	Austria	21	74	183	209
236548		Jaromír	Zmrhal	LM	Czech Republic	28	79	189	266
237207		Samuel	Kalu	RM	Nigeria	23	74	176	59
237629		Arne	Maier	CM	Germany	22	79	183	166
239670	Jefferson Santos	Jefferson	De Jesus Santos	CDM	Brazil	28	85	192	518
240034		Lukáš	Štetina	CB	Slovakia	30	85	185	267
241671		Dominik	Livaković	GK	Croatia	25	79	187	211
214601		Stefan	Medina	RB	Colombia	29	69	180	1032
214718		Martín	Rodríguez	LM	Chile	27	68	170	1881
214988		Leonel	Miranda	CM	Argentina	27	74	175	111710
215215		Fabricio	Fontanini	CB	Argentina	31	80	180	110396
215256		Renzo	Saravia	RB	Argentina	28	75	176	101085
215965		Carlos	Strandberg	ST	Sweden	25	85	185	320
216072		Gaetano	Letizia	LB	Italy	31	63	173	112026
216814		Salih	Uçan	CM	Turkey	27	65	182	1746
217714		Paul	Arriola	RM	United States	26	65	167	688
218970		Firmin Ndombe	Mubele	RM	Congo DR	27	73	173	1809
219216		Josh	Windass	CF	England	27	68	175	1917
219793		Thomas	Didillon	GK	France	25	88	189	229
220048		Simone	Scuffet	GK	Italy	25	78	190	55
220395	Álex Mula	Alejandro	Mula Sánchez	LM	Spain	25	64	177	573
220513		Federico	Ricci	RW	Italy	27	63	175	112026
220921		Anderson	Esiti	CDM	Nigeria	27	88	183	674
221434		Dieter	Villalpando	CM	Mexico	30	67	172	101121
221923	Vigaray	Carlos	Martín Vigaray	RB	Spain	26	70	182	463
222644		Yamil	Asad	LM	Argentina	27	78	177	688
222982		Alexis	Blin	CDM	France	24	78	184	1809
223283		Famara	Diedhiou	ST	Senegal	28	80	189	1919
223537		Emil	Berggreen	ST	Denmark	28	89	194	169
223749		Orkan	Çınar	RM	Turkey	25	70	174	327
223898		Paul	Bernardoni	GK	France	24	78	190	224
224189		Yoann	Barbet	LB	France	28	81	187	1925
224506		Mario	Šitum	LM	Croatia	29	76	177	211
224841		Kevin	Diks	RB	Holland	24	70	185	110374
225151		Adama	Traoré	CM	Mali	26	72	180	69
225844		Daniele	Verde	LW	Italy	25	64	168	462
226086		Ángel	González	RM	Argentina	27	70	169	111706
226747		Baldomero	Perlaza	CDM	Colombia	29	83	187	101104
227227		Daniel	Álvarez	LM	Mexico	27	70	176	101121
227862		Vladyslav	Kalitvintsev	RM	Ukraine	28	68	178	101047
228708		Lucas	Martínez Quarta	CB	Argentina	25	75	181	1876
228782	João Gamboa	João Pedro	da Costa Gamboa	CDM	Portugal	24	80	187	1893
229556	Allano	Allano Brendon	de Souza Lima	RW	Brazil	26	73	182	742
229788	Rubén Alcaraz	Rubén	Alcaraz Jiménez	CM	Spain	30	76	180	462
230794	Nacho Gil	Ignacio	Gil	LM	Spain	25	69	170	461
231128		Hernán	Toledo	LW	Argentina	25	72	180	111019
231571		Jeison	Lucumi	RM	Colombia	26	63	177	101100
232441		Masaaki	Higashiguchi	GK	Japan	35	78	184	112093
232999		Tyler	Adams	CDM	United States	22	68	175	689
233223		Petar	Brlek	CM	Croatia	27	74	180	10032
234514		Oualid	El Hajjam	RB	Morocco	30	73	180	1816
234822		Abbubaker	Mobara	RB	South Africa	27	69	174	110930
235176		Christian	Bernardi	RM	Argentina	31	73	177	110406
235552		Ernest	Seka	CB	Guinea	34	84	185	1823
236480		Yves	Bissouma	CM	Mali	24	80	182	1808
237086	Kim Min Jae	Min Jae	Kim	CB	Korea Republic	24	88	189	1477
237456		Lumor	Agbenyenu	LB	Ghana	24	70	175	237
239148		Franko	Andrijašević	CAM	Croatia	30	82	186	674
239744		Mickaël	Cuisance	CM	France	21	73	181	23
240899		Jakov	Filipović	CB	Croatia	28	85	191	2007
243538		Karlo	Letica	GK	Croatia	24	96	201	231
50464897		Emil	Hallfreðsson	CM	Iceland	37	86	186	55
50478601	Manu Del Moral	Manuel	Del Moral Fernández	ST	Spain	37	77	185	110066
50488958		Sylvain	Marveaux	CAM	France	35	69	172	1823
50500531		Taiseer	Al Jassam	CM	Saudi Arabia	37	69	169	112387
50509601		Clément	Chantôme	CM	France	33	75	181	111273
50520876		Maximiliano	Caire	RB	Argentina	33	70	177	111710
50520936		Gabriele	Angella	CB	Italy	32	79	189	670
50529531		Paris	Cowan-Hall	RM	England	30	73	173	1933
50530122	Guitián	Alberto	Guitián Ceballos	CB	Spain	31	69	181	244
50531424		Luca	Caldirola	CB	Italy	30	79	189	112026
50534047		Diego	Arias	CDM	Colombia	36	74	173	101103
50534553		Christoffer	Nyman	ST	Sweden	28	82	185	702
50535016		Eirik Ulland	Andersen	LW	Norway	28	73	181	417
50539516		John	Mountney	RM	Republic of Ireland	28	73	184	837
50542595		Nikos	Karelis	ST	Greece	29	80	173	393
50545950		Claudio	Baeza	CM	Chile	27	64	171	112387
50546333		Patricio	Rubio	ST	Chile	32	74	174	110150
50550815		Sergio	Vittor	CB	Argentina	32	86	189	101085
50551696		Simone	Scuffet	GK	Italy	25	78	190	111339
50554292		Yamil	Asad	LM	Argentina	27	78	177	101088
50555241		Javier	Correa	ST	Argentina	28	85	187	110144
50558264		Jonathan	Galván	CB	Argentina	29	69	177	111019
50560425		Geovanni	Banguera	GK	Colombia	25	80	187	101104
50563567		Alessandro	Murgia	CM	Italy	24	78	185	112791
50564647		Tyler	Adams	CDM	United States	22	68	175	112172
50569872	Marcão	Amaral Alves	Marcos Vinicius	ST	Brazil	27	87	196	112978
67302550		Vasco	Regini	LB	Italy	30	79	185	112791
67328516	Rober Ibáñez	Roberto	Ibáñez Castro	RM	Spain	28	71	178	479
84126577		Ibrahima	Wadji	ST	Senegal	26	74	175	1463
20551		Andreas	Isaksson	GK	Sweden	39	77	196	710
36111		Kyle	Beckerman	CDM	United States	39	70	177	111065
51101		Maurizio	Domizzi	CB	Italy	41	80	185	205
54051		Wayne	Routledge	RM	England	36	77	170	1960
124337		Ali	Turan	CB	Turkey	37	81	186	101033
134895		Roberto	Hilbert	RB	Germany	36	80	183	165
138798		Germán	Lux	GK	Argentina	39	77	185	1876
140029		Óscar	Pérez	GK	Mexico	48	75	172	110147
142592		Israel	Damonte	CDM	Argentina	39	72	176	111711
142794		Facundo	Erpen	CB	Argentina	38	78	180	111713
146058	Momo	Jerónimo	Figueroa Cabrera	LM	Spain	39	70	180	472
152883		Chad	Marshall	CB	United States	36	86	193	111144
156535		Thomas	Buffel	RM	Belgium	40	70	176	15005
215155		Fernando	Zuqui	CM	Argentina	29	65	170	101083
215212		Guillermo	Sara	GK	Argentina	33	84	184	110395
215414	Daniel Guimarães	Daniel	Martins Guimarães	GK	Brazil	34	73	189	1891
216020		Leonardo	Gil	CM	Argentina	30	69	171	110580
216283	Danilo	Danilo Teodoro	Soares	LB	Brazil	29	72	170	160
216815	Flávio	Flávio	da Silva Ramos	CB	Brazil	27	85	190	10019
217805		Alexis	Martín Arias	GK	Argentina	29	80	185	101084
219167		Sergio	Vittor	CB	Argentina	32	86	189	112534
219409		Vyacheslav	Karavaev	RB	Russia	26	65	175	1909
219787		Andrés	Mosquera	CB	Colombia	31	78	181	110781
219998		José	Mauri	CM	Italy	25	65	169	47
220165		Joel	Pohjanpalo	ST	Finland	26	84	186	32
220638	Luismi	Luis Miguel	Sánchez Benítez	CDM	Spain	29	79	179	462
220938		Jorge	Correa	CAM	Argentina	28	70	170	1893
221584		Jacob	Rinne	GK	Sweden	28	81	187	820
222041		Lucas	Boyé	ST	Argentina	25	80	180	278
222429		Andrés	Cubas	CDM	Argentina	25	60	169	112670
222986		Masato	Morishige	CB	Japan	34	76	183	101150
223054		Cristian	Penilla	LM	Ecuador	30	76	176	691
223284		Pablo	Martinez	CB	France	32	77	182	76
223740	Eguaras	Iñigo	Eguaras Álvarez	CDM	Spain	29	76	181	244
223926		Samuel	Bastien	CM	Belgium	24	73	175	232
224258		Kristoffer	Ajer	CB	Norway	23	84	196	78
224538	Pedro Nuno	Pedro Nuno	Fernandes Ferreira	CAM	Portugal	26	68	176	1900
224739		Peter	Olayinka	LM	Nigeria	25	77	188	266
225563	João Pedro	João Pedro	Maturano dos Santos	RB	Brazil	24	73	179	236
225859		Moussa	Niakhaté	CB	France	25	82	190	169
226616		Jonathan	Galván	CB	Argentina	29	69	177	110406
226877	Ivo Rodrigues	Ivo Tiago	Santos Rodrigues	RW	Portugal	26	72	179	230
227642		Samuel	Adegbenro	LW	Nigeria	25	75	178	298
228179		Alexis	Castro	LM	Argentina	26	71	183	1013
228747		Oussama	Idrissi	LW	Holland	25	78	183	1906
229071		Karim	Onisiwo	RM	Austria	29	85	188	169
229584		Pascal	Stenzel	RWB	Germany	25	74	183	25
230772	Léo Gamalho	Leonardo	Gamalho de Souza	ST	Brazil	35	93	189	1474
231390	Diogo Gonçalves	Diogo António	Cupido Gonçalves	LW	Portugal	24	71	177	14
232229		Justin	Bijlow	GK	Holland	23	73	190	246
232512		Yoshifumi	Kashiwa	LM	Japan	34	62	168	113157
233195		Xaver	Schlager	CM	Austria	23	73	174	191
234574	Diogo Dalot	José Diogo	Dalot Teixeira	RB	Portugal	22	71	183	11
234870		Efecan	Karaca	CAM	Turkey	31	56	166	113142
235226	Ângelo Neto	Ângelo	Pelegrinelli Neto	CM	Brazil	29	68	181	1900
235926		Matías	Zaracho	RM	Argentina	23	64	171	101085
236610		Moise	Kean	ST	Italy	21	79	182	45
237404		Lukáš	Pokorný	CB	Czech Republic	28	86	190	266
238224	Marcão	Amaral Alves	Marcos Vinicius	ST	Brazil	27	87	196	111588
239718		Hassane	Bandé	LW	Burkina Faso	22	68	178	245
240309		Yevhen	Makarenko	CDM	Ukraine	30	84	184	229
241247	Su Boyang	Boyang	Su	GK	China PR	32	74	185	112977
244381		Artem	Shabanov	CB	Ukraine	29	79	189	101047
50470706		Omar	Pérez	CAM	Argentina	40	82	180	101104
50487181		Leon	Clarke	ST	England	36	89	188	1917
50502837	Aythami Artiles	Aythami	Artiles Oliva	CB	Spain	35	78	184	472
50509677		Özer	Hurmacı	LM	Turkey	34	70	174	101041
50520911		Tunay	Torun	RM	Turkey	31	72	176	101014
50525737		Christoph	Moritz	CM	Germany	31	80	186	110502
50531001		Marc	Rzatkowski	CM	Germany	31	66	172	191
50533717		José Luis	Fernández	LM	Argentina	33	67	169	111710
50534459		Emiliano	Martínez	GK	Argentina	28	85	193	1793
50534686	Lucas Piazon	Lucas	Domingues Piazon	RW	Brazil	27	73	182	192
50537733		Jacob	Murphy	RM	England	26	74	179	109
50541055		Lorenzo	Lollo	CM	Italy	30	75	180	110912
50545971		Guillermo	Celis	CDM	Colombia	28	73	178	110406
50546613		Claudio	Riaño	ST	Argentina	33	75	177	110580
50551117		Stipe	Perica	ST	Croatia	26	80	192	111339
50552959		Johan	Arango	CAM	Colombia	30	82	180	101104
50555158		Alexandre	Mendy	ST	France	27	94	185	62
50556799		Adama	Traoré	CM	Mali	26	72	180	1750
50559827		Alexis	Castro	LM	Argentina	26	71	183	111710
50561792		Assane	Dioussé	CDM	Senegal	23	68	175	192
50564241		Musashi	Suzuki	ST	Japan	27	74	185	112448
50569104		Lumor	Agbenyenu	LB	Ghana	24	70	175	101026
50573814		Amor	Layouni	LW	Sweden	28	80	191	918
67328031		Sergio	Vittor	CB	Argentina	32	86	189	15029
84074620		Rajiv	van La Parra	LM	Holland	30	72	181	12
16097		Nick	Rimando	GK	United States	42	83	178	111065
34079		Ashley	Cole	LB	England	40	66	176	697
49161		Olivier	Deschacht	CB	Belgium	40	81	183	2007
53630		Jelle	Van Damme	LB	Belgium	37	89	190	230
106795		Gianluca	Pegolo	GK	Italy	40	76	183	111974
125995		Umut	Bulut	ST	Turkey	38	75	184	101020
137449		Jan-Ingwer	Callsen-Bracker	CB	Germany	36	84	188	100409
139296		David	Nugent	ST	England	36	76	180	91
140196		Yasuhito	Endo	CDM	Japan	41	75	178	112093
142762		Jonathan	Bottinelli	CB	Argentina	36	79	180	111716
144200		Eren	Albayrak	LB	Turkey	30	69	179	101033
150415		Marco	Caligiuri	CB	Germany	37	75	180	165
155979		Ross	McCormack	ST	Scotland	34	74	175	2
157528		Moritz	Stoppelkamp	LM	Germany	34	75	180	1825
158309	Gao Lin	Lin	Gao	ST	China PR	35	75	185	111839
159265		Christian	Puggioni	GK	Italy	40	81	187	112026
162053		Luke	Chambers	CB	England	35	87	185	94
163056		Nereo	Champagne	GK	Argentina	36	82	189	110827
164633		Tim	Hoogland	CB	Germany	36	80	183	160
233219		Vukašin	Jovanović	CB	Serbia	25	80	188	59
233600		Amr	Warda	RM	Egypt	27	77	179	393
234578		Luis	Reyes	LB	Mexico	30	66	181	1879
234935	João Talocha	João Carlos	Fonseca Silva	LB	Portugal	31	75	180	1898
235512	Gelson Dala	Jacinto	Muondo Dala	ST	Angola	25	65	175	744
235997	Fran Beltrán	Francisco José	Beltrán Peinado	CDM	Spain	22	64	170	450
236999		David	Guzman	CDM	Costa Rica	31	79	178	111140
237419		Amir	Abedzadeh	GK	Iran	28	80	186	1893
239272		Vasilios	Barkas	GK	Greece	27	91	195	278
239904		Davit	Khocholava	CB	Georgia	28	88	192	101059
240699		Nicolás	De la Cruz	CAM	Uruguay	24	65	167	1876
242143	Ricardo Ryller	Ricardo Ryller	Ribeiro Lino Silva	CM	Brazil	27	77	184	1896
50377490		Jonas	Olsson	CB	Sweden	38	84	193	1917
50470084		Jonathan	Walters	ST	Republic of Ireland	37	79	183	94
50480174		Paweł	Kieszek	GK	Poland	37	82	187	573
50496526		Lior	Refaelov	CAM	Israel	35	68	175	230
50508129		Mevlüt	Erdinç	ST	Turkey	34	84	181	741
50518987		Jiloan	Hamad	LM	Sweden	30	72	173	110765
50522277		Daniel	Villalva	RW	Argentina	29	61	158	110145
50530074		Gonzalo	Castellani	CM	Argentina	33	75	183	1013
50531786		Michael	Hector	CB	Jamaica	29	82	193	1807
50534189	Jota	Jose Ignacio	Peleteiro Ramallo	RM	Spain	30	70	180	2
50534634	Sin Jin Ho	Jin Ho	Sin	CM	Korea Republic	32	72	177	1473
50536190		Yoshimar	Yotún	CM	Peru	31	68	173	1878
50539394		Steeve	Yago	RB	Burkina Faso	28	77	180	1738
50541404		Leiton	Jiménez	CB	Colombia	32	77	186	111035
50545777		Jaine	Barreiro	CB	Colombia	27	78	189	101114
50546069		Freddy	Hinestroza	LM	Colombia	31	72	179	101101
50547830		Mario	Leitgeb	CM	Austria	33	76	183	111822
50551950		Bubacarr	Sanneh	CB	Gambia	26	75	183	229
50554630		Alexis	Blin	CDM	France	24	78	184	1816
50556239		Yann	Bodiger	CDM	France	26	80	188	1867
50558028	Hwang Hee Chan	Hee Chan	Hwang	ST	Korea Republic	25	77	177	28
50560067		Mads	Juel Andersen	CB	Denmark	23	78	194	1446
50562442	Nacho Gil	Ignacio	Gil	LM	Spain	25	69	170	468
50568647		David	Guzman	CDM	Costa Rica	31	79	178	687
50570796		Franko	Andrijašević	CAM	Croatia	30	82	186	110913
67323549		Patricio	Rubio	ST	Chile	32	74	174	112534
67333705		Kevin	Diks	RB	Holland	24	70	185	1746
8205	Braga	Bruno Manuel	Araújo Braga	CM	Portugal	38	75	181	666
23823		Andreas	Johansson	CB	Sweden	39	72	184	702
50955		Johan	Cavalli	CAM	France	39	65	170	614
51123		Mathieu	Bodmer	CDM	France	38	90	190	1816
110019	Dorado	José Antonio	Dorado Ramírez	CB	Spain	39	70	180	480
129566		Paul	McShane	CB	Republic of Ireland	35	81	183	1793
138110	Bruno Alves	Bruno Eduardo	Regufe Alves	CB	Portugal	39	81	189	50
139533		Alan	Hutton	RB	Scotland	36	73	185	2
140498		David	Marshall	GK	Scotland	36	83	190	1952
142756		Patricio	Toranzo	CAM	Argentina	39	73	178	111711
143119		Mariano	Pavone	ST	Argentina	39	81	181	101083
146637	Dani Giménez	Daniel	Giménez Hernández	GK	Spain	38	77	182	242
155671		Łukasz	Trałka	CDM	Poland	37	77	186	873
156988		Antonio	Nocerino	CDM	Italy	36	75	175	112026
157707		Besart	Berisha	ST	Kosovo	36	80	183	113157
158685	Defendi	Rodrigo	Defendi	CB	Brazil	35	83	190	666
161636		Néstor	Ortigoza	CDM	Paraguay	36	78	180	110580
162890		Jonathan	Spector	CB	United States	35	80	182	112606
164484		Johan	Dahlin	GK	Sweden	34	90	191	320
165787		Jorge	Ortiz	CM	Argentina	37	74	180	111715
168965		Rémy	Riou	GK	France	34	81	189	670
169404		Jasmin	Fejzić	GK	Bosnia and Herzegovina	35	95	198	110588
169808		Urby	Emanuelson	CM	Holland	35	68	176	1903
170342		Paul	Huntington	CB	England	33	80	191	1801
172475		Luigi	Bruins	LM	Holland	34	75	180	1971
172904		Lee	Tomlin	CAM	England	32	74	180	1961
173735		Neil	Taylor	LB	Wales	32	75	175	2
175932		Ritchie	De Laet	RB	Belgium	32	77	186	2
176732		Mattias	Bjärsmyr	CB	Sweden	35	82	186	101041
177273		Julio César	Domínguez	CB	Mexico	33	73	175	1878
177673		Shkëlzen	Gashi	LM	Albania	33	75	182	694
178470		Luigi	Vitale	LB	Italy	33	71	180	110373
179528	Xavi Torres	Xavier	Torres Buigues	CDM	Spain	34	82	184	468
179712		Zoltán	Stieber	RM	Hungary	32	67	175	688
181236	Fernando Boldrin	Fernando H.	Boldrin	CAM	Brazil	32	75	181	101020
183245	Kadu	Ricardo	Martins de Araújo	CB	Brazil	35	80	189	101026
184218		Lasse	Vibe	ST	Denmark	34	73	181	111769
185204	Diego Ângelo	Diego Ângelo	de Oliveira	CB	Brazil	35	84	192	741
186553		Matías	Rodríguez	RB	Argentina	35	75	178	15029
186990		Hugo	González	GK	Mexico	31	82	185	101121
187572	Thiago Carleto	Thiago	Carleto Alves	LB	Brazil	32	81	177	607
188168		George	Friend	LB	England	33	83	188	12
188385		Marvin	Martin	CAM	France	33	68	171	379
189300		Mattias	Johansson	RB	Sweden	29	66	174	1884
189459	Jaime Romero	Jaime	Romero Gómez	RM	Spain	31	77	176	1867
189857	Quique	Enrique	González Casín	ST	Spain	31	67	175	242
190430		Joe	Bennett	LB	England	31	74	178	1961
190557		Graham	Zusi	RB	United States	34	72	178	696
190658		Ousmane	Coulibaly	RB	Mali	32	75	183	1884
191034	Cyriac	Cyriac	Gohi Bi Zoro	ST	Côte d'Ivoire	31	75	172	101041
192072		Adrian	Stoian	LM	Romania	30	66	178	110734
192613		Costel	Pantilimon	GK	Romania	34	96	203	14
192824		Walid	Mesloub	CM	Algeria	35	69	180	64
193277		Jörg	Siebenhandl	GK	Austria	31	81	183	209
245261	Bruno Lamas	Bruno José	Pavani Lamas	CM	Brazil	27	70	176	1438
50471484		Carl	Medjani	CB	Algeria	36	77	184	113219
50491943		Eugene	Galekovic	GK	Australia	40	91	188	112224
50504168		Pierre	Kanstrup	CB	Denmark	32	81	188	749
50520048		Thomas	Kaminski	GK	Belgium	28	80	190	674
50525580		Reggie	Lambe	ST	Bermuda	30	81	175	1944
50529585		Papy	Djilobodji	CB	Senegal	32	88	192	62
50531060	Sebá	Sebastião	de Freitas Couto	LW	Brazil	29	73	179	111674
50533871		Justin	Meram	LM	Iraq	32	75	185	112885
50534195		Jean-Christophe	Bahebeck	ST	France	28	76	182	1903
50534785		Robin	Jansson	CB	Sweden	29	87	187	433
50539645	Albentosa	Raúl	Albentosa Redal	CB	Spain	32	89	192	15019
50544117		Aly	Ghazal	CDM	Egypt	29	84	189	10019
50545998		Michael	Rangel	ST	Colombia	30	80	185	101101
50546803		Fernando	Zuqui	CM	Argentina	29	65	170	110406
50551677		Saîf-Eddine	Khaoui	CAM	Tunisia	26	68	182	210
50553082		Dieter	Villalpando	CM	Mexico	30	67	172	1880
50554893		Brian	Fernández	ST	Argentina	26	74	171	111140
50557239		Leonardo	Suárez	RM	Argentina	25	60	167	453
50558459		Franco	Soldano	ST	Argentina	26	74	177	280
50561347		Nicolás	Benedetti	CAM	Colombia	24	70	177	1879
50564546		Tsukasa	Morishima	RW	Japan	24	66	175	113157
50568734	Kim Min Jae	Min Jae	Kim	CB	Korea Republic	24	88	189	111768
67301770		Luis Miguel	Rodríguez	ST	Argentina	36	71	168	110406
67324077		Axel	Werner	GK	Argentina	25	85	192	573
67346427		Aliou	Badji	ST	Senegal	23	75	189	254
9833		Diederik	Boer	GK	Holland	40	89	194	1914
32740		Johan	Wiland	GK	Sweden	40	78	188	708
49212		Julián	Speroni	GK	Argentina	42	80	186	1799
102056		Simone	Padoin	RB	Italy	37	73	179	1842
110787	Borja Fernández	Borja	Fernández Fernández	CDM	Spain	40	82	189	462
137373		Massimo	Gobbi	LB	Italy	40	76	182	50
138384		Marc	Janko	ST	Austria	38	92	196	10032
139727		Frank	Boeckx	GK	Belgium	34	80	181	229
142329		Alexandros	Tziolis	CDM	Greece	36	90	191	113057
142775		Agustín	Orión	GK	Argentina	40	85	187	110980
145117	Dorca	Albert	Dorca Maso	CDM	Spain	38	77	182	100831
152567		Alexander	Tettey	CDM	Norway	35	68	180	1792
156221		Cristian	Săpunaru	CB	Romania	37	81	187	101020
157479	Pedro López	Pedro	López Muñoz	RB	Spain	37	72	174	1853
158293	Zheng Zhi	Zhi	Zheng	CDM	China PR	40	75	180	111839
159157		Braulio	Leal	CM	Chile	39	64	173	112668
162052		David	Ousted	GK	Denmark	36	88	192	688
162198		Ghislain	Gimbert	ST	France	36	80	183	614
163619		Jonny	Hayes	LM	Republic of Ireland	34	70	173	78
165191		Cameron	Jerome	ST	England	34	85	185	91
167661		Jesús	Méndez	CM	Argentina	37	76	180	101088
169321		Miguel	Fraga	GK	Mexico	33	83	184	1881
169498		Joe	Garner	ST	England	33	73	178	1917
169978		Roy	Beerens	RW	Holland	33	63	173	1909
170915	Sastre	Lluís	Sastre Reus	CM	Spain	35	70	174	110839
172529		Brian	Hämäläinen	LB	Denmark	32	80	178	503
173450		James	Meredith	LB	Australia	33	73	179	97
174013	Olmo	Jesus	Olmo Lozano	CB	Spain	36	82	179	110854
176475		Roberto	Ovelar	ST	Paraguay	35	81	180	101105
176772		Alexandre	Oukidja	GK	France	33	79	184	68
177533	Manuel da Costa	Manuel Marouan	da Costa Senoussi	CB	Morocco	35	84	191	101014
177896		Mario	Vrančić	CM	Bosnia and Herzegovina	32	78	187	1792
178487		Craig	Gardner	CM	England	34	81	176	88
180635		Tommy	Elphick	CB	England	33	85	187	2
181436		Damien	Marcq	CDM	France	32	77	182	15005
183353	Víctor Díaz	Víctor David	Díaz Miguel	RB	Spain	33	72	184	110832
183632		Robert	Tesche	CM	Germany	34	71	180	160
184255		Kolbeinn	Sigþórsson	ST	Iceland	31	87	187	71
185129		Panagiotis	Glykos	GK	Greece	34	82	189	393
186161		Gilles	Sunu	RW	France	30	83	181	749
186695		Ezequiel	Muñoz	CB	Argentina	30	78	185	100888
187205		Luis	Fuentes	LB	Mexico	34	64	172	111678
187942		Rudy	Gestede	ST	Benin	32	86	193	12
188196		Ricardo	Noir	LM	Argentina	34	69	174	111708
188597		Erwin	Zelazny	GK	France	29	80	186	210
188674		Mustafa	Pektemek	CF	Turkey	32	72	182	327
189430		Simone	Colombi	GK	Italy	30	83	188	112409
189680	Fábio	Fábio	Pereira da Silva	LB	Brazil	31	65	172	71
190094	Javi Castellano	Javier	Castellano Betancor	CDM	Spain	33	71	180	472
190528		Janusz	Gol	CM	Poland	35	77	182	110747
190589		Stefan	Hierländer	RM	Austria	30	73	180	209
190870		John	Boye	CB	Ghana	34	73	184	68
191222	Unai Medina	Unai	Medina Pérez	RB	Spain	31	78	177	477
192495		Romaine	Sawyers	CAM	St. Kitts and Nevis	29	67	185	1925
192663		Fabian	Klos	ST	Germany	33	93	194	159
193172		Ben	Marshall	LM	England	30	83	180	1792
193581		Petar	Škuletić	ST	Serbia	31	89	192	70
193909	Escassi	Alberto	Escassi Oliva	CB	Spain	32	78	185	477
194718		Amara	Baby	LM	Senegal	32	80	183	670
194964		Nathaniel	Mendez-Laing	RW	England	29	75	180	1961
197860	Ivo Pinto	Ivo Daniel	F. Mendonça Pinto	RB	Portugal	31	70	184	1792
198194		Danny	Williams	CM	United States	32	80	182	1939
198874	Adriano	Carlos Adriano	de Souza Cruz	ST	Brazil	33	64	170	1477
199282		Amir	Abrashi	CDM	Albania	31	71	172	25
199651	Fernando Canesín	Fernando	Canesín Matos	CAM	Brazil	29	72	176	682
199861		Waldemar	Sobota	LM	Poland	34	63	175	110329
200113		Florian	Jozefzoon	RM	Holland	30	72	175	91
200425		Mike	te Wierik	CB	Holland	29	73	191	1915
200820		Jordan	Obita	LB	England	27	74	180	1793
158089		Pablo	Ledesma	CDM	Argentina	37	79	178	110581
158657		Thomas	Kessler	GK	Germany	35	92	197	31
160309		Avimiled	Rivas	CDM	Colombia	36	73	181	101099
162221		Faris	Haroun	CM	Belgium	35	75	188	230
163261		Phil	Bardsley	RB	Scotland	36	79	180	1796
166080	Evandro	Evandro	Goebel	CAM	Brazil	34	72	179	1952
167452		Oliver	Fink	CM	Germany	39	78	187	110636
168984		Ismaël	Bangoura	ST	Guinea	36	73	175	112392
169432		Mehdi	Lacen	CDM	Algeria	37	60	176	573
169710		Liam	Bridcutt	CDM	Scotland	32	76	175	14
170569	David Rodríguez	David	Rodríguez Sánchez	ST	Spain	35	75	178	479
171954		Bilal	Kısa	CM	Turkey	38	70	180	111340
173434		Pablo	Barrera	RM	Mexico	34	72	178	1881
173614		Jason	Pearce	CB	England	33	71	185	89
176345	Kwoun Sun Tae	Sun Tae	Kwoun	GK	Korea Republic	36	85	184	101147
176790		Stefan	Aigner	RM	Germany	33	73	183	167
177373		Lasse	Nielsen	CB	Denmark	33	74	185	320
177955		Daniel	Guerrero	CDM	Mexico	33	75	175	110152
178684	Nuno André Coelho	Nuno André	da Silva Coelho	CB	Portugal	35	82	192	518
180281	Fernandinho	Luiz Fernando	Pereira da Silva	LM	Brazil	35	67	171	112165
180818		David	McGoldrick	ST	Republic of Ireland	33	74	183	1794
181479		Alex	Wilkinson	CB	Australia	36	85	187	111400
183454		Eros	Pisano	RB	Italy	34	83	185	1919
183774		Ryan	Bennett	CB	England	31	78	188	110
184807	Mano	Luís Miguel	Lopes Mendes	RB	Portugal	34	67	170	665
186116		Henri	Lansbury	CM	England	30	85	185	2
186578		Andy	King	CM	Wales	32	79	184	95
187051		Sloan	Privat	ST	France	32	88	187	110456
188094		Jon	McLaughlin	GK	Scotland	32	83	188	106
188234	Felipe	Felipe	Trevizan Martins	CB	Brazil	34	90	193	485
188657		Declan	Rudd	GK	England	30	85	191	1801
189383		Mads	Albæk	CM	Denmark	31	77	185	29
189561		Bengali-Fodé	Koita	ST	France	30	86	186	111339
190122		Paul	Coutts	CM	Scotland	33	75	183	1794
190516		Yassine	El Ghanassy	LM	Belgium	31	73	173	112392
190569		Stefan	Frei	GK	United States	35	88	191	111144
190734		Giorgi	Makaridze	GK	Georgia	31	85	190	744
191104		Juan	Mercier	CDM	Argentina	41	78	185	111708
192128		Miiko	Albornoz	LB	Chile	30	80	180	485
192621		Dany	Nounkeu	CB	Cameroon	35	80	184	111340
192922		Oscar	Jiménez	GK	Mexico	32	80	182	1879
193185		Scott	Malone	LB	England	30	75	189	91
193695	Nélson Lenho	Nélson Ricardo	Rodrigues Lenho	LB	Portugal	37	71	178	666
193910		Adam	Forshaw	CM	England	29	71	174	8
194730	Juan Carlos	Juan Carlos	Martín Corral	GK	Spain	33	82	187	110831
195065		Geoffry	Hairemans	CAM	Belgium	29	76	183	230
197439		Felix	Wiedwald	GK	Germany	31	82	190	1824
198611		Nikola	Đurđić	ST	Serbia	35	77	183	708
198970		Jonathan	Mensah	CB	Ghana	31	83	188	687
199244		Lukáš	Hejda	CB	Czech Republic	31	86	189	110468
199594	Paco Montañés	Francisco	Montañés Claverías	LM	Spain	34	73	172	260
199789		Mustafa	Yumlu	CB	Turkey	33	77	191	111340
200059		Colin	Coosemans	GK	Belgium	29	84	186	674
200424		Ben	Rienstra	CM	Holland	31	67	182	1913
200713		Soner	Aydoğdu	CM	Turkey	30	72	180	101014
201093		Nick	Powell	CAM	England	27	65	183	1917
201447		Sebastian	Lletget	CAM	United States	28	75	178	697
201529		Marco	Capuano	CB	Italy	29	80	186	111657
202060		Emil	Bergström	CB	Sweden	28	87	188	1903
202271		Akaki	Gogia	RW	Germany	29	72	178	1831
202855	Tan Long	Long	Tan	ST	China PR	33	75	185	111769
203388	Tiago	Tiago	Alves Sales	ST	Brazil	28	72	181	1477
203864		Bruno	Zuculini	CM	Argentina	28	77	182	1876
204320		Xavier	Mercier	CAM	France	32	71	174	1750
205122	Adriano Facchini	Adriano	Facchini	GK	Brazil	38	74	185	112990
205256		Kévin	Boli	CB	France	30	76	184	112977
205691		Raffaele	Pucino	RB	Italy	30	74	183	110373
205970		Jed	Wallace	RM	England	27	70	178	97
206317		Nir	Bitton	CDM	Israel	29	82	194	78
207562		Sebastian	Andersson	ST	Sweden	30	85	190	1831
207835	Ademilson	Ademilson	Braga Bispo Júnior	ST	Brazil	27	74	176	112093
208597		Hjörtur	Hermannsson	CB	Iceland	26	81	190	269
209423		Mathieu	Michel	GK	France	29	84	189	1530
209828	Carlinhos	Carlos Vinícius	Santos de Jesús	CAM	Brazil	27	75	180	232
210560	Diogo Coelho	Diogo Alexis	Rodrigues Coelho	CB	Portugal	27	83	184	1891
210926		Abdullah	Ateef	CDM	Saudi Arabia	29	63	176	605
211394		Paolo Pancrazio	Faragò	RM	Italy	28	80	187	1842
211672		Tyler	Boyd	RM	New Zealand	26	66	180	1887
212183	Nacho	José Ignacio	Martínez García	LB	Spain	32	76	175	462
212282		Issiaga	Sylla	LB	Guinea	27	75	180	1809
212446		Luca	Garritano	LW	Italy	27	67	172	112168
212944		José	Cevallos	CAM	Ecuador	26	76	186	2007
213591		Juan	Cornejo	LB	Chile	30	78	177	110781
213763		Rasmus	Schüller	CDM	Finland	30	67	177	111138
214146		Elvis	Perlaza	RB	Colombia	32	72	173	101103
214343		Didier	Moreno	CDM	Colombia	29	71	178	242
214477		Andrés	Correa	CB	Colombia	37	74	180	101106
214874		Marcos	Bolados	CM	Chile	25	72	168	110975
215067		Daniel	Rosero Valencia	CB	Colombia	27	81	181	101102
215168		Juan	Garro	LM	Argentina	28	71	179	111711
215502		Bartłomiej	Drągowski	GK	Poland	23	74	188	110374
216003		Bartosz	Kapustka	LM	Poland	24	67	179	95
216701		Hernán	Menosse	CB	Uruguay	34	77	185	111022
217168		Javier	Abella	RB	Mexico	27	74	176	110144
218623	Cafú	Carlos Miguel	Ribeiro Dias	CDM	Portugal	28	84	183	1871
166838		Marc	Pugh	LM	England	34	72	180	1943
168317		Henok	Goitom	ST	Eritrea	36	85	189	433
169343		Michael	Madl	CB	Austria	33	74	181	256
169697		Darren	Randolph	GK	Republic of Ireland	34	78	188	12
170039		Ryan	Shotton	RB	England	32	84	191	12
171321		Graham	Dorrans	CM	Scotland	34	78	179	86
172886		Stylianos	Malezas	CB	Greece	36	76	192	393
173518		Tom	Clarke	CB	England	33	77	180	1801
175589	Feng Xiaoting	Xiaoting	Feng	CB	China PR	35	78	186	111839
176389	Jung Sung Ryong	Sung Ryong	Jung	GK	Korea Republic	36	90	191	111730
177105		Patrick	Ebert	LM	Germany	34	78	176	503
177684		Simone	Grippo	CB	Switzerland	32	82	188	244
178448		Andrea	Luci	CM	Italy	36	68	172	1844
179633		Søren	Rieks	LM	Denmark	34	75	185	320
179681		Miguel	Samudio	LB	Paraguay	34	74	172	110150
181404		Larrys	Mabiala	CB	Congo DR	33	80	189	111140
182520		Martin	Männel	GK	Germany	33	80	184	506
183518	Rui Fonte	Rui Pedro	da Rocha Fonte	ST	Portugal	31	73	179	144
184401	Paulo Henrique	Paulo Henrique	Carneiro Filho	ST	Brazil	32	80	185	111340
184990	Antoñito	Antonio Jesús	Regal Angulo	RB	Spain	33	64	174	462
186551		Fernando	Navarro	RB	Mexico	32	62	165	110781
186839		Niall	McGinn	RM	Northern Ireland	34	73	178	77
188070		Ronald	Vargas	CAM	Venezuela	34	70	174	111398
188352		Kevin	Großkreutz	RB	Germany	33	77	186	167
188671	Eloi Amagat	Eloi	Amagat Arimany	CM	Spain	36	72	183	112828
189369		Gianluca	Litteri	ST	Italy	33	82	186	205
189558		Bartosz	Salamon	CB	Poland	30	89	196	111657
190416		Damien	Le Tallec	CB	France	31	74	184	70
190542	Pedro Sánchez	Pedro Antonio	Sánchez Moñino	RM	Spain	34	74	175	242
190667		Marco	Terrazzino	LM	Germany	30	77	177	25
191089		Connor	Wickham	ST	England	28	90	191	1799
192110		Carlos	Fierro	RM	Mexico	27	70	175	1028
192608		Maxime	Barthelmé	CM	France	32	73	176	212
193143	Roderick Miranda	Roderick J.	Gonçalves Miranda	CB	Portugal	30	90	193	280
193222		Fabian	Giefer	GK	Germany	31	93	196	100409
193632		Arvydas	Novikovas	LM	Lithuania	30	76	179	110745
194354		Ehsan	Haji Safi	LB	Iran	31	74	176	280
194924	Toribio	Daniel	Toribio Gutiérrez	CDM	Spain	32	71	172	100831
197240		Nahir	Besara	CAM	Sweden	30	76	182	705
198032		Dan	Burn	CB	England	29	87	198	1917
198654		Alexandr	Kolomeytsev	CDM	Russia	32	78	183	100765
199152		Dejan	Lekić	ST	Serbia	36	88	193	110854
199313		Abdoulaye	Bamba	LB	Côte d'Ivoire	31	72	182	1530
199674	Jorge Teixeira	Jorge Filipe	Avelino Teixeira	CB	Portugal	34	89	189	680
199809		Tino-Sven	Sušić	CAM	Bosnia and Herzegovina	29	83	186	100651
200105		Johan	Kappelhof	CB	Holland	31	73	180	693
200461		Maciej	Makuszewski	RM	Poland	31	70	176	873
201041		Lionel	Carole	LB	France	30	79	182	76
201438		Hannes	Van Der Bruggen	CM	Belgium	28	74	180	100081
201877		Mats	Møller Dæhli	CAM	Norway	26	71	177	110329
202050		Thomas	Bruns	CM	Holland	29	72	177	1909
202605		Alexander	Milošević	CB	Sweden	29	82	191	433
202873		Kevin	Müller	GK	Germany	30	90	190	111235
203537		Sammy	Ameobi	RM	England	29	78	194	4
204104		Uroš	Đerić	ST	Serbia	29	95	195	112115
204289		Saido	Berahino	ST	England	28	82	180	1806
204830	Vadillo	Álvaro	Vadillo Cifuentes	LM	Spain	26	70	180	110832
205158	Guillermo	Guillermo	Fernández Hierro	ST	Spain	28	74	181	477
205556		Luka	Krajnc	CB	Slovenia	26	86	187	111657
205857		Eric	Mathoho	CB	South Africa	31	76	190	110929
206106		Cenk	Şahin	RM	Turkey	26	70	179	110329
206493		Yunis	Abdelhamid	CB	Morocco	33	83	190	379
207805		Loret	Sadiku	CDM	Kosovo	30	70	185	111339
208160		Darko	Jevtić	LM	Switzerland	28	75	182	873
208914		Omar	Hawsawi	CB	Saudi Arabia	35	76	185	112139
209473		Nabil	Ghilas	ST	Algeria	31	85	183	101026
210358		Alberto	Brignoli	GK	Italy	29	74	187	1843
210724		Callum	Paterson	CM	Scotland	26	76	187	1961
211348		Stole	Dimitrievski	GK	FYR Macedonia	27	81	188	15019
211499		Héctor	Quiñones	LB	Colombia	29	70	178	101099
211723		Tim	Knipping	CB	Germany	28	82	189	110178
212223		Sean	Maguire	ST	Republic of Ireland	27	68	175	1801
212381		Roberto	Insigne	RW	Italy	27	65	172	112026
212710	Joel Pereira	Joel	Castro Pereira	GK	Portugal	25	70	188	665
213302		Ismael	Tajouri-Shradi	LW	Libya	27	69	170	112828
213884		Ryan	Christie	CAM	Scotland	26	71	178	78
214096		Tim	Kleindienst	ST	Germany	25	84	194	25
214366		Rafael	Carrascal	CDM	Colombia	28	75	173	111722
214515		Marlon	Piedrahita	RB	Colombia	36	79	175	101101
214772		Nicolás	Pasquini	LB	Argentina	30	76	172	110395
215086		Brayan	Cortés	GK	Chile	26	79	185	110980
215294		Cristian	Menéndez	ST	Argentina	33	80	185	110145
215455		Bruno	Petković	ST	Croatia	26	88	192	211
216275		Phillipp	Mwene	RB	Austria	27	68	172	169
216549		Alexander	Sørloth	ST	Norway	25	90	194	1799
217287		Julien	De Sart	CDM	Belgium	26	73	186	12
218208		César	Fuentes	CDM	Chile	28	74	170	110975
219174		Ramiro	Carrera	RM	Argentina	29	72	182	110977
219814		Sean	Klaiber	RB	Holland	27	76	184	1903
220198		Bersant	Celina	LM	Kosovo	24	66	181	1960
220624		Lucas	Acosta	GK	Argentina	26	84	187	111022
221467	Lee Chang Min	Chang Min	Lee	CAM	Korea Republic	27	74	178	1478
221875	Son Jun Ho	Jun Ho	Son	CM	Korea Republic	29	62	178	1477
222022		Leonel	Di Plácido	RB	Argentina	27	72	176	110395
222598	Nélson Monte	Nélson	Macedo Monte	CB	Portugal	26	78	187	744
180593	Iriome	Iriome	González González	RM	Spain	34	79	185	110831
181006	Serginho	Sérgio Antônio	Borges Júnior	CDM	Brazil	35	70	178	111340
182209		Mark	Beevers	CB	England	31	80	193	4
183385		Adlène	Guédioura	CM	Algeria	35	81	178	14
183853	Aarón Ñíguez	Aarón	Ñíguez Esclápez	RM	Spain	32	72	170	110827
185172		Vincenzo	Fiorillo	GK	Italy	31	79	190	200
186331		Martin	Zeman	LM	Czech Republic	32	66	174	110468
186748	Vítor Gomes	Vitor Hugo	Gomes da Silva	CM	Portugal	33	81	183	666
187337		Guillermo	Molins	ST	Sweden	32	83	186	320
188128	Manu Barreiro	Manuel	Barreiro Bustelo	ST	Spain	35	81	191	15019
188546		Semir	Štilić	CAM	Bosnia and Herzegovina	33	75	183	1569
188949		Luca	Siligardi	RW	Italy	33	72	180	50
189472	Aridane	Aridane	Hernández Umpiérrez	CB	Spain	32	77	186	479
189928		Gennaro	Scognamiglio	CB	Italy	34	78	186	200
190424		Enock Kofi	Adu	CM	Ghana	30	67	178	433
190579		Yoann	Andreu	LB	France	32	70	178	1530
190633		Henrik	Dalsgaard	RB	Denmark	32	81	192	1925
191209		Jesús	Isijara	RM	Mexico	31	76	180	110144
191541		Atsuto	Uchida	RB	Japan	33	70	176	101147
192540		Mark	Duffy	CAM	England	35	72	175	1794
192778		Ilombe	Mboyo	ST	Belgium	34	82	186	100081
193147		Anthony	Gonçalves	CM	France	35	79	178	76
193333		Nicolò	Brighenti	CB	Italy	32	75	178	111657
193847	Osmar	Osmar	Ibañez Barba	CDM	Spain	33	89	192	101148
194361		Tomoaki	Makino	CB	Japan	34	77	182	111575
197062	Nuno Reis	Nuno Miguel	Pereira Reis	CB	Portugal	30	76	182	665
198000		Justin	Morrow	LB	United States	33	75	175	111651
198455		Johan	Larsson	RB	Sweden	31	75	181	269
199131		Anton	Tinnerholm	RB	Sweden	30	75	176	112828
199169		Kamohelo	Mokotjo	CM	South Africa	30	72	175	1925
199569		Erick	Torres	ST	Mexico	28	81	183	111678
199750		Rilwan	Hassan	RW	Nigeria	30	64	172	1516
199960		Jamie	Paterson	LM	England	29	67	175	1919
200387		William	Owusu	ST	Ghana	31	74	186	230
200519	Pulido	Jorge	Pulido Mayoral	CB	Spain	30	78	185	110839
201163		Michal	Frydrych	CB	Czech Republic	31	83	188	266
201368		Kenny	McLean	CM	Scotland	29	70	183	1792
201991	Erik Morán	Erik	Morán Arribas	CDM	Spain	30	74	187	278
202148		Abdul	Khalili	CAM	Sweden	29	77	182	111339
202678		Josh	Risdon	RB	Australia	29	70	169	112427
203363		Gustav	Valsvik	CB	Norway	28	91	196	110500
203590		Florian	Hübner	CB	Germany	30	84	193	1831
204276		Tomer	Hemed	ST	Israel	34	80	186	15
204406		Gabriel	Achilier	CB	Ecuador	36	85	179	1028
204876	Clerc	Carlos	Clerc Martínez	LB	Spain	29	69	182	479
205363		Matteo	Bianchetti	CB	Italy	28	81	189	206
205834		Simon	Lundevall	LM	Sweden	32	74	178	700
206141		Kalifa	Coulibaly	ST	Mali	29	87	197	71
206534		Patrick	Bamford	ST	England	27	71	185	8
207669		Ethan	Finlay	RM	United States	31	75	175	111138
208114	Patrick	Patrick	De Oliveira Vieira	RB	Brazil	30	76	173	1438
208730		Enrico	Valentini	RB	Germany	32	78	182	171
209483		Mouez	Hassen	GK	Tunisia	26	80	186	72
209769		Bilal	Başaçıkoğlu	RW	Turkey	26	70	173	101020
210438		Farid	Boulaya	CAM	Algeria	28	70	179	68
211060	Elsinho	Elson	Ferreira de Souza	RB	Brazil	31	78	180	111730
211504		Lewis	Baker	CM	England	26	72	182	8
211872		Philip	Heise	LB	Germany	30	78	184	503
212258		Saleh	Gomaa	CM	Egypt	28	75	177	112389
212428		Adama	Niane	ST	Mali	28	70	182	294
213064		Francisco	Calvo	CB	Costa Rica	29	77	180	111138
213705	Camacho	João Pedro	Gomes Camacho	RW	Portugal	27	75	171	1891
214018		Juan David	Cabezas	CDM	Colombia	30	79	182	698
214217		Benjamín	Vidal	CB	Chile	30	77	179	111328
214388		Danilo Moreno	Asprilla	CAM	Colombia	32	77	177	113057
214727		Ángel	Zaldívar	ST	Mexico	27	76	178	1880
214944	Gumbau	Gerard	Gumbau Garriga	CDM	Spain	26	77	187	100888
215157		Federico	Lértora	CDM	Argentina	31	73	176	111022
215344		Gerardo	Alcoba	CB	Uruguay	36	83	183	110144
215720		Marko	Vešović	RM	Montenegro	29	70	177	1871
216381		Jean	Zimmer	RB	Germany	27	74	171	110636
217167		Gael	Sandoval	LM	Mexico	25	66	170	1880
217802	Fábio Sturgeon	Fábio Miguel	Santos Sturgeon	LM	Portugal	27	76	183	10019
219127		Pablo	Galdames	CM	Chile	24	62	175	101088
219690	Diego Galo	Diego Fortunato	dos Santos Queiroz	CB	Brazil	37	80	185	666
220090	Raphael Rossi	Raphael	Rossi Branco	CB	Brazil	31	84	188	110770
220488		Filippo	Costa	LM	Italy	26	70	175	112791
220782		Marco	Ilaimaharitra	CDM	Madagascar	26	79	177	670
221702	Ewandro	Ewandro Felipe	de Lima Costa	RM	Brazil	25	67	176	256
221912	Kang Hyeon Mu	Hyeon Mu	Kang	GK	Korea Republic	26	78	185	1474
222573		Andres	Tello	CM	Colombia	24	80	181	112026
222987		Hotaru	Yamaguchi	CDM	Japan	30	72	173	101148
223240		Gonzalo	Bettini	RB	Argentina	28	74	171	110580
223297	Carraça	Rui Filipe	Caetano Moura	RB	Portugal	28	74	177	1898
224103		Erick	Aguirre	LM	Mexico	24	65	172	110147
224368		Moussa	Doumbia	LM	Mali	26	64	170	379
224836		Vanja	Milinković-Savić	GK	Serbia	24	92	202	112791
225541		Aboubakar	Kamara	ST	France	26	81	177	144
225863		Olivier	Boscagli	LB	France	23	68	181	72
227530		Damián	Lemos	CDM	Argentina	32	82	178	110581
227890	Nuno Santos	Nuno Miguel	Gomes dos Santos	LW	Portugal	26	73	179	744
228674		Georgiy	Tigiev	LB	Russia	26	76	177	100767
228967	Edu Machado	Eduardo José	Borges Machado	RB	Portugal	31	67	175	1898
229294		Alexandr	Zhirov	CB	Russia	30	88	193	110178
193706		Dario	Dumić	CB	Bosnia and Herzegovina	29	85	193	503
194727		Diego	Contento	LB	Germany	31	75	177	110636
196896	Babanco	Elvis Manuel	Monteiro Macedo	CM	Cape Verde Islands	36	74	180	10019
197973		Osvaldo	González	CB	Chile	36	79	182	1882
198379		George	Thorne	CDM	England	28	84	188	91
199060		Georgios	Tzavellas	CB	Greece	33	86	183	113142
199174		Antonio	Caracciolo	CB	Italy	31	83	185	206
199570		Jesús	Sánchez	RB	Mexico	31	68	168	1880
199748		Jonas	Knudsen	LB	Denmark	28	82	185	94
199895		Léo	Lacroix	CB	Switzerland	29	95	197	28
200065		Atınç	Nukan	CB	Turkey	28	86	196	112172
200434		Luis Pedro	Cavanda	RB	Belgium	30	76	180	232
200966		Benjamin	Corgnet	CAM	France	34	75	179	76
201240		Tom	Barkhuizen	LM	England	28	70	175	1801
201876		Ohi	Omoijuanfo	ST	Norway	27	75	188	917
202113		Moses	Odubajo	RB	England	28	72	177	1925
202559		Yohandry	Orozco	LW	Venezuela	30	73	168	111722
203138		Josh	Scowen	CDM	England	28	74	178	15
203439		Matteo	Tosetti	RM	Switzerland	29	68	176	1715
204227		Zinho	Gano	ST	Belgium	27	91	198	673
204372		Emrah	Başsan	RM	Turkey	29	66	177	749
204771		Rafael	Baca	CM	Mexico	31	65	170	1878
205188		Rachid	Alioui	ST	Morocco	29	82	186	224
205531		Valerio	Verre	CM	Italy	27	70	181	199
205858		Musa	Nyatama	CAM	South Africa	33	81	175	110930
206269		Laurent	Jans	RB	Luxembourg	29	76	178	68
206649		Alexis	Henríquez	CB	Colombia	38	94	192	101100
207887		Fabian	Schnellhardt	CM	Germany	27	75	180	1825
208505		Roman	Zozulya	ST	Ukraine	31	62	180	1854
208960		Harrison	Henao	CDM	Colombia	34	69	181	112579
209738		Andrés	Cadavid	CB	Colombia	35	87	188	101105
210374		Juan Pablo	Vigón	CM	Mexico	30	71	174	101114
211287		Moryké	Fofana	LM	Côte d'Ivoire	29	71	178	101033
211522		Alexander	Callens	CB	Peru	29	76	186	112828
211840		Marco	Hartmann	CDM	Germany	33	94	194	503
212231	Tobias Figueiredo	Tobias	Pereira Figueiredo	CB	Portugal	27	84	188	14
212409		Andrés	Rentería	ST	Colombia	28	79	179	1878
212607		Maxime	Chanot	CB	Luxembourg	31	84	186	112828
213537		Babacar	Sarr	CDM	Senegal	30	81	189	417
214006		Yerson	Candelo	RM	Colombia	29	68	170	101100
214299		Rafael	Caroca	CDM	Chile	32	72	174	15029
214413		Sebastián	Martínez	CDM	Chile	28	68	175	111327
214570		Stiven	Mendoza	LM	Colombia	29	70	171	1816
214986		Fernando	Meza	CB	Argentina	31	74	176	110980
215144		Emanuel	Insúa	LB	Argentina	30	82	182	1884
215437		Darnell	Fisher	RB	England	27	70	175	1801
215938		Marc	Dal Hende	LWB	Denmark	30	75	179	1516
216481		Jake	Cooper	CB	England	26	85	193	97
217710		Martín	Barragán	ST	Mexico	30	76	179	101121
218747		César	Pinares	CAM	Chile	30	73	176	110980
219180	Dani Calvo	Daniel	Calvo Sanromán	CB	Spain	27	82	190	477
220061		Norbert	Gyömbér	CB	Slovakia	29	74	189	199
220358		Facundo	Monteseirín	CB	Argentina	26	82	184	110395
221452	Nano	Alexander	Mesa Travieso	ST	Spain	26	71	173	260
221832		Lucas	Olaza	LB	Uruguay	27	68	175	1877
222204	Cao Yunding	Yunding	Cao	LM	China PR	31	70	173	110955
222501		Timothy	Castagne	RM	Belgium	25	80	185	39
223074		Dorin	Rotariu	RW	Romania	26	72	180	1906
223344	Wei Shihao	Shihao	Wei	RM	China PR	26	64	177	111768
223697		Robin	Gosens	LM	Germany	27	76	183	39
224263		Jonjoe	Kenny	RB	England	24	67	176	7
224461		Walter	Montoya	RM	Argentina	28	73	175	1878
225145		Ramahlwe	Mphahlele	RB	South Africa	31	80	185	110929
225653		Gyrano	Kerk	ST	Holland	25	68	175	1903
226273		Sean	Davis	CM	United States	28	75	183	689
227813		Oleksandr	Zinchenko	LB	Ukraine	24	64	175	10
228614		Gerrit	Holtmann	LM	Germany	26	77	183	169
229321	Amilton	Amilton	Minervino da Silva	RW	Brazil	31	66	172	666
229596		Mbilla	Etame	LM	Cameroon	33	77	180	113142
230681		Giuseppe	Pezzella	LB	Italy	23	85	187	55
231507		Alexis	Soto	LB	Argentina	27	71	177	101085
232230		Ronald	Matarrita	LB	Costa Rica	27	70	175	112828
233075	Garrido	Jon Ander	Garrido Moracia	CDM	Spain	31	81	185	1968
234112	Dodô	Domilson	Cordeiro dos Santos	RB	Brazil	22	68	166	1887
234762	Alberto Benito	Alberto	Benito Correo	RB	Spain	29	68	177	244
234966		Sebastián	Hernández	CM	Colombia	34	74	177	101101
235554		Ihsan	Sacko	ST	France	24	70	183	72
235981		Patrick	Burner	RB	France	25	65	170	72
236998		James	Léa Siliki	CM	France	25	70	183	74
238033		Florin	Nita	GK	Romania	34	73	184	267
239043		Umut	Bozok	ST	France	24	75	178	224
239322		Christoph	Zimmermann	CB	Germany	28	92	194	1792
239970	Paulinho	Paulo Henrique	Sampaio Filho	RM	Brazil	21	75	174	32
240526		Mohamed	Fouzair	RM	Morocco	29	69	168	112139
241720	André Pereira	André Filipe	Coelho Pereira	ST	Portugal	26	76	188	236
244467		Ondřej	Kolář	GK	Czech Republic	26	81	193	266
50487627		Ross	McCormack	ST	Scotland	34	74	175	111396
50500632		Ismaël	Bangoura	ST	Guinea	36	73	175	112990
50507580		Ritchie	De Laet	RB	Belgium	32	77	186	112224
50512283		Tommy	Elphick	CB	England	33	85	187	1952
50521017		Gianluca	Litteri	ST	Italy	33	82	186	112168
50524256		Maxime	Barthelmé	CM	France	32	73	176	294
50529087		Felix	Wiedwald	GK	Germany	31	82	190	1825
50533531	Alejandro Rodríguez	Alejandro	Rodríguez de Miguel	ST	Spain	30	80	183	190
50535011		Gustav	Valsvik	CB	Norway	28	91	196	298
201220		Ledian	Memushaj	CM	Albania	34	70	174	200
201514		Elias	Kachunga	RM	Congo DR	29	74	178	1939
201883	Alejandro Rodríguez	Alejandro	Rodríguez de Miguel	ST	Spain	30	80	183	1746
202149		Ergys	Kaçe	CM	Albania	28	62	170	1884
202646	Álex Martínez	Alejandro	Martínez Sánchez	LB	Spain	30	67	176	110832
203327		Andrey	Galabinov	ST	Bulgaria	32	88	190	110741
203633		Massimo	Bruno	RM	Belgium	27	74	178	112172
204280	Cristian Herrera	Cristian	Herrera Pérez	ST	Spain	30	85	189	110831
204519		Cuco	Martina	LB	Curaçao	31	77	185	1806
205008	Adryan	Adryan	Oliveira Tavares	LM	Brazil	26	70	175	110770
205529		Luca	Antei	CB	Italy	29	77	188	112026
205726		Gaston	Brugman	CM	Uruguay	28	66	175	200
206109		Yussif Raman	Chibsah	CM	Ghana	28	78	177	111657
206506		Tristan	Dingomé	CDM	France	30	69	174	379
207762	Jota	João Tiago	Serrão Garcês	CM	Portugal	28	70	171	1891
207943	Ewerton	Ewerton	da Silva Pereira	CDM	Brazil	28	69	179	10031
208564		Peter	Ankersen	RB	Denmark	30	75	179	819
209453		Adam	Frączczak	LM	Poland	34	76	184	110746
209701		Joey	Pelupessy	CDM	Holland	28	63	172	1807
210386		Kristoffer	Peterson	LW	Sweden	26	79	185	100634
210814		Julián	Velázquez	CB	Argentina	30	80	184	111678
211378		Jackson	Irvine	CAM	Australia	28	70	188	1952
211527	Álex Gallar	Álejandro	Gallar Falguero	RM	Spain	29	71	176	110839
212130		Mario	Maloča	CB	Croatia	32	83	190	165
212351		Pedro	Franco	CB	Colombia	30	73	183	101099
212466		Carlos	Cisneros	LM	Mexico	27	74	175	1880
212715		Sebastián	Palacios	RM	Argentina	29	69	170	110147
213446		Raúl	López	RB	Mexico	28	74	185	110147
213750		Ken	Sema	LM	Sweden	27	69	180	1795
214135		Julián	Quiñones	CB	Colombia	31	86	195	111722
214376		Darwin	Andrade	LB	Colombia	30	70	173	101102
214497		Andrés	Ricaurte	CDM	Colombia	29	70	182	101103
214817		Ángelo	Sagal	ST	Chile	28	77	179	110147
215111		Gonzalo	Verón	RM	Argentina	31	76	178	110093
215159		Washington	Camacho	RM	Uruguay	35	69	177	110580
215556		Edimilson	Fernandes	CAM	Switzerland	25	70	190	110374
216302		Emmanuel	García	LB	Mexico	31	66	170	110147
216605	Akapo	Carlos	Akapo Martínez	RB	Equatorial Guinea	28	70	178	110839
217646		Shūsaku	Nishikawa	GK	Japan	35	81	183	111575
218415		Aleksandar	Bjelica	LWB	Serbia	27	81	184	682
219617		Joaquín	Arzura	CDM	Argentina	28	71	176	1861
220064		Clifford	Aboagye	CM	Ghana	26	55	163	101114
220570		Jan	Bednarek	CB	Poland	25	77	189	17
220837		Deiver	Machado	LB	Colombia	27	62	172	101100
221820	Zhang Xizhe	Xizhe	Zhang	CAM	China PR	30	69	180	111768
222079		Josh	Onomah	CAM	England	24	83	185	18
222775		Tobias	Pachonik	RB	Germany	26	88	185	112409
223136		Yusuf	Erdoğan	LM	Turkey	29	68	171	742
223402		Emre	Taşdemir	LB	Turkey	25	70	176	742
223633		Leart	Paqarada	LB	Kosovo	26	76	184	110178
224151		Henry	Martín	ST	Mexico	28	73	177	1879
224422		Jérémie	Boga	LM	Côte d'Ivoire	24	68	174	111974
224967		Mamadou	Sylla	ST	Senegal	27	75	176	15005
225669		Kingsley	Ehizibue	RB	Holland	26	82	187	1914
227186		Augusto	Batalla	GK	Argentina	25	79	185	111715
227790	Jeong Seung Hyun	Seung Hyun	Jeong	CB	Korea Republic	27	89	188	101147
228144	Jorge Pombo	Jorge Marcos	Pombo Escobar	ST	Spain	27	78	173	244
229155		Thomas	Ouwejan	LB	Holland	25	72	183	1906
229359	Miramón	Jorge	Miramón	RB	Spain	32	74	176	110839
230672	Lyanco	Lyanco	Neves Vojnovic	CB	Brazil	24	75	187	54
232183		Collins	Fai	LB	Cameroon	28	72	167	232
232708		Milton	Valenzuela	LB	Argentina	22	64	168	687
233411		Claud	Adjapong	LM	Italy	23	74	180	111974
234426	Marcão	Marcos	Nascimento Teixeira	CB	Brazil	25	81	185	518
234853	Jean Cléber	Jean Cléber	Santos da Silva	CM	Brazil	31	80	180	1893
234889		Fredrik	Jensen	CAM	Finland	23	80	183	100409
235717		Berkay	Özcan	CAM	Turkey	23	79	180	36
236513		Lindsay	Rose	CB	Mauritius	29	88	186	217
236987		Boubacar	Kamara	CB	France	21	68	178	219
237631		Lebo	Mothiba	ST	South Africa	25	76	182	65
238621	Rodrigo Becão	Rodrigo	Nascimento França	CB	Brazil	25	79	191	315
239475		Jonathan	González	CM	Mexico	22	62	175	1032
239845		Konstantinos	Galanopoulos	CDM	Greece	23	72	172	278
240409		Dimitrios	Kolovetsios	CB	Greece	29	77	182	1884
241672		Marko	Lešković	CB	Croatia	30	86	188	211
243863		Igor	Plastun	CB	Ukraine	30	80	193	674
50475848		Eren	Albayrak	LB	Turkey	30	69	179	101144
50500969		Miguel	Fraga	GK	Mexico	33	83	184	101114
50505661	Olmo	Jesus	Olmo Lozano	CB	Spain	36	82	179	468
50515166	Rui Fonte	Rui Pedro	da Rocha Fonte	ST	Portugal	31	73	179	65
50518226		Andy	King	CM	Wales	32	79	184	91
50523758		Carlos	Fierro	RM	Mexico	27	70	175	1878
50529680		Dan	Burn	CB	England	29	87	198	1808
50530822		Antonio	Caracciolo	CB	Italy	31	83	185	111434
50534253		Alexander	Milošević	CB	Sweden	29	82	191	14
50541071		Mathieu	Michel	GK	France	29	84	189	57
50542996		Stole	Dimitrievski	GK	FYR Macedonia	27	81	188	480
50544358	Joel Pereira	Joel	Castro Pereira	GK	Portugal	25	70	188	11
50546522		Marcos	Bolados	RW	Chile	25	72	168	110980
50548349		Hernán	Menosse	CB	Uruguay	34	77	185	110831
50550822		Ramiro	Carrera	RM	Argentina	29	72	182	111708
50554722		Dorin	Rotariu	RW	Romania	26	72	180	231
50556601	André Moreira	André Campos	Moreira	GK	Portugal	25	84	194	10019
219510		Ebenezer	Ofori	CM	Ghana	26	70	172	112828
219942		Didier	Delgado	RB	Colombia	29	70	185	101102
220355	Alex Alegría	Alexander	Alegría Moreno	ST	Spain	28	82	189	449
220659		Josh	Brownhill	CM	England	25	69	178	1919
221582		Jair	Palacios	RB	Colombia	31	72	178	101105
221896		Donis	Avdijaj	LW	Kosovo	24	70	172	1907
222411		Jérôme	Prior	GK	France	25	86	187	59
222883		Thomas	Touré	LM	Côte d'Ivoire	27	73	175	1530
222988		Toshihiro	Aoyama	CM	Japan	35	75	174	113157
223249		Gabriel	Arias	GK	Chile	33	91	187	101085
223570		Junior	Sambia	CM	France	24	73	185	70
224126	Crislan	Crislan	da Silva de Souza	ST	Brazil	29	85	187	101149
224459		Víctor	Salazar	RB	Argentina	28	67	175	1013
224953	André Moreira	André Campos	Moreira	GK	Portugal	25	84	194	2
225502		Kevin	Balanta	CDM	Colombia	24	73	179	101102
225782		Ainsley	Maitland-Niles	CM	England	23	71	177	1
227293	Jonas	Jonas	Gomes de Sousa	CDM	Brazil	29	82	185	607
227689		Kerim	Mrabti	CF	Sweden	27	75	175	710
228124		Matej	Jonjić	CB	Croatia	30	83	187	101148
229271		Pascal	Köpke	ST	Germany	25	75	178	166
229782		Milan	Gajić	RB	Serbia	25	75	178	59
231002		Jozo	Šimunović	CB	Bosnia and Herzegovina	27	85	190	78
231640	Ontiveros	Javier	Ontiveros Parra	RM	Spain	23	68	172	573
233061		Mathias	Pereira Lage	LM	France	24	67	180	1815
233531		Yeferson	Soteldo	RM	Venezuela	24	55	160	15029
234716		Joseph	Attamah	CB	Ghana	27	80	180	101014
235173		Ibrahim	Sangaré	CM	Côte d'Ivoire	23	77	191	1809
235812		Giorgi	Kvilitaia	ST	Georgia	27	82	193	674
236532		Robin	Koch	CB	Germany	25	85	192	25
237291		Gustavo	Blanco	ST	Argentina	29	85	190	573
238227		Krépin	Diatta	RM	Senegal	22	68	175	231
239210		Félix	Eboa Eboa	CB	Cameroon	24	80	186	62
239717		Oleg	Danchenko	RB	Ukraine	27	64	178	101059
240037		Srdjan	Plavšić	RM	Serbia	25	60	166	267
241168		Giorgi	Chakvetadze	CAM	Georgia	21	75	178	674
243402	Lisandro Semedo	Lisandro Pedro	Varela Semedo	RW	Portugal	25	74	175	634
50365727		Ashley	Cole	LB	England	40	66	176	91
50496839		Cameron	Jerome	ST	England	34	85	185	101026
50502217	David Rodríguez	David	Rodríguez Sánchez	ST	Spain	35	75	178	477
50510118		Luigi	Vitale	LM	Italy	33	71	180	206
50519776	Manu Barreiro	Manuel	Barreiro Bustelo	ST	Spain	35	81	191	110831
50524426		Ilombe	Mboyo	LW	Belgium	34	82	186	112392
50526366		Amara	Baby	LM	Senegal	32	80	183	230
50530800		Dejan	Lekić	ST	Serbia	36	88	193	1968
50534207		Yohandry	Orozco	LW	Venezuela	30	73	168	110152
50537754		Cenk	Şahin	RM	Turkey	26	70	179	111239
50543152		Lewis	Baker	CM	England	26	72	182	1793
50544712		Francisco	Calvo	CB	Costa Rica	29	77	180	693
50546061		Sebastián	Martínez	CDM	Chile	28	68	175	15029
50548197		Alexander	Sørloth	ST	Norway	25	90	194	674
50550828	Dani Calvo	Daniel	Calvo Sanromán	CB	Spain	27	82	190	468
50553727		Josh	Onomah	CAM	England	24	83	185	1807
50556615		Mamadou	Sylla	ST	Senegal	27	75	176	680
50559337		Kerim	Mrabti	CF	Sweden	27	75	175	88
50565681	Borja Lasso	Borja	Lasso De La Vega	CAM	Spain	27	72	186	260
50572174		Mohamed	Fouzair	RM	Morocco	29	69	168	113219
67329219	Alex Alegría	Alexander	Alegría Moreno	ST	Spain	28	82	189	459
84083320		Nahir	Besara	CAM	Sweden	30	76	182	113057
229682		Dael	Fry	CB	England	23	72	191	12
230043		Faitout	Maouassa	LW	France	23	73	170	74
231530	José Arnáiz	José Manuel	Arnáiz Díaz	LM	Spain	26	70	175	100888
232080		Jack	Harrison	RM	England	24	70	175	8
232318	Waguininho	Wagner	da Silva Souza	ST	Brazil	31	69	178	983
232730		Daichi	Kamada	CAM	Japan	25	73	184	1824
233113	Aleñà	Carles	Aleñà Castillo	CM	Spain	23	73	180	241
233472		Noah Joel	Sarenren Bazee	RM	Nigeria	24	70	182	485
234078		Orel	Mangala	CM	Belgium	23	78	178	28
234824		Yoane	Wissa	LW	France	24	75	180	217
234957	Platiny	Higor Inácio	Platiny Rodrigues	ST	Brazil	30	64	178	518
235312	Alfonso Herrero	Alfonso	Herrero Peinador	GK	Spain	27	83	183	110827
235706	Murilo Freitas	Murilo	Oliveira de Freitas	LW	Brazil	25	66	176	744
236345		Andriy	Totovytskyi	CAM	Ukraine	28	77	187	101059
236466		Clément	Michelin	RB	France	24	63	178	1809
236836		Orji	Okwonkwo	LW	Nigeria	23	72	181	189
237532	Rodrigo	Rodrigo	Alves Soares	RB	Brazil	28	71	176	666
237995		Diego	Lainez	RM	Mexico	21	58	167	1879
238802		Philip	Türpitz	ST	Germany	29	74	178	110588
239441	Jordi Mboula	Jordi	Mboula Queralt	RM	Spain	22	74	183	69
239814		Dylan	Batubinsika	CB	France	25	87	185	230
240164		Dumisani	Zuma	RW	South Africa	26	72	169	110929
240281	Tiago Lopes	Tiago	Lopes	RB	Portugal	32	66	180	101020
241637		Aurélien	Tchouaméni	CDM	France	21	76	185	59
242112		Eduard	Bello	CAM	Venezuela	25	72	177	112533
244270		Nikola	Moro	CDM	Croatia	23	77	183	211
50470877		Carlos	Salcido	CB	Mexico	41	80	176	110145
50503012		Edgar	Castillo	LB	United States	34	77	170	691
50509169		Bernd	Nehrig	CDM	Germany	34	79	180	110500
50518429		Kenneth	Kronholm	GK	United States	35	85	189	693
50523462	Lee Jae Sung	Jae Sung	Lee	CB	Korea Republic	33	75	187	110765
50525176		Idrissa	Sylla	ST	Guinea	30	73	186	15005
50529573		Alen	Stevanovic	LW	Serbia	30	75	180	1569
50530695		Dinny	Corcoran	ST	Republic of Ireland	32	82	184	305
50532947		Nicola	Leali	GK	Italy	28	78	188	110911
223138		Anthony	Briançon	CB	France	26	79	185	224
223293	Afonso Figueiredo	Afonso	Rebeiro Figueiredo	LB	Portugal	28	64	171	744
224081		Kalvin	Phillips	CDM	England	25	72	178	8
224396		Yeimar	Gómez Andrade	CB	Colombia	29	92	187	111716
224810		Stéphane	Sparagna	CB	France	26	82	186	1898
225293		Habib	Diallo	ST	Senegal	26	79	186	68
225680		Arturo	Mina	CB	Ecuador	30	84	190	113259
226162		Emiliano	Buendía	RM	Argentina	24	65	170	1792
227638		Suleiman	Abdullahi	ST	Nigeria	24	86	185	1831
227932		Lukas	Fröde	CDM	Germany	26	85	192	1825
228761		Óscar	Estupiñán	ST	Colombia	24	74	182	1887
229084		Robert	Herrera	CB	Uruguay	32	83	187	110147
229332	Campillo	Antonio	Campillo Medina	CAM	Spain	30	70	176	110831
230072		Riad	Bajić	ST	Bosnia and Herzegovina	27	80	189	101014
231231		Brayan	Garnica	RM	Mexico	25	56	167	101114
232562		Kosuke	Nakamura	GK	Japan	26	82	185	101145
233231	Jon Bautista	Jon	Bautista Orgilles	ST	Spain	26	72	180	457
234122	Artur	José Artur	de Lima Junior	CDM	Brazil	25	68	181	687
234835	Domingos Duarte	Domingos Sousa	Menezes Duarte	CB	Portugal	26	78	190	242
235290		Kevin	Bonifazi	CB	Italy	25	85	187	112791
236512		Wesley	Lautoa	CDM	New Caledonia	33	87	182	110569
237105		Óscar	Cabezas	CB	Colombia	24	79	180	110580
237548		Oussama	Haddadi	LB	Tunisia	29	85	184	110569
238940		Jakub	Jugas	CB	Czech Republic	29	88	188	266
239580	Bremer	Gleison Bremer	Silva Nascimento	CB	Brazil	24	80	183	54
240240		Jean-Pierre	Nsame	ST	Cameroon	28	88	188	900
241240		Tatsuya	Itō	LM	Japan	24	59	163	28
241775		Jawad	El Yamiq	CB	Morocco	29	83	190	199
50441667	Dorado	José Antonio	Dorado Ramírez	CB	Spain	39	70	180	244
50491957		Avimiled	Rivas	CDM	Colombia	36	73	181	111723
50501052		Jasmin	Fejzić	GK	Bosnia and Herzegovina	35	95	198	110500
50509603		Daniel	Guerrero	CDM	Mexico	33	75	175	1879
50515866		Lasse	Vibe	ST	Denmark	34	73	181	319
50522382		Giorgi	Makaridze	GK	Georgia	31	85	190	665
50524795		Anthony	Gonçalves	CM	France	35	79	178	210
50530103		Johan	Larsson	RB	Sweden	31	75	181	62
50533698		Thomas	Bruns	CM	Holland	29	72	177	1915
50535281		Massimo	Bruno	RM	Belgium	27	74	178	670
50541386		Andrés	Cadavid	CB	Colombia	35	87	188	110406
50544057		Andrés	Rentería	ST	Colombia	28	79	179	1013
50545239		Juan	Cornejo	LB	Chile	30	78	177	110975
50546992		Gerardo	Alcoba	CB	Uruguay	36	83	183	111715
50550395		César	Pinares	CAM	Chile	30	73	176	110975
50552003	Alex Alegría	Alexander	Alegría Moreno	ST	Spain	28	82	189	480
50555050		Emre	Taşdemir	LB	Turkey	25	70	176	325
50557150		Kevin	Balanta	CDM	Colombia	24	73	179	111678
50562329		Giuseppe	Pezzella	LB	Italy	23	85	187	110556
50566938		Kevin	Bonifazi	CB	Italy	25	85	187	54
67264843		Ross	McCormack	ST	Scotland	34	74	175	83
67313601	Salvador Agra	Salvador José	Milhazes Agra	RM	Portugal	29	61	166	234
84098790	Joel Pereira	Joel	Castro Pereira	GK	Portugal	25	70	188	100081
229649		Gabriel	Suazo	LM	Chile	23	67	175	110980
230855		Hauke	Wahl	CB	Germany	27	85	189	576
231777		Abdülkadir	Ömür	RM	Turkey	22	67	168	436
232148		Dániel	Sallói	LW	Hungary	25	68	185	696
232487		Wataru	Endo	CB	Japan	28	75	178	680
232736		Yuki	Kobayashi	CM	Japan	29	72	182	1913
233147		Ryota	Oshima	CDM	Japan	28	64	168	111730
233943	Ronaldo Vieira	Ronaldo	Vieira Nan	CDM	England	23	70	178	1837
234458		Carlos	Quintana	CB	Argentina	33	84	190	112670
235088	Luis Pérez	Luis Jesús	Pérez Maqueda	RB	Spain	26	68	173	260
235381		Vincent	Marcel	RW	France	24	65	180	294
235927		Pablo	Cuadra	ST	Argentina	26	62	165	101085
236527		Santiago	Cáseres	CDM	Argentina	24	75	177	483
237221		Juan	Foyth	CB	Argentina	23	69	187	18
237895		Vito	van Crooij	LM	Holland	25	70	177	1914
238858	Bruno Tabata	Bruno Vinícius	Souza Ramos	RW	Brazil	24	67	175	10031
239331		Giorgi	Papunashvili	RM	Georgia	25	76	180	244
239842		Georgios	Giakoumakis	ST	Greece	26	86	186	278
240690		Nicolás	González	ST	Argentina	23	67	180	36
241746		Yassine	Meriah	CB	Tunisia	28	78	180	280
243780	Kangin Lee	Kangin	Lee	CAM	Korea Republic	20	61	173	461
244584		Oleksiy	Shevchenko	GK	Ukraine	29	81	188	101059
50493963		Liam	Ridgewell	CB	England	37	79	188	1952
50501586	Hugo Vieira	Hugo Filipe	da Costa Oliveira	ST	Portugal	33	73	178	101041
50510232		Alex	Pearce	CB	Republic of Ireland	32	85	188	97
50520473		Ahmed	Kashi	CM	Algeria	32	76	178	1951
50524849		Ömer	Bayram	LB	Turkey	30	73	173	325
50526685		Danny	Batth	CB	England	30	90	191	12
50530335		Saliou	Ciss	LB	Senegal	32	69	173	110456
50531337		Ángel	Sepúlveda	RM	Mexico	30	75	180	101121
50535995	Bernardo	Bernardo Víctor	Cruz Torres	CB	Spain	28	85	190	110832
50538192		Roman	Bezus	CAM	Ukraine	30	82	186	674
50539608	Aitor García	Aitor	García Flores	ST	Spain	27	72	174	459
50543696		Alexandru	Chipciu	RM	Romania	32	73	177	229
50545669		Fáiner	Torijano	CB	Colombia	32	73	182	101104
50547022		Scott	Hogan	ST	Republic of Ireland	29	64	180	1794
50552769		Dario	Rodríguez	ST	Colombia	26	68	174	101106
50554161		Rolando	Aarons	LM	England	25	76	178	1807
50557280		Oliver	Burke	RW	Scotland	24	74	188	78
50558078		Sead	Hakšabanovič	LM	Montenegro	22	70	174	702
50561170	Francisco Ramos	Francisco	Neto Ramos	CM	Portugal	26	76	185	1438
50564340		Guillermo	Acosta	RM	Argentina	32	65	170	110395
229404		Amro	Tarek	CB	Egypt	29	88	191	112606
230857	Nuno da Costa	Nuno Miguel	da Costa Jóia	ST	Cape Verde Islands	30	70	182	76
231823		Justin	Hoogma	CB	Holland	23	81	190	10029
232619		Kosei	Shibasaki	RM	Japan	36	65	176	113157
233097		Rick	van Drongelen	CB	Holland	22	81	185	28
234033	Borja Lasso	Borja	Lasso De La Vega	CAM	Spain	27	72	186	481
234622		Guessouma	Fofana	CDM	France	28	77	184	62
234875		Lucas	Höler	ST	Germany	27	80	183	25
235544		Samir	Memišević	CB	Bosnia and Herzegovina	27	77	185	1915
235866		Christian	Kouamé	ST	Côte d'Ivoire	23	70	185	110556
236944		Fousseni	Diabaté	RM	Mali	25	60	175	95
237238		Scott	McTominay	CM	Scotland	24	88	193	11
238569		Kingsley	Schindler	RM	Ghana	28	80	183	576
239106		Leonardo	Koutris	LB	Greece	26	68	175	280
239782		Bryan	Acosta	CAM	Honduras	27	73	175	260
240271		Dimitris	Limnios	LM	Greece	23	71	180	393
240936		Jérémy	Grimm	CDM	France	34	69	181	76
243686	Chiquinho	Francisco L.	Lima Silva Machado	CAM	Portugal	26	66	174	1900
244791		Patrik	Hrošovský	CM	Slovakia	29	70	174	110468
50498486		Marc	Pugh	LM	England	34	72	180	1952
50504552		Lee	Tomlin	CAM	England	32	74	180	1938
50512884	Fernando Boldrin	Fernando H.	Boldrin	CAM	Brazil	32	75	181	101037
50515903		Kolbeinn	Sigþórsson	ST	Iceland	31	87	187	433
50522857		Jesús	Isijara	RM	Mexico	31	76	180	101114
50524820		Ben	Marshall	LM	England	30	83	180	97
50530027		George	Thorne	CDM	England	28	84	188	1923
50533639	Erik Morán	Erik	Morán Arribas	CDM	Spain	30	74	187	573
50536167		Cuco	Martina	RB	Curaçao	31	77	185	246
50542708	Elsinho	Elson	Ferreira de Souza	RB	Brazil	31	78	180	101149
50544076		Adama	Niane	ST	Mali	28	70	182	670
50545865		Benjamín	Vidal	CB	Chile	30	77	179	110975
50546634		Fernando	Meza	CB	Argentina	31	74	176	101121
50548935		Julien	De Sart	CDM	Belgium	26	73	186	100081
50553480		Lucas	Olaza	LB	Uruguay	27	68	175	450
50555774	Crislan	Crislan	da Silva de Souza	ST	Brazil	29	85	187	1896
50557189		Aboubakar	Kamara	ST	France	26	81	177	113259
50562879		Brayan	Garnica	RM	Mexico	25	56	167	110144
50567365		Berkay	Özcan	CAM	Turkey	23	79	180	28
50569279		Lebo	Mothiba	ST	South Africa	25	76	182	76
67310740		Ohi	Omoijuanfo	ST	Norway	27	75	188	417
84096881		David	Accam	LW	Ghana	30	79	174	687
229654	Gerard Valentín	Gerard	Valentín Sancho	RB	Spain	28	74	176	242
230708		Joe	Worrall	CB	England	24	90	190	14
231612		Romain	Del Castillo	RM	France	25	60	172	74
232223		Konstantinos	Tsimikas	LB	Greece	25	77	178	280
232523		Bubacarr	Trawally	ST	Gambia	26	70	185	112977
232884		Shoma	Doi	LM	Japan	29	63	172	101147
233292		Miguel	Barbieri	CB	Argentina	27	79	181	110580
234048		Eric	Ocansey	RM	Ghana	23	71	173	2013
234816		Nicolás	Gorosito	CB	Argentina	32	79	186	1854
235103		Nana Opoku	Ampomah	LM	Ghana	25	68	175	110913
235526		Dennis	Geiger	CM	Germany	23	65	172	10029
235863		Marco	Varnier	CB	Italy	23	82	186	39
236382		Maximiliano	Olivera	LB	Uruguay	29	72	181	110374
236547		Jan	Sýkora	RM	Czech Republic	27	62	171	266
237223		Julian	Gressel	RM	Germany	27	84	186	112885
238072		Eduard	Löwen	CDM	Germany	24	91	188	171
238830	Alexandre Guedes	Alexandre	Garcia Guedes	ST	Portugal	27	77	185	1887
239116		Cristian	Ganea	LB	Romania	29	73	176	448
239732		Szymon	Żurkowski	CM	Poland	23	77	185	420
240122	Matheus	Matheus	Borges Domingues	CB	Brazil	29	88	192	230
241084		Luis	Díaz	LM	Colombia	24	73	180	101101
241670		Filip	Bradarić	CDM	Croatia	29	77	185	1842
244021		Youssef	Kalfa	CAM	Syria	28	73	175	113222
244384		Artur	Rudko	GK	Ukraine	29	83	190	101047
50494534		Russell	Martin	CB	Scotland	35	85	185	1803
50499460		Semih	Kaya	CB	Turkey	30	82	183	325
50506317		Krzysztof	Mączyński	CDM	Poland	34	66	175	111092
50514987		Jo Inge	Berget	ST	Norway	30	81	186	320
50522386		Håvard	Nielsen	ST	Norway	28	80	187	1825
50524740		Marco	Rojas	RW	New Zealand	29	64	168	1447
50526920		Marco Davide	Faraoni	RB	Italy	29	71	180	206
50530186		Bjørn	Paulsen	CB	Denmark	30	77	190	111239
50530831	Kim Bo Kyung	Bo Kyung	Kim	CM	Korea Republic	31	73	178	1473
50535769		Jakub	Brabec	CB	Czech Republic	29	83	187	110468
50538078		Joe	Pigott	ST	England	27	60	183	112259
50540981		Chris	Maxwell	GK	Wales	31	74	191	89
50544591		Mauro	Caballero	ST	Paraguay	26	65	175	110977
50545733		Nicolás	Carreño	LB	Colombia	28	76	176	111723
50546059		Nicolás	Maturana	RW	Chile	28	63	163	112534
50552077		Gastón	Campi	CB	Argentina	30	87	193	518
50555070		Emanuel	Loeschbor	CB	Argentina	34	78	180	1878
50557187		Dominic	Solanke	ST	England	23	80	187	9
50559205		Mateo	Cassierra	ST	Colombia	24	77	184	245
50561691		Faitout	Maouassa	LW	France	23	73	170	224
50564378		Daichi	Kamada	CAM	Japan	25	73	184	680
50566521		Marko	Pajač	LM	Croatia	28	69	185	1746
50570764		Cristian	Ganea	LB	Romania	29	73	176	477
67293251		John	Bostock	CM	Trinidad and Tobago	29	84	188	1809
67334403		Dominic	Solanke	ST	England	23	80	187	1943
232514		Gabriel	Carabajal	RM	Argentina	29	75	178	110581
232695		Franco	Sbuttoni	CB	Argentina	32	84	190	111708
233029		Rodrigo	Aliendro	CDM	Argentina	30	74	175	111708
233225		Shogo	Taniguchi	CB	Japan	30	73	183	111730
233731		Alexander	Isak	ST	Sweden	21	74	190	22
50539591	Ewerton	Ewerton	da Silva Pereira	CM	Brazil	28	69	179	111575
50543520		Philip	Heise	LM	Germany	30	78	184	1792
50544363		Sebastián	Palacios	RM	Argentina	29	69	170	112670
50546375		Ángel	Zaldívar	ST	Mexico	27	76	178	1032
50547204		Edimilson	Fernandes	CAM	Switzerland	25	70	190	19
50551158		Ebenezer	Ofori	CM	Ghana	26	70	172	36
50554992	Wei Shihao	Shihao	Wei	RM	China PR	26	64	177	111839
50556484		Vanja	Milinković-Savić	GK	Serbia	24	92	202	1847
50562320	Lyanco	Lyanco	Neves Vojnovic	CB	Brazil	24	75	187	189
50563471		Justin	Hoogma	CB	Holland	23	81	190	110329
50568592		Fousseni	Diabaté	LM	Mali	25	60	175	101041
67302293	Douglas	Douglas	Pereira dos Santos	RB	Brazil	31	60	171	241
67347907		Umut	Bozok	ST	France	24	75	178	217
229574		Arturo	Calabresi	CB	Italy	25	75	186	189
229991	Fran Villalba	Francisco José	Villalba Rodrigo	CAM	Spain	23	65	168	477
230981	Lucas Galvão	Lucas	Galvão	CB	Brazil	30	77	182	111239
231862		Leonardo	Castro	ST	Colombia	29	78	174	101103
232219	Bismark	Bismark	de Araújo Ferreira	LM	Brazil	28	78	170	112391
232610		Takuma	Asano	LM	Japan	26	71	173	485
232870		Naomichi	Ueda	CB	Japan	26	77	186	1750
233329		Mikel	Villanueva	CB	Venezuela	28	78	190	110854
234203		Carel	Eiting	CM	Holland	23	76	179	245
234763	Ramón Folch	Ramón	Folch Frigola	CM	Spain	31	78	182	110827
234913		Christian	Fassnacht	RM	Switzerland	27	77	185	900
235407		Salih	Özcan	CM	Germany	22	74	180	31
235874		Andrija	Balić	CM	Croatia	23	70	180	55
236522		Enrico	Brignola	CAM	Italy	22	72	168	111974
236935		Hannes	Wolf	CAM	Austria	22	68	175	191
237555		Jonathan	Bolingi	ST	Congo DR	27	70	188	230
238160		Merih	Demiral	CB	Turkey	23	85	192	113142
238555		Jefferson	Savarino	RW	Venezuela	24	66	169	111065
239389		Alfredo	Ábalos	CAM	Argentina	35	67	165	112709
239822		Eduardo	Tercero	CB	Mexico	25	69	182	1970
240257		Cheick	Traoré	RB	France	26	72	174	62
241509	Mauro Júnior	Mauro Jaqueson	J. Ferreira Santos	CAM	Brazil	22	62	171	247
241854		Perr	Schuurs	CB	Holland	21	79	193	245
244268		Ivan	Fiolić	CAM	Croatia	25	70	176	673
244628		Braian	Samudio	ST	Paraguay	25	79	180	101037
50497432		Darío	Bottinelli	CAM	Argentina	34	67	167	101099
50504795		Daniele	Dessena	CM	Italy	34	75	183	190
50511195		Vito	Mannone	GK	Italy	33	80	188	111138
50516312		Aurélien	Collin	CB	France	35	86	187	112134
50523592	Kim Sung Joon	Sung Joon	Kim	CM	Korea Republic	33	68	174	1473
50525770		Will	Grigg	ST	Northern Ireland	30	70	180	106
50529823		Luc	Castaignos	ST	Holland	28	78	188	111588
50530424		Jonathan	Williams	CAM	Wales	27	60	168	89
50535678		Stelios	Kitsiou	RB	Greece	27	70	173	101007
50536324	Gus Ledes	Luís Gustavo	Evangelista Santos	CDM	Portugal	28	70	173	477
50538298		Rafael	Robayo	CM	Colombia	37	78	183	112992
50542879		Ramón	Azeez	CDM	Nigeria	28	67	170	110832
50544818	Jeong Jae Yong	Jae Yong	Jeong	CDM	Korea Republic	30	78	188	1474
50545974		Christian	Vilches	CB	Chile	38	78	182	112535
50551766		Iliass	Bel Hassani	CAM	Morocco	28	72	175	1915
50553439		Rafał	Kurzawa	LM	Poland	28	73	182	1516
50557089		Kasey	Palmer	CAM	England	24	68	175	1919
50558049		Kieran	Dowell	CAM	England	23	80	185	1794
50560556		Jason	Berthomier	LM	France	31	74	177	1815
50563977		Kubilay	Kanatsızkuş	ST	Turkey	24	79	190	101007
50566106		Carlos	Quintana	CB	Argentina	33	84	190	111019
50568114		Clément	Michelin	RB	France	24	63	178	614
67271750		Russell	Martin	CB	Scotland	35	85	185	1798
67320600		Robert	Leipertz	RM	Germany	28	82	183	111235
67345330		Clément	Michelin	RB	France	24	63	178	64
232526		Elias	Cobbaut	LB	Belgium	23	83	189	229
232951		Hiroto	Nakagawa	CAM	Japan	26	57	155	101145
233250		Yuma	Suzuki	ST	Japan	25	75	182	101147
233591	Pomares	Carlos	Pomares Rayo	CB	Spain	28	74	182	469
233795		Ben	Brereton	ST	England	22	75	185	3
234278		Steve	Breitkreuz	CB	Germany	29	88	188	506
234679		Philippe	Sandler	CB	Holland	24	82	190	10
234747		Przemysław	Szymiński	CB	Poland	27	76	185	1843
235134		Pablo	Rosario	CDM	Holland	24	73	188	247
235297		Matúš	Bero	CAM	Slovakia	25	83	182	1909
235513		Silvère	Ganvoula	ST	Congo	25	85	190	160
235658		Victor	Nelsson	CB	Denmark	22	75	185	1788
235942		Francesco	Cassata	CM	Italy	24	75	183	111657
236624		Aymen	Barkok	RM	Germany	23	75	188	110636
237010	Deng Hanwen	Hanwen	Deng	RB	China PR	26	73	178	111839
237214		Lalas	Abubakar	CB	Ghana	26	84	185	687
237642		Raoul	Petretta	LB	Italy	24	70	176	896
238476		Dan-Axel	Zagadou	CB	France	22	90	196	22
239010	Delmás	Julián Javier	Delmás Germán	RB	Spain	26	63	174	244
239303		Yusupha	Njie	ST	Gambia	27	78	188	1898
239981		Jann-Fiete	Arp	ST	Germany	21	78	184	28
240289	Calero	Fernando	Calero Villa	CB	Spain	25	75	183	462
240802		Jan	Repas	LW	Slovenia	24	68	171	210
241496		Timothy	Weah	ST	United States	21	66	185	73
242052		Jesús	Medina	RW	Paraguay	24	70	178	112828
244374		Mykola	Shaparenko	CM	Ukraine	22	72	178	101047
245348	Farley	Farley Vieira	Rosa	LM	Brazil	27	65	177	112096
50478622	Miguel Flaño	Miguel	Flaño Bezunartea	CB	Spain	36	70	177	1867
50495044		James	Vaughan	ST	England	33	83	182	1790
50504404		Tomasz	Jodłowiec	CDM	Poland	35	86	190	1871
50511217		Radosław	Majewski	LM	Poland	34	68	170	112427
50560969	Amilton	Amilton	Minervino da Silva	RW	Brazil	31	66	172	741
50566074	Marcão	Marcos	Nascimento Teixeira	CB	Brazil	25	81	185	325
50569445		Kunimitsu	Sekiguchi	LM	Japan	35	66	171	112836
67331747		Thomas	Touré	LM	Côte d'Ivoire	27	73	175	111817
229606		Victorien	Angban	CDM	Côte d'Ivoire	24	75	180	68
229683	Rodrigo Pinho	Rodrigo Cunha	Pereira de Pinho	ST	Brazil	30	79	185	1893
231212		Esteban	Rolón	CDM	Argentina	26	74	178	110556
231942	Han Chan Hee	Chan Hee	Han	CM	Korea Republic	24	72	180	1475
232329		Kubilay	Kanatsızkuş	ST	Turkey	24	79	190	742
232692		Guillermo	Acosta	RB	Argentina	32	65	170	111708
232926		Kazuma	Watanabe	ST	Japan	34	77	182	112093
233301		Rasmus	Nissen Kristensen	RB	Denmark	24	70	186	245
233825		Nicolás	Leguizamón	ST	Argentina	26	75	180	110406
234385		Niklas	Hauptmann	CAM	Germany	25	66	176	31
234873		Marko	Pajač	LM	Croatia	28	69	185	1842
235257	Pedro Pinto	Pedro Manuel	da Mota Pinto	CB	Portugal	26	78	187	665
235502	Luisinho	Luis Gustavo	Melere Silva	RM	Brazil	30	67	176	112389
235943	Rafa Navarro	Rafael Jesús	Navarro Mazueco	RB	Spain	27	61	173	226
236401		Noussair	Mazraoui	RB	Morocco	23	62	183	245
237075		Christian	Ramirez	ST	United States	30	85	188	112996
237985		Kevin	Danso	CB	Austria	22	89	190	100409
238486		Cauly	Oliveira Souza	RM	Brazil	25	68	172	1825
238862	Lucas Possignolo	Lucas	Possignolo	CB	Brazil	27	79	185	10031
239414		Francesco	Deli	CM	Italy	27	77	182	110911
239841		Vasilios	Lampropoulos	CB	Greece	31	83	185	278
240166		Nemanja	Mihajlović	LW	Serbia	25	71	173	1913
241162		Joseph	Paintsil	CAM	Ghana	23	68	167	673
241856	Manu Morlanes	Manuel	Morlanes Ariño	CM	Spain	22	75	178	483
244263		Amir	Rrahmani	CB	Kosovo	27	87	192	211
50377121		Christian	Tiffert	CB	Germany	39	79	182	110482
50495273		Grant	Leadbitter	CDM	England	35	79	178	106
50506195		José	Rojas	CB	Chile	38	75	174	111327
50513855		David	Stockdale	GK	England	35	84	191	1954
50522395	Ortuño	Alfredo	Ortuño Martínez	ST	Spain	30	77	184	469
50524209		Lennart	Thy	ST	Germany	29	78	184	1914
50527335	Baena	José Raúl	Baena Urdiales	CDM	Spain	32	72	181	111397
50529868		Mehdi	Bourabia	CM	France	30	73	183	111974
50530953		Mathias	Wittek	CB	Germany	32	88	193	110502
50535709		Marcello	Falzerano	CM	Italy	30	68	167	199
50538166		Callum	Robinson	LM	England	26	75	178	1801
50542435		Mauro	Dos Santos	CB	Argentina	32	76	182	260
50543880		Jamie	Maclaren	ST	Australia	28	76	179	112224
50545874		Raúl	Loaiza	CDM	Colombia	27	70	180	1013
50547089		Sehrou	Guirassy	ST	France	25	82	187	1816
50553212		Nahuel	Leiva	LM	Spain	24	70	172	280
50555791	Querol	David	Querol Blanco	RM	Spain	32	75	183	1968
50557579		Mikkel	Duelund	RW	Denmark	24	70	180	101047
50558801		Cristian	Borja	LB	Colombia	28	72	179	237
50561092		Fernando	De Paul	GK	Argentina	30	84	183	15029
50564171		Bubacarr	Trawally	ST	Gambia	26	70	185	111674
50567575		Pablo	Cuadra	ST	Argentina	26	62	165	111716
50569808		Merih	Demiral	CB	Turkey	23	85	192	111974
67301921		Charlison	Benschop	ST	Curaçao	31	90	191	635
67335249		Cristian	Espinoza	RM	Argentina	26	70	172	111928
84090817	Salvador Agra	Salvador José	Milhazes Agra	RM	Portugal	29	61	166	1871
232571		Shinnosuke	Nakatani	CB	Japan	25	79	184	112092
232894		Takuya	Iwanami	CB	Japan	27	72	186	111575
233146		Shintaro	Kurumaya	LB	Japan	29	73	178	111730
233400		Jakob	Glesnes	CB	Norway	27	84	188	922
233476		Blas	Riveros	LB	Paraguay	23	68	178	896
234195		Django	Warmerdam	LB	Holland	25	73	180	1915
234279		Calogero	Rizzuto	RWB	Germany	29	73	170	506
234678		Joakim	Mæhle	RB	Denmark	24	80	184	673
234867		Daniel	Arzani	RM	Australia	22	73	171	78
235005		Otar	Kakabadze	RB	Georgia	26	76	185	897
235202		Ivan	Tomečak	RB	Croatia	31	70	175	231
235419		Nikola	Dovedan	ST	Austria	27	71	171	111235
235553		Yoann	Salmier	CB	France	28	85	188	294
235629		Ortwin	De Wolf	GK	Belgium	24	83	190	2007
236288		Ifeanyi	Mathew	CM	Nigeria	24	70	173	299
236593		Calvin	Stengs	RW	Holland	22	68	187	1906
236956		Joe	Abrigo	CAM	Chile	26	66	170	110145
237153		Latif	Blessing	RW	Ghana	24	64	165	112996
237566		Kristoffer	Zachariassen	CM	Norway	26	74	180	112199
238053		Stallone	Limbombe	RM	Belgium	30	74	168	674
238938		Benjamin	Girth	ST	Germany	29	84	181	576
239231	Cucurella	Marc	Cucurella Saseta	LB	Spain	23	69	172	241
239645		Matías	de los Santos	CB	Uruguay	28	83	184	101105
240095		Leo	Stulac	CDM	Slovenia	26	70	175	50
240316	Cláudio Falcão	Cláudio	Falcão Santos	CDM	Brazil	27	62	170	666
241005		Joaquín	Ardaiz	ST	Uruguay	22	81	183	111657
241498		Romario	Ibarra	LM	Ecuador	26	76	174	111138
242324		Gaëtan	Robail	LM	France	27	73	182	110456
244389	Fernando	Fernando	Dos Santos Pedro	LW	Brazil	22	72	176	101059
50344775	Vítor Silva	Vítor Emanuel	Cruz da Silva	CM	Portugal	37	69	169	242
50490535		Daniel	Pavlovic	LB	Bosnia and Herzegovina	33	77	183	199
50497168		Óscar	Scarione	CAM	Argentina	36	71	179	101007
50505178		Sone	Aluko	RM	Nigeria	32	75	173	112537
50511313		Anthony	Pilkington	ST	Republic of Ireland	33	81	180	1917
50518063		Stephan	Andrist	RM	Switzerland	33	71	176	550
50518998		Enrique	Pérez	RB	Mexico	32	80	175	1028
50523657		José Antonio	Rodríguez	GK	Mexico	29	85	186	1880
50525405	Edu Ramos	Eduardo	Ramos Gómez	CDM	Spain	29	67	177	1968
50537213		Dave	Bulthuis	CB	Holland	31	88	190	1473
50538213		Jamie	Walker	CAM	Scotland	28	70	175	1938
50542716		Kenan	Kodro	ST	Bosnia and Herzegovina	27	79	187	448
50545138		Isaiah	Brown	CAM	England	24	70	182	8
50546052		Valber	Huerta	CB	Chile	27	80	185	110975
50551512	Cotán	Antonio Jesús	Cotán Pérez	CDM	Spain	25	67	176	15019
50554039		Joseph	Minala	CM	Cameroon	24	84	184	110373
50556404		Arnaud	Lusamba	CAM	France	24	74	179	72
50558033		Cristian	Espinoza	RW	Argentina	26	70	172	483
50560686	Christian Rivera	Christian	Rivera Hernández	CDM	Spain	24	80	190	110839
50562356		Joe	Worrall	CB	England	24	90	190	86
50564977		Mikel	Villanueva	CB	Venezuela	28	78	190	15019
50569643		Diego	Lainez	RM	Mexico	21	58	167	449
50575669		Youssef	Kalfa	RM	Syria	28	73	175	112391
67321283		Tyrone	Mings	LB	England	28	77	196	2
67338518	Gerard Valentín	Gerard	Valentín Sancho	RB	Spain	28	74	176	110831
232546		Diego	Zabala	RM	Uruguay	29	64	172	111716
232860		Keigo	Higashi	LM	Japan	31	72	178	101150
233125		Marcel	Hartel	CAM	Germany	25	69	176	1831
233267		Matt	Turner	GK	United States	27	79	191	691
233413	Verdasca	Diogo	Sousa Verdasca	CB	Portugal	24	80	185	244
233785		Robin	Bormuth	CB	Germany	25	87	190	110636
234054		Carlos	Cáceda	GK	Peru	29	75	183	110145
234462		Haydar	Yılmaz	GK	Turkey	37	86	188	113142
234728		László	Bénes	CAM	Slovakia	23	72	181	23
234994	Ratón	Álvaro	López Ratón	GK	Spain	28	76	192	244
235236		Issam	Jebali	ST	Tunisia	29	84	186	298
235467		Marcelino	Moreno	RW	Argentina	27	65	168	110395
235580		Isaac	Sackey	CDM	Ghana	27	88	190	113142
235754	Borja Herrera	Borja	Herrera González	LB	Spain	28	70	176	110854
236393	Marc Cardona	Marc	Cardona Rovira	ST	Spain	26	68	182	467
236723		Fodé	Ballo Touré	LB	France	24	70	182	65
237051		Mohamed Buya	Turay	ST	Sierra Leone	26	70	178	680
237502		Dennis	Johnsen	LW	Norway	23	75	185	245
237807		Dylan	Vente	ST	Holland	22	70	181	246
238682		Daniel	Hägele	CM	Germany	32	76	186	110197
238977		Christian	Beck	ST	Germany	33	80	196	110588
239446	Hélder Ferreira	Hélder José	Castro Ferreira	RM	Portugal	24	70	180	1887
239953	Léo Jabá	Leonardo	Rodrigues Lima	ST	Brazil	23	80	181	393
240190		Pierre	Kunde Malong	CDM	Cameroon	26	86	180	169
240342		Haris	Duljević	LW	Bosnia and Herzegovina	27	82	185	503
241297		Goran	Milović	CB	Croatia	32	92	195	682
241874		Anthony	Blondell	ST	Venezuela	27	77	185	101112
243388		Borna	Sosa	LB	Croatia	23	77	186	36
244697		Yevhen	Opanasenko	RB	Ukraine	30	74	180	101033
50472070		Alex	Baptiste	CB	England	35	74	180	1923
50490550		Daniel	Fox	CB	Scotland	35	78	183	1917
50503213	Linares	Miguel	Linares Cólera	ST	Spain	38	78	181	244
50509554		Danilo	Soddimo	CAM	Italy	33	70	180	111434
50515588		Vurnon	Anita	LB	Holland	32	66	168	1907
50518369		Claude	Dielna	CB	France	33	86	184	111140
50519437	Kanu	Rubenilson	dos Santos da Rocha	CAM	Brazil	33	84	183	112392
50525109	Fredy	Alfredo	Kulembe Ribeiro	LW	Angola	31	68	170	741
50526365		Romain	Grange	RM	France	33	74	177	1805
50529781		Leandro	Bacuna	CDM	Curaçao	29	77	187	1961
50531164		Ricky	Holmes	LM	England	34	75	172	1794
50532337		Ryan	Leonard	CM	England	29	82	185	97
50533823		Matthías	Vilhjálmsson	ST	Iceland	34	85	186	920
50535446		Felipe	Seymour	CM	Chile	34	78	174	110977
50538279		Kelyn	Rowe	CAM	United States	29	70	173	696
50542669		Per Kristian	Bråtveit	GK	Norway	25	72	184	710
50545677		Miguel	Murillo	ST	Colombia	27	80	184	112578
50546310		Reinaldo	Lenis	RW	Colombia	29	70	180	110404
50547313	Filipe Ferreira	Filipe Miguel	Neves Ferreira	LB	Portugal	30	72	178	1891
50548484	Álvaro Peña	Álvaro	Peña Herrero	CAM	Spain	29	69	178	1854
50551667		Marcus	Harness	RM	England	25	70	182	15015
50552919		Théo	Pellenard	LB	France	27	78	184	1530
50555258	David Concha	David	Concha Salas	RM	Spain	24	61	172	112093
50555913		Joe	Williams	CDM	England	24	66	178	7
50559612	Lucas Venuto	Lucas Henrique	Ferreira Venuto	RM	Brazil	26	60	164	101112
50560509		Stanislav	Iljutcenko	ST	Russia	30	82	189	1474
50563239	Javi Galán	Javier	Galán Gil	LB	Spain	26	70	172	110839
50567399		Bojan	Nastić	LB	Serbia	27	80	182	682
50568699		Mohamed Buya	Turay	ST	Sierra Leone	26	70	178	710
50572364		Mathías	Olivera	LB	Uruguay	23	78	184	1860
67283618		Gabriel	Torres	ST	Panama	32	75	180	15029
67321507		Paweł	Cibicki	LW	Sweden	27	66	182	700
67347802		Benjamin	Girth	ST	Germany	29	84	181	487
12940		Emanuel	Pogatetz	CB	Austria	38	90	191	252
52340		Mijat	Marić	CB	Switzerland	37	89	188	10032
122649		Logan	Bailly	GK	Belgium	35	93	188	111560
136553	Lee Dong Gook	Dong Gook	Lee	ST	Korea Republic	42	83	187	1477
138413		Matthew	Kilgallon	CB	England	37	79	188	1804
140423		Jake	Buxton	CB	England	36	83	180	15015
140451		Michael	Kightly	LM	England	35	71	173	1954
146636	José Juan	José Juan	Figueras García	GK	Spain	42	82	182	468
152038		Johan	Absalonsen	LM	Denmark	35	76	177	1447
158305	Liu Jian	Jian	Liu	CB	China PR	36	73	183	112537
159499		Marco	Zambelli	RB	Italy	35	77	183	110911
162900		Neil	Kilkenny	CDM	Australia	35	67	173	111399
163340		Danny	Graham	ST	England	35	87	183	3
163791		Geoffrey	Jourdren	GK	France	35	85	181	1823
165064		Jerold	Promes	CB	Holland	37	90	185	100651
50567522		Andrija	Balić	CM	Croatia	23	70	180	634
67274648		Darío	Bottinelli	CAM	Argentina	34	67	167	111716
67330428		Nahuel	Leiva	LM	Spain	24	70	172	242
84068171		Kosta	Barbarouses	ST	New Zealand	31	68	171	111400
234178		Luis	Abram	CB	Peru	25	76	181	101088
234333		Myziane	Maolida	ST	France	22	76	182	72
234701	Maycon	Maycon	de Andrade Barberan	CDM	Brazil	24	71	173	101059
234742		Harvey	Barnes	LM	England	23	66	174	109
235164		Luca	Mora	CM	Italy	33	80	183	110741
235409		Okacha	Hamzaoui	ST	Algeria	30	76	185	1891
235522	Aleix Febas	Aleix	Febas Pérez	CAM	Spain	25	64	172	1854
235751		Bojan	Nastić	LB	Serbia	27	80	182	673
235781	Santi Comesaña	Santiago	Comesaña Veiga	CM	Spain	24	73	184	480
236300		Samuel	Eduok	RM	Nigeria	27	82	176	111339
236830		Zaydou	Youssouf	CM	France	22	81	182	59
237156		Moussa	Wagué	RB	Senegal	22	60	171	241
237526		Valeriy	Luchkevych	RM	Ukraine	25	65	178	232
237994		Nahuel	Barrios	LM	Argentina	23	58	156	1013
238922		Mark-Anthony	Kaye	CM	Canada	26	77	186	112996
239050		Sadık	Çiftpınar	CB	Turkey	28	78	181	113259
239846		Panagiotis	Tsintotas	GK	Greece	24	90	192	278
240212		Danijel	Petković	GK	Montenegro	28	86	197	217
240716		Mathías	Olivera	LB	Uruguay	23	78	184	1854
241464	Pau Torres	Pau	Francisco Torres	CB	Spain	24	80	191	573
241629	Rogério	Rogério	Oliveira da Silva	LB	Brazil	23	70	178	111974
243806		Oussama	Darfalou	ST	Algeria	27	82	187	1909
244648		Mateo	Barać	CB	Croatia	27	90	190	254
50476159		Leandro	Greco	CM	Italy	35	75	184	110911
50491225		Damien	Delaney	CB	Republic of Ireland	40	89	191	753
50501157		Jarosław	Fojut	CB	Poland	33	83	188	1569
50509543		Aydın	Karabulut	LM	Turkey	33	70	178	101007
50516119		Alan	Judge	LW	Republic of Ireland	32	70	169	94
50518207		Jacob	Butterfield	CM	England	31	77	175	1804
50519353		Edwin	Hernández	LB	Mexico	35	72	166	110147
50525152		Steven	Caulker	CB	England	29	77	191	113142
50528533		Carlos	Lampe	GK	Bolivia	34	86	192	1877
50530042		Alexander	Kačaniklić	RM	Sweden	29	72	181	708
50531389		Collin	Quaner	RM	Germany	30	79	191	94
50533174		Uffe	Bech	RM	Denmark	28	75	170	269
50533521		Joe	Bendik	GK	United States	32	98	191	687
50534691		Michael	O'Halloran	RW	Scotland	30	79	180	100804
50537638		Harrison	Reed	CDM	England	26	72	176	17
50540709		Simon	Hedlund	LW	Sweden	28	68	175	269
50543886		Besar	Halimi	CM	Kosovo	26	68	170	269
50545801		Juan	Pérez	ST	Colombia	30	72	178	101105
50546455		Franz	Schultz	RB	Chile	30	72	172	112533
50547787		Luca	Bittante	RB	Italy	27	75	184	112168
50549442		Brayan	Véjar	LM	Chile	26	65	168	111328
50552463		Juan José	Narváez	CM	Colombia	26	76	180	1861
50554003		Luca	Valzania	CM	Italy	25	77	184	111657
50555285		Andy	Polo	CM	Peru	26	71	174	1028
50556573		Gianluca	Gaudino	CM	Germany	24	75	175	900
50560052		Cristian	Techera	RM	Uruguay	29	68	158	111022
50561685		Rajko	Brežančić	LB	Serbia	31	74	176	573
50564599		Hiroto	Nakagawa	CAM	Japan	26	57	155	113161
50567402	Borja Herrera	Borja	Herrera González	LB	Spain	28	70	176	1854
50568862		Lalas	Abubakar	CB	Ghana	26	84	185	694
50572653		Joaquín	Ardaiz	ST	Uruguay	22	81	183	101112
67307613		Joe	Corona	CM	United States	31	72	178	697
67330032		Dawid	Kownacki	ST	Poland	24	75	187	110636
67347721	Wilson Manafá	Wilson Miguéis	Manafá Jancó	LB	Portugal	27	69	174	236
84102543		Hamza	Sakhi	CAM	Morocco	25	68	173	226
18771		Luke	Steele	GK	England	36	76	188	14
53502		Daniel	Sjölund	CM	Finland	38	80	178	702
135043		Anders	Lindegaard	GK	Denmark	37	85	193	1796
137708		Florian	Dick	RB	Germany	36	84	184	29
139476		Dean	Gerken	GK	England	36	77	183	94
146453	Raúl Cámara	Raúl	Miguel Cámara	RB	Spain	37	64	170	260
146969	Iñaki Astiz	Iñaki	Astiz Ventura	CB	Spain	37	77	184	1871
152621		Johan Lædre	Bjørdal	CB	Norway	35	82	188	15005
156920		Olivier	Werner	GK	Belgium	36	96	193	111560
161733		José	Rivas	CB	Mexico	36	93	189	110145
162899		Mat	Sadler	CB	England	36	74	182	127
163530		Jérémy	Clément	CDM	France	36	76	180	1823
164610		Jeff	Larentowicz	CDM	United States	38	79	185	112885
167519		Efraín	Juárez	CM	Mexico	33	76	180	101112
170082		Stephen	Gleeson	CDM	Republic of Ireland	33	80	178	77
170612		Vullnet	Basha	CDM	Albania	31	72	178	1873
171377		Leobardo	López	CB	Mexico	37	75	177	101121
172198		Jessy	Moulin	GK	France	35	88	185	1819
173383		Trevor	Trevisan	CB	Italy	37	79	186	110912
173671		Kyle	McFadzean	CB	England	34	85	185	15015
176403	Lee Keun Ho	Keun Ho	Lee	ST	Korea Republic	36	74	176	1473
176916		Gonzalo	Abán	ST	Argentina	34	81	179	112535
177564	Bellvis	Carlos	Bellvis Llorens	LB	Spain	36	65	170	100831
177885		Kenan	Özer	RM	Turkey	33	62	170	101007
178421		César	Cortés	CAM	Chile	37	69	179	111328
179537		Harmeet	Singh	CM	Norway	30	72	180	112199
179899		Ari	Skúlason	LB	Iceland	34	67	170	2007
181247		Daniel	Pudil	CB	Czech Republic	35	82	185	1807
181844	Wang Xiaolong	Xiaolong	Wang	RW	China PR	35	67	176	112983
182130		Krisztián	Németh	LW	Hungary	32	74	180	696
183365		Nicolò	Cherubin	CB	Italy	34	83	188	206
183471		Dario	Vidošić	LM	Australia	34	74	184	112224
183797		Vincent	Muratori	LB	France	34	71	179	1823
84113637		Mateo	Cassierra	ST	Colombia	24	77	184	101085
10466		Stefan	Ishizaki	CM	Sweden	39	81	181	700
52126		Florent	Balmont	CM	France	41	72	168	110569
123603		Hugo	Campagnaro	CB	Argentina	41	85	181	200
138698		Almen	Abdi	CM	Switzerland	34	75	180	1807
144306		Egemen	Korkmaz	CB	Turkey	38	83	183	749
148635		Davy	De fauw	RB	Belgium	40	69	186	15005
155694		Steven	De Petter	CDM	Belgium	35	75	182	680
156434		Francisco	Rodríguez	CB	Mexico	39	90	191	111035
158088		Pablo	Álvarez	LB	Argentina	37	80	178	111711
161807		Marián	Kelemen	GK	Slovakia	41	84	188	110745
162875		Uğur	Uçar	RB	Turkey	34	70	180	101014
163625		Grant	Leadbitter	CDM	England	35	79	178	12
164839		Michael	Parkhurst	CB	United States	37	72	180	112885
166764		Trevor	Carson	GK	Northern Ireland	33	85	185	83
169590		Darron	Gibson	CM	Republic of Ireland	33	80	180	1917
170305		Cole	Skuse	CDM	England	35	72	185	94
172208		James	Troisi	CAM	Australia	33	75	176	111397
172850		Ramon	Leeuwin	CB	Holland	33	76	187	272
173245		Ramón	Fernández	CAM	Argentina	36	71	172	112116
175789		Birkir	Bjarnason	CM	Iceland	33	77	183	2
176583		Lucero	Álvarez	GK	Uruguay	36	82	187	112578
177404		Stephan	Fürstner	CDM	Germany	33	74	178	110500
178152		Ricardo	Faty	CDM	Senegal	35	82	192	101007
179731		David	Cabrera	CM	Mexico	31	76	180	1881
180287		Dejan	Damjanović	ST	Montenegro	40	81	187	983
181971	Huang Bowen	Bowen	Huang	CDM	China PR	34	71	181	111839
182856		Emmanuel	Bourgaud	LM	France	33	77	178	111273
183395		Cheikh	M'Bengue	LB	Senegal	33	79	182	1819
183936		Mitchell	Donald	CM	Holland	32	75	183	113259
184139	Ricardo Ferreira	Ricardo Abel	Barbosa Ferreira	GK	Portugal	31	82	188	10031
184781		Denis	Petrić	GK	Serbia	33	80	186	62
186272		Levan	Mchedlidze	ST	Georgia	31	87	192	1746
186682	Montoro	Ángel	Montoro Sánchez	CDM	Spain	33	72	181	110832
187208		Alfredo	Saldívar	GK	Mexico	31	78	183	1881
188335		Ante	Budimir	ST	Croatia	30	75	190	110734
188602		William	Rémy	CB	France	30	79	184	1871
189003		Gaëtan	Belaud	RB	France	34	76	177	378
189397		Florian	Jungwirth	CDM	Germany	32	77	181	111928
189923		Costa	Nhamoinesu	LB	Zimbabwe	35	78	185	267
190499		Karim	Laribi	CM	Tunisia	30	67	176	206
190747	Ortuño	Alfredo	Ortuño Martínez	ST	Spain	30	77	184	1854
191059	Javi Márquez	Javier	Márquez Moreno	CM	Spain	35	72	179	15019
191944	Kim Sung Joon	Sung Joon	Kim	CM	Korea Republic	33	68	174	982
192451		Graham	Carey	LM	Republic of Ireland	32	71	175	1929
192728		Moritz	Hartmann	ST	Germany	35	77	183	110169
193201		Ömer	Bayram	LB	Turkey	30	73	173	111340
193495	André Santos	André Filipe	Bernardes Santos	CM	Portugal	32	73	181	1889
193942		Jack	Colback	CDM	England	31	77	177	14
194216		Antonio	Mazzotta	LB	Italy	32	73	183	1843
195313		Mathieu	Peybernès	CB	France	30	77	187	459
196991		Christophe	Diandy	CDM	Senegal	30	83	186	670
197641		Benjamin	Leroy	GK	France	32	74	184	614
198175		Luc	Castaignos	ST	Holland	28	78	188	237
198538		Bjørn	Paulsen	CB	Denmark	30	77	190	708
198564	Jona	Jonathan	Mejía Ruiz	ST	Honduras	32	80	183	110831
198632		Jorge	Zárate	LM	Mexico	29	62	168	111035
199027		Jack	Robinson	CB	England	27	67	180	14
199508		Dušan	Cvetinović	CB	Serbia	32	79	186	101151
199689		Ángel	Sepúlveda	RM	Mexico	30	75	180	1880
200309		Tendayi	Darikwa	RB	Zimbabwe	29	77	187	14
201136		Maxime	Colin	RB	France	29	76	180	88
201887		Daniel	Johnson	CM	Jamaica	28	67	174	1801
201914		Michele	Camporese	CB	Italy	29	75	186	110911
202413	Hernán	Hernán	Santana Trujillo	CM	Spain	30	72	181	459
203161		Marcel	Franke	CB	Germany	28	90	193	110502
203588		Quentin	Martinus	RM	Curaçao	30	70	183	111575
204030		Stelios	Kitsiou	RB	Greece	27	70	173	393
204121		Jakub	Brabec	CB	Czech Republic	29	83	187	101037
204506		Mick	van Buren	ST	Holland	28	73	184	266
204737	Salvador Agra	Salvador José	Milhazes Agra	RW	Portugal	29	61	166	1968
205565		Dave	Bulthuis	CB	Holland	31	88	190	1913
205701		Spas	Delev	RM	Bulgaria	31	68	170	110746
206129		Alexandru	Măţel	RB	Romania	31	76	175	211
207454		Patricio	Rodríguez	LW	Argentina	31	60	170	1900
207684		Giannis	Gianniotas	LM	Greece	28	72	174	278
208096		Thomas	Eisfeld	CAM	Germany	28	76	177	160
208269		Mario	Budimir	ST	Croatia	35	99	193	211
208440		Marcus	Danielson	CB	Sweden	32	81	192	710
208700		Danny	Blum	ST	Germany	30	83	184	472
209569		Hussain	Al Moqahwi	CAM	Saudi Arabia	33	65	173	112387
209957		Jakob	Busk	GK	Denmark	27	78	189	1831
210202		Salman	Muwashar	LM	Saudi Arabia	32	64	176	112387
210653		Luis	Quintana	CB	Mexico	29	74	178	1881
211068		Kenan	Kodro	ST	Bosnia and Herzegovina	27	79	187	819
211231		Ramón	Azeez	CDM	Nigeria	28	67	170	110831
212156		Sebastián	Rincón	RM	Colombia	27	81	185	1887
212232		Jamie	Maclaren	ST	Australia	28	76	179	81
212625		David	Kinsombi	CDM	Germany	25	74	184	576
212955	Jorginho	Jorge	de Moura Xavier	RM	Brazil	30	65	182	112391
213325		Facundo	Píriz	CDM	Uruguay	31	81	187	70
213490		Isaiah	Brown	CAM	England	24	70	182	5
214004		Diego	Peralta	CB	Colombia	36	84	188	101106
214021		Fáiner	Torijano	CB	Colombia	32	73	182	111722
214226		Raúl	Loaiza	CDM	Colombia	27	70	180	101100
16	Luis García	Luis	García Fernández	CM	Spain	40	65	178	2013
51261		Boaz	Myhill	GK	Wales	38	92	191	109
114356		Marco	Wölfli	GK	Switzerland	38	88	186	900
137114		Michaël	Ciani	CB	France	37	88	192	697
139597	Javi Guerra	Javier	Guerra Rodríguez	ST	Spain	39	76	178	480
146558	César Arzo	César	Arzo Amposta	CB	Spain	35	80	184	15019
152536		Bradley	Johnson	CM	England	34	68	178	91
155976		Charlie	Adam	CM	Scotland	35	83	185	1806
156542		Jonathan	Legear	LM	Belgium	34	77	180	680
159017		Kasper	Hämäläinen	LM	Finland	34	74	187	1871
162328		Remko	Pasveer	GK	Holland	37	91	187	1909
162891		David	Jones	CM	England	36	80	183	1807
164626		Thomas	Kristensen	CDM	Denmark	38	79	188	111395
165736		David	Wheater	CB	England	34	87	196	4
167812		Semih	Kaya	CB	Turkey	30	82	183	267
168950		Sami	Allagui	ST	Tunisia	35	77	177	110329
169644		Jacques	Maghoma	LM	Congo DR	33	73	178	88
171082		Steve	De Ridder	LM	Belgium	34	71	179	2007
173040		Alexandre	Bonnet	LM	France	34	65	173	1738
174547		José	Rojas	CB	Chile	38	75	174	112668
176211		Marcin	Robak	ST	Poland	38	78	182	111092
177279		Ruben Yttergård	Jenssen	CM	Norway	33	71	173	919
178264	Nenê	Anderson Miguel	da Silva	ST	Brazil	38	78	183	1900
178584		Alex	Pearce	CB	Republic of Ireland	32	85	188	91
180250	William	William	Fernando da Silva	CM	Brazil	34	75	175	1882
181499		Johann	Ramaré	CDM	France	37	74	180	110456
182473	Li Xuepeng	Xuepeng	Li	LB	China PR	32	75	185	111839
183361		Anthony	Weber	CB	France	34	82	190	378
183746		Avdija	Vršajevič	RB	Bosnia and Herzegovina	35	76	179	111340
184242		Funso	Ojo	CM	Belgium	29	71	177	1949
184624		Jordan	Rhodes	ST	Scotland	31	71	185	1792
185120		Massimo	Volta	CB	Italy	34	78	184	112026
186504		Anton	Putsila	CAM	Belarus	34	74	180	101007
186993		Javier	Cortés	CM	Mexico	32	77	170	110144
188107		Adama	Diomande	ST	Norway	31	81	180	112996
188586		Johannes	Flum	CDM	Germany	33	82	190	110329
188825		Ahmed	Kashi	CDM	Algeria	32	76	178	294
189155		Samuel	Souprayen	LB	France	32	70	187	57
189603		Matthias	Morys	LM	Germany	34	78	184	550
190467		Diego	de Buen	CDM	Mexico	30	79	182	110144
190780		Sean	Johnson	GK	United States	32	98	190	112828
191566	Park Joo Ho	Joo Ho	Park	CM	Korea Republic	34	71	174	1473
192370		Mauro	Formica	CAM	Argentina	33	70	178	110396
192594		Gary	Kagelmacher	CB	Uruguay	33	78	183	100081
193057		Charlison	Benschop	ST	Curaçao	31	90	191	111239
193475		Pape	Souaré	LB	Senegal	31	66	178	1799
193528		Idrissa	Sylla	ST	Guinea	30	73	186	15
194077		Veysel	Sarı	CB	Turkey	33	76	184	111339
195256		Atila	Turan	LB	Turkey	29	79	176	101020
195687	Baena	José Raúl	Baena Urdiales	CDM	Spain	32	72	181	110832
197233		Abdoulaye	Diallo	GK	Senegal	29	82	191	74
197716		Teal	Bunbury	ST	United States	31	78	188	691
198062	Pichu Atienza	Fco. Javier	Atienza Valverde	CB	Spain	31	85	190	477
198322	Aguilera	Juan	Aguilera Núñez	CDM	Spain	35	76	185	110839
198589		Greg	Garza	LB	United States	29	68	173	112885
198687		Saliou	Ciss	LB	Senegal	32	69	173	1530
198857		Simone	Romagnoli	CB	Italy	31	85	193	190
199352		Şamil	Çinaz	CDM	Germany	35	77	187	101020
199683		Kamil	Çörekçi	RB	Turkey	29	74	173	436
200671		Victor	Ulloa	CDM	Mexico	29	75	183	695
200930		Luca	Tremolada	CAM	Italy	29	78	186	190
201512		Pierre	Sagna	RB	Senegal	30	76	183	1889
202017		Onel	Hernández	LM	Germany	28	76	172	1792
202512		Florian	Hartherz	LB	Germany	28	83	187	159
203159		Tim	Kister	CB	Germany	34	93	193	110178
203603		Martin	Pospíšil	CAM	Czech Republic	30	68	178	110745
204040	Luiz Antônio	Luiz Antônio	de Souza Soares	CDM	Brazil	30	77	184	111674
204346	Fede Vico	Federico	Vico Villegas	LM	Spain	27	64	167	110832
204513		Maxime	Dupé	GK	France	28	88	188	71
204688		Stefan	Schwab	CDM	Austria	30	78	183	254
205186		Paulo	Gazzaniga	GK	Argentina	29	90	196	18
205618		Sandy	Walsh	RB	Holland	26	73	180	15005
205963		David	Texeira	ST	Uruguay	30	69	182	1900
206544		Roman	Bezus	CAM	Ukraine	30	82	186	680
207593		Jere	Uronen	LB	Finland	27	74	177	673
207954		Brian	Behrendt	CB	Germany	29	85	187	159
208100		Vitaliy	Dyakov	CB	Russia	32	86	192	101041
208437		Magnus	Eriksson	RM	Sweden	31	82	179	111928
208585		Axel	Ngando	CAM	France	28	71	179	101026
208790		Zakaria	Bakkali	LM	Belgium	25	70	168	229
209613		Pietro	Iemmello	ST	Italy	29	74	179	110911
209990		Richard	Strebinger	GK	Austria	28	90	194	254
210329		Filippo	Falco	CAM	Italy	29	70	171	347
210688		Anders	Trondsen	CM	Norway	26	78	183	298
211204		Declan	John	LB	Wales	26	75	178	1960
212018	Koo Ja Ryong	Ja Ryong	Koo	CB	Korea Republic	29	75	183	983
212229	Filipe Chaby	Carlos Filipe	Fonseca Chaby	RW	Portugal	27	64	174	1889
212261	Brandon Thomas	Brandon	Thomas Llamas	ST	Spain	26	71	173	479
212771	Rodolfo	Rodolfo	Almeida Guimarães	CAM	Brazil	28	72	169	113222
213092		Samuel	Piette	CDM	Canada	26	79	171	111139
213439		Jonathan	Osorio	CM	Canada	29	73	175	111651
213930		Pylyp	Budkivskyi	ST	Ukraine	29	81	196	226
214085		Nicolás	Carreño	LB	Colombia	28	76	176	112527
214382		Iván	Rivas	CM	Colombia	33	80	177	101101
214446		Felipe	Campos	CB	Chile	27	79	179	110980
214835		Ronnie	Fernández	ST	Chile	30	80	184	113057
100858333		Danny	Batth	CB	England	30	90	191	1806
45473		Christian	Tiffert	CB	Germany	39	79	182	506
105308		Jean-François	Gillet	GK	Belgium	42	86	181	232
135576	Diego Barcelos	Diego	de Lima Barcelos	CAM	Brazil	36	70	171	1891
137406		Daniele	Croce	CM	Italy	38	70	173	111434
140181		Hitoshi	Sogahata	GK	Japan	42	80	187	101147
146996	Rubén	Rubén	Martínez Andrade	GK	Spain	37	81	187	479
153060		Juan	Insaurralde	CB	Argentina	36	87	187	110980
156421		Juan Carlos	Valenzuela	CB	Mexico	37	77	177	111678
157219		Gastón	Fernández	CAM	Argentina	37	68	170	101083
159520		Nereo	Fernández	GK	Argentina	42	85	195	111716
162315		Liam	Ridgewell	CB	England	37	79	188	111140
162926		Paul	Gallagher	CM	Scotland	36	70	185	1801
164470	Pita	Carlos	Pita González	CDM	Spain	36	81	187	110831
164855		Joel	Lynch	CB	Wales	33	81	185	15
168253		Issiar	Dia	RM	Senegal	34	70	173	113259
169607		Lee	Cattermole	CDM	England	33	76	178	106
171364		Edgar	Castillo	LWB	United States	34	77	170	694
172317	David Fernández	David	Fernández Cortázar	CB	Spain	36	81	186	100831
173160		Nicolas	Viola	CM	Italy	31	77	180	112026
174669		Krzysztof	Mączyński	CDM	Poland	34	66	175	1871
176692		Alharbi	El Jadeyaoui	LM	Morocco	34	70	177	1805
177521		Bernd	Nehrig	CDM	Germany	34	79	180	110329
178565		Bruno	Urribarri	LB	Argentina	34	65	176	110581
179842		José	San Román	RB	Argentina	32	70	172	111708
181199		Milan	Petržela	RM	Czech Republic	38	65	172	110468
182207		David	Stockdale	GK	England	35	84	191	88
183283		Jérémy	Taravel	CB	France	34	85	191	1750
183593		Joshua	John	LM	Holland	32	63	175	742
184040		Martin	Hansen	GK	Denmark	31	85	189	896
184320		Raffaele	Bianco	CM	Italy	33	80	180	199
184982		Marcelo	Larrondo	ST	Chile	32	83	191	111710
186352		Tommy	Smith	CB	New Zealand	31	82	187	694
186876		Efe	Ambrose	CB	Nigeria	32	70	190	81
187038		Benjamin Tembe	Mokulu	ST	Congo DR	31	85	187	112409
188313	Diogo Viana	Diogo Filipe	Guerreiro Viana	RW	Portugal	31	67	174	1889
188621		Aaron	Meijers	LB	Holland	33	77	176	650
189061		Sascha	Burchert	GK	Germany	31	78	187	165
189553	Lillo	Manuel	Castellano Castro	RB	Spain	32	70	176	479
189961		Václav	Kadlec	ST	Czech Republic	29	76	181	267
190572		Laurens	De Bock	LB	Belgium	28	75	179	682
190614		Diego	Álvarez	ST	Colombia	39	70	173	112527
191079		Harlee	Dean	CB	England	30	75	191	88
192071		Marco	D'Alessandro	RM	Italy	30	65	173	55
192561		Lennart	Thy	ST	Germany	29	78	184	749
192982	Felipe Silva	Felipe	de Oliveira Silva	CAM	Brazil	31	76	171	113157
193421	Javi Lara	Javier	Lara Grande	CM	Spain	35	73	179	1867
193561		Kelvin	Leerdam	RB	Suriname	31	70	178	111144
194082	Flavio Paixão	Flavio Emmanuel	Lopes Paixão	ST	Portugal	36	75	184	111091
195272		Marco Davide	Faraoni	RB	Italy	29	71	180	110734
196435		Christian	Ramos	CB	Peru	32	78	183	112139
197480		Idriss	Saadi	ST	Algeria	29	85	180	76
197785		Diego	Fabbrini	CAM	Italy	31	71	182	88
198223		Raffaele	Maiello	CM	Italy	30	73	177	111657
198553		Cristian	Gamboa	RB	Costa Rica	31	67	175	78
198631	Rodri	Rodrigo	Ríos Lozano	ST	Spain	31	74	175	110832
198751		José Antonio	Madueña	RB	Mexico	31	78	177	1878
199183	Kim Bo Kyung	Bo Kyung	Kim	CM	Korea Republic	31	73	178	101145
199262	Kim Young Uk	Young Uk	Kim	CM	Korea Republic	30	70	177	1475
199584		Maikel	Kieftenbeld	CDM	Holland	31	78	179	88
200395		Marcelo	Silva	CB	Uruguay	32	82	185	111065
200810		Alessandro	Crescenzi	LB	Italy	29	71	178	206
201346		Liam	Boyce	ST	Northern Ireland	30	75	184	15015
201965		Simon	Thern	CM	Sweden	28	76	180	702
202356		Ziya	Erdal	LB	Turkey	33	73	182	101041
203177		Dimitri	Foulquier	RB	France	28	78	183	1860
203568		Paweł	Wszołek	LM	Poland	29	77	186	15
203889		Yoann	Touzghar	ST	Tunisia	34	75	179	294
204347	Bernardo	Bernardo Víctor	Cruz Torres	CB	Spain	28	85	190	110831
204451		Koray	Günter	CB	Germany	26	79	185	110556
204687		Paweł	Olkowski	RB	Poland	31	76	184	4
205163		Emyr	Huws	CM	Wales	27	73	177	94
205654		Moussa	Kone	CM	Côte d'Ivoire	31	71	180	749
205929		Nicolaj	Thomsen	LM	Denmark	28	75	180	819
206565		Jamie	Walker	CAM	Scotland	28	70	175	1917
207523		Slobodan	Medojević	CDM	Serbia	30	78	183	110502
207876		Alexander	González	RB	Venezuela	28	75	177	468
208099		Ivan	Runje	CB	Croatia	30	83	192	110745
208375		Marius	Müller	GK	Germany	28	90	192	112172
208493		Taleb	Tawatha	LB	Israel	29	70	172	1824
208916		Mohammed	Al Sahlawi	ST	Saudi Arabia	34	74	177	112139
209660		Stefano	Magnasco	RB	Chile	28	72	175	110975
209987		Marcel	Schuhen	GK	Germany	28	85	188	110178
210404		Souleymane	Doukara	ST	France	29	85	186	741
210787		Mauro	Dos Santos	CB	Argentina	32	76	182	100888
211099		Opa	Nguette	LW	Senegal	27	76	182	68
211954		Tobias	Schröck	CB	Germany	28	84	188	111239
212210		Richairo	Živković	ST	Holland	24	77	187	682
212405	Alberto Martín	Alberto Martín	Romo García-Adámez	CDM	Spain	32	73	179	110832
212791	Kim Seung Dae	Seung Dae	Kim	CM	Korea Republic	30	64	175	1474
213017		Ben	Davies	CB	England	25	74	185	1801
213445		Eduardo	López	CAM	Mexico	26	66	167	1880
213711		Aldo	Rocha	CM	Mexico	28	68	167	1028
214025		Cristian	Higuita	CDM	Colombia	27	80	175	112606
214201		Cleider	Alzáte	CAM	Colombia	33	63	163	112903
84120034		Cristian	Calderón	LB	Mexico	24	66	171	101121
45605		Matteo	Brighi	CM	Italy	40	77	178	1746
108061		Reto	Ziegler	CB	Switzerland	35	80	183	695
135891		Killian	Overmeire	CDM	Belgium	35	84	188	2007
139862		Joris	Marveaux	CDM	France	38	72	179	110316
146011		Ikechukwu	Uche	ST	Nigeria	37	70	172	15019
152991		Dean	Marney	CM	England	37	75	179	112260
153164		Alejandro	Faurlín	CDM	Argentina	34	79	185	453
156443		Christoph	Janker	CB	Germany	36	78	185	100409
159080		Craig	Bryson	CM	Scotland	34	60	170	91
162054		Mark	Bunn	GK	England	36	77	183	2
163369		Sébastien	Pocognoli	LB	Belgium	34	81	182	232
163713		Christophe	Mandanne	ST	France	36	63	171	212
164858		Tim	Sparv	CM	Finland	34	84	194	1516
168590		Markus	Karl	CB	Germany	35	88	192	110178
169938	Hugo Vieira	Hugo Filipe	da Costa Oliveira	ST	Portugal	33	73	178	101151
171831		Michael	Mancienne	CB	England	33	86	186	691
172696		Matteo	Ardemagni	ST	Italy	34	82	185	1847
173415		Marco	Knaller	GK	Austria	34	86	192	111239
175851	Tomané	António Manuel	Fernandes Mendes	ST	Portugal	28	89	186	112516
176680		Marcus	Pedersen	ST	Norway	31	80	180	922
177522	Suso Santana	Jesús Manuel	Santana Abreu	RM	Spain	36	62	172	260
178283		Ruud	Boffin	GK	Belgium	33	86	196	741
179811		Brecht	Capon	RWB	Belgium	33	72	181	682
181455		Aly	Cissokho	LB	France	33	79	181	741
182178		Gaetano	Berardi	LB	Switzerland	32	72	179	8
183339		Jo Inge	Berget	ST	Norway	30	81	186	112828
183565		Arne	Feick	LB	Germany	33	79	179	111235
184035		Brayan	Angulo	LB	Colombia	31	73	174	110152
184338		Giuseppe	Bellusci	CB	Italy	31	80	184	1843
184935		Arnold	Bouka Moutou	LB	Congo	32	76	176	110569
186453		Tom	Hiariej	CDM	Holland	33	74	178	111396
186781		Kenneth	Kronholm	GK	United States	35	85	189	576
187042		Anders	Konradsen	CM	Norway	31	76	183	298
188305		Aziz	Bouhaddouz	ST	Morocco	34	88	188	112990
188782		Michael	Morrison	CB	England	33	76	183	88
189065		Francesco	Renzetti	LB	Italy	33	71	173	111434
189425	Bruno Gallo	Bruno Vieira	Gallo de Oliveira	CM	Brazil	33	78	180	518
189713		Erik	Falkenburg	ST	Holland	33	84	187	650
190497		Danny	Hoesen	ST	Holland	30	81	186	111928
190738		Håvard	Nielsen	ST	Norway	28	80	187	110636
190915		Kamil	Wilczek	ST	Poland	33	83	185	269
191814	Lee Jae Sung	Jae Sung	Lee	CB	Korea Republic	33	75	187	1477
192250		Matthew	Jurman	CB	Australia	31	87	191	607
192611		Sambou	Yatabaré	CM	Mali	32	83	190	230
193092		Marco	Rojas	RW	New Zealand	29	64	168	1913
193429	Douglas	Douglas	Pereira dos Santos	RB	Brazil	31	60	171	101041
193900		Jack	Hunt	RB	England	30	71	175	1919
194122		Will	Grigg	ST	Northern Ireland	30	70	180	1917
195036		Sam	Winnall	ST	England	30	71	175	1807
195480		Conor	McLaughlin	RB	Northern Ireland	30	71	183	97
197154		Adolfo	Machado	CB	Panama	36	71	182	698
197689		Andrea	Seculin	GK	Italy	31	80	190	192
198117		Alessandro	Bernardini	CB	Italy	34	73	191	110373
198517		Xavier	Kouassi	CDM	Côte d'Ivoire	31	68	173	110770
198601		Luis	Mendoza	RM	Mexico	31	75	172	1882
198726		Richmond	Boakye	ST	Ghana	28	80	186	112162
198914		Jan	Hochscheidt	CM	Germany	33	84	180	506
199305		Mathias	Wittek	CB	Germany	32	88	193	111235
199832		Sebastian	Neumann	CB	Germany	30	80	188	1825
200298		Jonathan	Rivierez	RB	France	32	82	182	68
200914		Alessandro	Salvi	RB	Italy	33	76	183	1843
201299		Nicola	Leali	GK	Italy	28	78	188	199
202305	Lee Seung Gi	Seung Gi	Lee	CM	Korea Republic	33	67	177	1477
202910		David	Mitov Nilsson	GK	FYR Macedonia	30	86	190	702
203446		Anouar	Kali	CDM	Morocco	30	67	172	1904
203850		Christopher	Dibon	CB	Austria	30	79	182	254
204061		Marcello	Falzerano	CM	Italy	30	68	167	205
204387	Juan Carlos	Juan Carlos	Real Ruiz	LM	Spain	30	72	183	1861
204676	Gus Ledes	Luís Gustavo	Evangelista Santos	CM	Portugal	28	70	173	110854
205138		Ferhan	Hasani	CAM	FYR Macedonia	31	75	188	112392
205585		Jack	Price	CDM	England	28	69	170	694
205892		Borys	Tashchy	ST	Ukraine	28	90	192	1825
206005		Denis	Stracqualursi	ST	Argentina	33	86	190	111707
206601		Mario	Sampirisi	RB	Italy	28	75	188	110734
207683		Sokratis	Dioudis	GK	Greece	28	80	189	1884
207960	Aitor García	Aitor	García Flores	LM	Spain	27	72	174	110066
208335		Lukas	Kübler	RB	Germany	28	73	182	25
208470		Fabian	Holland	LB	Germany	31	74	172	110502
208723		Julian	Schauerte	RB	Germany	33	67	177	2013
209333		Chris	Maxwell	GK	Wales	31	74	191	1801
209698		Birama	Touré	CDM	Mali	29	77	183	57
210042		Johannes	Wurtz	ST	Germany	29	76	182	110502
210548		Leonardo	Capezzi	CM	Italy	26	72	178	1746
210880		Riccardo	Fiamozzi	RB	Italy	28	76	178	347
211736		Robert	Leipertz	RM	Germany	28	82	183	111239
212048		Alexandru	Chipciu	RM	Romania	32	73	177	267
212249		Sebastian	Kerk	LM	Germany	27	78	184	171
212632		William	Dutoit	GK	France	32	76	181	682
212943		Mauro	Caballero	ST	Paraguay	26	65	175	112668
213170	Jeong Jae Yong	Jae Yong	Jeong	CM	Korea Republic	30	78	188	1473
213512		Guðmundur	Þórarinsson	LM	Iceland	29	75	183	702
214005		Víctor	Giraldo	RB	Colombia	35	74	177	101104
214163		Juan Daniel	Roa	CM	Colombia	29	67	172	101104
214326		Christian	Vilches	CB	Chile	38	78	182	15029
164		Giampiero	Pinzi	CDM	Italy	40	76	180	110912
39386		DaMarcus	Beasley	LB	United States	39	68	172	698
101473		Tomasz	Kuszczak	GK	Poland	39	84	191	88
116762		Sébastien	Roudet	CAM	France	40	71	174	110456
139229		Carlos	Salcido	CB	Mexico	41	80	176	1880
142962		Enrique	Bologna	GK	Argentina	39	85	188	1876
148569		Marcin	Wasilewski	CB	Poland	41	88	186	1873
153066		Lucas	Licht	LB	Argentina	40	72	174	101084
156437		Philipp	Pentke	GK	Germany	36	85	190	543
157703		Uwe	Hünemeier	CB	Germany	35	85	189	10030
161857		Florian	Klein	RB	Austria	34	72	182	256
162886		Russell	Martin	CB	Scotland	35	85	185	1792
163670		Behrang	Safari	LB	Sweden	36	74	181	320
164769		Steven	Fletcher	ST	Scotland	34	76	186	1807
165784		Darío	Bottinelli	CAM	Argentina	34	67	167	101097
169100		Ikechi	Anya	RM	Scotland	33	72	168	91
170964		Pablo	Granoche	ST	Uruguay	37	82	182	110741
172258	José Semedo	José Vítor	Moreira Semedo	CDM	Portugal	36	80	181	665
173147		Daniele	Dessena	CM	Italy	34	75	183	1842
174732		Gabriel	Gómez	CDM	Panama	37	82	183	112992
176542		Carmelo	Valencia	ST	Colombia	37	70	173	101104
176902		Luis Pedro	Figueroa	RM	Chile	38	77	179	112534
177802		Moreno	Costanzo	CAM	Switzerland	33	74	179	1715
179547		Vito	Mannone	GK	Italy	33	80	188	1793
180823		Radim	Řezník	RB	Czech Republic	32	80	183	110468
182166		Julian	Palmieri	LB	France	34	66	170	110316
182412	Dai Lin	Lin	Dai	CB	China PR	33	77	191	111724
183453		Prince	Oniangué	CM	Congo	32	78	190	210
183921		Julien	Faussurier	RM	France	34	70	173	378
184220		Mix	Diskerud	RM	United States	30	68	184	1473
184664		Aurélien	Collin	CB	France	35	86	187	689
185109		Maciej	Sadlok	LB	Poland	32	80	186	1873
186595		Elliott	Bennett	RM	England	32	73	175	3
187013		Oswaldo	Alanís	CB	Mexico	32	75	186	110827
188271		Floyd	Ayité	LW	Togo	32	73	175	144
188336		Alessandro	Tuia	CB	Italy	31	74	184	112026
188824		Emmanuel	Imorou	LB	Benin	32	78	181	210
189235		Jens	Hegeler	CB	Germany	33	86	193	1919
189619		Korey	Smith	CM	England	30	70	175	1919
190196		Zargo	Touré	CB	Senegal	31	79	183	436
190575		Franco	Zuculini	CM	Argentina	30	68	176	110406
190852		Callum	McManaman	RM	England	30	71	175	1917
191252		Marcel	Gaus	LB	Germany	32	80	183	111239
192329		Nwankwo	Obiora	CDM	Nigeria	30	89	187	1898
192555		Issam	El Adoua	CDM	Morocco	34	79	189	666
192938		Yeni	Ngbakoto	LM	Congo DR	29	69	173	62
193310		Dominik	Schmidt	CB	Germany	34	78	187	576
193679		Marcel	Correia	CB	Portugal	32	81	186	543
194086		Dorian	Lévêque	LB	France	31	72	182	393
195037		Danny	Batth	CB	England	30	90	191	110
196151		Stalin	Motta	CM	Colombia	37	69	172	112523
197300		Abdallah	El Said	CAM	Egypt	36	75	175	112387
197925		Alen	Stevanovic	RW	Serbia	30	75	180	113161
198177		Bart	Schenkeveld	CB	Holland	29	83	185	112224
198560	Carlos Ruiz	Carlos	Ruiz Aránega	CB	Spain	38	80	183	260
198630	Arroyo	Alvaro	Arroyo Martínez	RB	Spain	33	76	180	1854
198776		Jonathan	Williams	CAM	Wales	27	60	168	1799
199195		Jonathan	Delaplace	CM	France	35	68	167	217
199537		Joffrey	Cuffaut	RB	France	33	75	180	110456
200107		Roly	Bonevacia	CM	Curaçao	29	65	171	112427
200770		Fredrik	Haugen	CM	Norway	29	76	182	919
201146	Errasti	Jon	Errasti Zabaleta	CDM	Spain	33	81	180	100831
201908		Andre	Wisdom	RB	England	28	78	186	91
202311	Kim Eun Sun	Eun Sun	Kim	CDM	Korea Republic	33	79	182	983
203004	Yang Han Been	Han Been	Yang	GK	Korea Republic	29	90	195	982
203256	Willian Rocha	Willian	Pereira da Rocha	CB	Brazil	32	83	185	112092
203736		Stéphane	Bahoken	ST	Cameroon	29	78	185	1530
204050		Santiago	Vergini	CB	Argentina	33	83	191	742
204444		Yanic	Wildschut	LM	Holland	29	86	187	4
204684		Mats	Seuntjens	CM	Holland	29	81	187	1906
204820		Gary	Mackay-Steven	LM	Scotland	30	70	173	77
205352		Jordan	Archer	GK	Scotland	28	80	191	97
205669	Luís Martins	Luís Carlos	Ramos Martins	LB	Portugal	29	67	177	518
206207		Wilfried	Zahibo	CDM	France	27	77	189	691
206650		Rafael	Robayo	CDM	Colombia	37	78	183	111722
207753	Oh Ban Suk	Ban Suk	Oh	CB	Korea Republic	33	79	189	1478
208052		Andy	Yiadom	RB	Ghana	29	75	180	1793
208374		Andrew	Wooten	ST	United States	31	85	186	110178
208459		Mitchell	Dijks	LB	Holland	28	94	194	189
208679		Robin	Himmelmann	GK	Germany	32	80	187	110329
209196		Philipp	Ziereis	CB	Germany	28	82	189	110329
209874		Brilliant	Khuzwayo	GK	South Africa	31	75	190	110930
210031	Bruno Moreira	Bruno Daniel	Castro Moreira	ST	Portugal	33	79	185	744
210534		Christian	Kouakou	ST	Côte d'Ivoire	30	72	182	210
210923		Mohammed Khalil	Al Owais	GK	Saudi Arabia	29	79	187	112387
211515		Pierluigi	Gollini	GK	Italy	26	80	188	39
212138		Przemysław	Frankowski	RM	Poland	26	68	175	110745
212260	Hwang Ui Jo	Ui Jo	Hwang	ST	Korea Republic	28	73	184	112093
212747		Tomás	Martínez	CAM	Argentina	26	66	171	698
212879		Sven	Michel	ST	Germany	31	79	179	10030
213321		Tomi	Jurić	ST	Australia	30	85	191	897
213497		Jacob	Une Larsson	CB	Sweden	27	74	180	710
213697		Paddy	McNair	CDM	Northern Ireland	26	72	183	12
214118		Mauricio	Casierra	LB	Colombia	35	68	175	111723
214208		Leonardo	Pico	CDM	Colombia	29	77	177	101101
214404		Valber	Huerta	CB	Chile	27	80	185	111327
214582		Cristian	Bonilla	GK	Colombia	28	80	189	113057
214876		Jack	Marriott	ST	England	26	71	173	91
215147		Lautaro	Giannetti	CB	Argentina	27	79	184	101088
215572	Alberto	Alberto	Jiménez Benítez	CDM	Spain	28	78	186	260
216284		Florian	Ballas	CB	Germany	28	96	196	503
218659		Matt	Targett	LB	England	25	70	183	17
219451		Nehuén	Paz	CB	Argentina	29	89	192	189
219771	Gabriel Xavier	Gabriel Augusto	Xavier	CAM	Brazil	28	61	168	112092
220087	Fabrício Baiano	Fabrício	Santos de Jesus	CDM	Brazil	29	75	177	1893
220175		Olivier	Kemen	CM	France	25	78	177	66
221121		Dario	Rodríguez	ST	Colombia	26	68	174	111723
221564		Nahuel	Leiva	LM	Spain	24	70	172	483
221791		Rafał	Kurzawa	LM	Poland	28	73	182	1816
222391		Joseph	Minala	CM	Cameroon	24	84	184	46
222511		Ezequiel	Unsain	GK	Argentina	26	83	188	111710
222993		Yoichiro	Kakitani	ST	Japan	31	68	177	101148
223489		Aleksandar	Pešić	ST	Serbia	29	80	190	607
223573	Munir	Munir	Mohand Mohamedi	GK	Morocco	32	80	190	573
224185		Clint	Leemans	CM	Holland	25	79	189	1914
224423		Maximilian	Wittek	LB	Germany	25	70	173	165
224656		Ola	Aina	RB	Nigeria	24	82	182	54
225341	David García	David	García Zubiria	CB	Spain	27	72	185	479
225632		Oliver	Burke	RM	Scotland	24	74	188	109
226278	Xavier	António Manuel	Pereira Xavier	LM	Portugal	29	66	176	112516
226711		Nik	Omladič	RM	Slovenia	31	72	180	165
227394		Carlos	González	ST	Paraguay	28	76	183	1881
227921		Morteza	Pouraliganji	CB	Iran	29	74	187	2013
228804		Alexis	De Sart	CM	Belgium	24	67	180	680
229039	Johannesson	Diego	Johannesson Pando	RWB	Iceland	27	70	176	110827
229150		Pantelis	Hatzidiakos	CB	Greece	24	74	181	1906
229469		Jean	Meneses	RW	Chile	28	58	163	110781
3484		John	O'Shea	CB	Republic of Ireland	40	84	190	1793
116917		Damien	Perquis	GK	France	35	82	186	110456
137786		Valerio	Di Cesare	CB	Italy	38	75	187	50
140422		Alex	Baptiste	CB	England	35	74	180	15
146487	Susaeta	Néstor	Susaeta Jaurrieta	CM	Spain	36	74	178	1854
148696		Espen	Ruud	RB	Norway	37	76	182	1456
156662		Adrían	Bastía	CDM	Argentina	42	74	178	110406
158887		Daniel	Pavlovic	LB	Bosnia and Herzegovina	33	77	183	110734
162056		Steve	Morison	ST	Wales	37	85	188	97
164568		Will	Johnson	CM	Canada	34	72	178	112606
166097		Fatih	Öztürk	GK	Turkey	34	86	191	111340
168403		Raffaele	Schiavi	CB	Italy	35	73	183	110373
169493		Frank	Fielding	GK	England	33	76	185	1919
169609		Jonathan	Grounds	LB	England	33	87	185	4
170941	Javi Moyano	Javier	Moyano Lujano	RB	Spain	35	73	180	462
171087	Christian Fernández	Christian	Fernández Salas	CB	Spain	35	77	182	110827
172418		İlhan	Parlak	ST	Turkey	34	74	181	101007
173130		Matteo	Scozzarella	CM	Italy	33	65	175	50
173470		Christoph	Leitgeb	CM	Austria	36	69	172	191
175934		Kenny	Steppe	GK	Belgium	32	70	184	680
177083		Robert	Strauß	RB	Germany	34	70	175	111235
177906		Danilo	Soddimo	CAM	Italy	33	70	180	111657
178430		Nicolas	Frey	RB	France	37	78	184	192
179971		Ridge	Munsy	ST	Congo DR	32	90	188	749
182224	Wang Dalei	Dalei	Wang	GK	China PR	32	75	185	111724
182743		Thorsten	Kirschbaum	GK	Germany	34	90	194	32
183513		Jens	Grahl	GK	Germany	32	89	192	36
183691		Daniel	Toth	CDM	Austria	34	68	173	111821
183920		Richard	Sukuta-Pasu	ST	Germany	31	91	190	1825
184456		Eric	Lichaj	RB	United States	32	80	175	1952
184527		Mattia	Mustacchio	RM	Italy	32	78	182	199
184927		Idir	Ouali	LM	Algeria	33	70	176	100081
186135		Corry	Evans	CDM	Northern Ireland	31	69	180	3
186788		David	Pisot	CB	Germany	34	80	186	1832
187110		Miguel	Ponce	LB	Mexico	32	82	175	1880
187591		Paulo	Garcés	GK	Chile	37	77	181	112533
187916		Marcus	Olsson	LB	Sweden	33	68	180	91
188232		Abdoul Karim	Yoda	RM	France	32	73	182	110854
188821		Samuel Geoffroy	Camille	LB	France	35	69	175	260
189278		Luke	Murphy	CM	England	31	74	185	4
189541		Chris	Solly	RB	England	30	71	173	89
189936		Robbin	Ruiter	GK	Holland	34	82	196	106
190634		Gastón	Sauro	CB	Argentina	31	84	190	687
191673	Kwon Soon Hyung	Soon Hyung	Kwon	CM	Korea Republic	35	71	176	1478
192201		Peter	Abrahamsson	GK	Sweden	33	85	190	711
192328		Philipp	Huspek	RM	Austria	30	69	172	209
193097		Stephan	Salger	CB	Germany	31	76	183	159
193350		Barış	Başdaş	CB	Turkey	31	79	188	113142
193537		Anton	Fink	CF	Germany	34	74	174	1832
193860		Thorsten	Schick	RM	Austria	31	73	180	900
194329	Javi Ros	Javier	Ros Añón	CDM	Spain	31	69	174	244
195020		David	Davis	CM	England	30	82	177	88
197166		Juan	Agudelo	ST	United States	28	82	185	691
198024		Yann-Erik	de Lanlay	LW	Norway	29	72	180	298
198230	Germán	Germán	Sánchez Barahona	CB	Spain	34	82	187	110832
198437		Tom	Bradshaw	ST	Wales	29	71	178	97
198749		Joe	Corona	CM	United States	31	72	178	1879
199277		Michiel	Jonckheere	CM	Belgium	31	67	175	682
199741		Collin	Quaner	ST	Germany	30	79	191	1939
200841		Carl	Jenkinson	RB	England	29	77	185	1
201026	Yi Teng	Teng	Yi	CB	China PR	31	75	190	112429
201374	Fernández	José Manuel	Fernández Reyes	RB	Spain	31	65	170	1867
201925		Kevin	Kraus	CB	Germany	28	91	190	29
202040		Erdin	Demir	LB	Sweden	31	70	178	15005
214418		Sebastián	Ubilla	ST	Chile	30	68	172	15029
214700		Matías	Navarrete	CB	Chile	29	73	177	112535
214971		Francisco	Pizzini	LM	Argentina	27	74	179	110093
215247		Marcus	Ingvartsen	ST	Denmark	25	84	186	673
215441		Sehrou	Guirassy	ST	France	25	82	187	31
216351		Domagoj	Antolić	CM	Croatia	31	73	180	1871
217217		Darwin	Cerén	CDM	El Salvador	31	73	177	698
218736	Vítor Gonçalves	Vítor Bruno	Rodrigues Gonçalves	CM	Portugal	29	69	172	1891
219736		Ethan	Horvath	GK	United States	26	86	195	231
219864	Cotán	Antonio Jesús	Cotán Pérez	CDM	Spain	25	67	176	462
220362		Kudakwashe	Mahachi	LW	Zimbabwe	27	72	179	110930
220710		Harry	Wilson	LM	Wales	24	70	173	91
221367		Deni	Milošević	CAM	Bosnia and Herzegovina	26	73	182	101033
222153		Cristian	Buonaiuto	LW	Italy	28	68	179	112026
222278	Tang Miao	Miao	Tang	RWB	China PR	30	74	177	112429
222428		Juan	Komar	CB	Argentina	24	82	189	112670
222521		Oliver	Hüsing	CB	Germany	28	88	193	27
222970		Erhun	Oztumer	CAM	England	30	60	160	4
223223		Kévin	Vandendriessche	CM	France	32	83	183	682
223498		Emanuel	Cecchini	CDM	Argentina	26	77	180	110404
223551		Lee	Gregory	ST	England	32	80	188	97
224325		James	Sánchez	CDM	Colombia	33	77	177	101101
224542		Nery	Leyes	CDM	Argentina	31	78	181	111708
224987		Ivan	Provedel	GK	Italy	27	84	192	1746
225699	Anuar	Anuar	Mohamed Tuhami	CDM	Morocco	26	63	172	462
226385		Cristian	Espinoza	RW	Argentina	26	70	172	1877
226583		Sotirios	Papagiannopoulos	CB	Sweden	30	87	190	819
226861		Sada	Thioub	LM	France	26	75	179	224
227558		Jordan	Siebatcheu	ST	France	25	84	190	74
227787	Kim Jong Woo	Jong Woo	Kim	CM	Korea Republic	27	65	180	983
228732		Harold	Moukoudi	CB	France	23	89	191	1738
229011		Kévin	N'Doram	CDM	France	25	77	185	69
229137		Elohim	Rolland	CDM	France	32	83	184	100081
229435		Michel	Vlap	CAM	Holland	24	69	191	1913
13127	Vítor Silva	Vítor Emanuel	Cruz da Silva	CM	Portugal	37	69	169	110854
135647		Pablo	Calandria	ST	Argentina	39	80	184	112116
138336		Brett	Holman	CAM	Australia	37	75	177	111395
143022		Gustavo	Lorenzetti	CM	Chile	36	63	163	15029
146974	Miguel Flaño	Miguel	Flaño Bezunartea	CB	Spain	36	70	177	479
155931	Casto	Casto	Espinosa Barriga	GK	Spain	39	77	181	469
157412		Christian	Giménez	CAM	Mexico	40	71	174	110147
159043		Jonathan	Pitroipa	CAM	Burkina Faso	35	60	176	111817
163796		Stéphane	Darbion	LM	France	37	77	183	294
165520		Óscar	Scarione	CAM	Argentina	36	71	179	101026
167532		Adrián	Aldrete	LB	Mexico	33	75	177	1878
169575		Lee	Peltier	RB	England	34	73	177	1961
170514		Antonio	Balzano	RB	Italy	35	74	176	200
172092		Claudio	Bieler	ST	Argentina	37	77	179	111714
172756		Tomasz	Jodłowiec	CDM	Poland	35	86	190	111086
173530		Sone	Aluko	RM	Nigeria	32	75	173	1793
175613		Jérémy	Choplin	CB	France	36	83	183	614
177508		Patric	Klandt	GK	Germany	37	81	184	171
178022		Cenk	Gönen	GK	Turkey	33	84	190	573
179665		Anthony	Pilkington	ST	Republic of Ireland	33	81	180	1961
181694		Johann	Carrasso	GK	France	33	82	188	379
182451	Cheng Yuelei	Yuelei	Cheng	GK	China PR	33	78	188	112429
183480		Jordan	Spence	RB	England	31	77	187	94
183564		Jordy	Buijs	CB	Holland	32	80	182	112448
183743		Alfonso	Blanco	GK	Mexico	34	91	182	110147
184287		Marco	Schönbächler	RM	Switzerland	31	67	171	894
184585		Ádám	Bogdán	GK	Hungary	33	92	194	81
184900	Kim Kwang Suk	Kwang Suk	Kim	CB	Korea Republic	38	73	183	1474
186267		Vegar Eggen	Hedenstad	RB	Norway	30	74	178	298
186882		Pavels	Šteinbors	GK	Latvia	35	81	191	111082
187265		Francisco	Acuña	RM	Mexico	33	61	167	110152
187705		Edwin	Hernández	LB	Mexico	35	72	166	1880
188091		Fredrik	Gulbrandsen	ST	Norway	28	79	175	191
188430		Vincent	Rüfli	LB	Switzerland	33	75	180	111817
189209		Sascha	Bigalke	CF	Germany	31	60	167	172
189464		Dennis	Daube	CM	Germany	32	83	185	167
189776		Marley	Watkins	RM	Wales	30	65	178	1919
190491		Ruben	Gabrielsen	CB	Norway	29	87	186	417
190745		Marco	Silvestri	GK	Italy	30	80	191	206
192009		José Antonio	Rodríguez	GK	Mexico	29	85	186	111035
192319		Luke	Garbutt	LB	England	28	73	178	1951
193030		Milan	Lukač	GK	Serbia	35	90	197	111340
193303		Ashley	Richards	RB	Wales	30	75	175	1961
193510		Diego	Novaretti	CB	Argentina	36	86	194	110150
193757	Edu Ramos	Eduardo	Ramos Gómez	CDM	Spain	29	67	177	1867
194319		Danny	Ward	ST	England	30	72	180	1961
194925		Louis	Moult	ST	England	29	85	184	1801
196885		Carlos	Lampe	GK	Bolivia	34	86	192	111327
197954		Gjermund	Åsen	CAM	Norway	30	71	182	418
198133		Leandro	Bacuna	CM	Curaçao	29	77	187	1793
198288		Steven	Beitashour	RB	Iran	34	71	178	112996
198638		Oliver	Buff	CAM	Switzerland	29	68	176	244
199236	Hong Chul	Chul	Hong	LB	Korea Republic	30	67	176	2055
199516		Ricky	Holmes	LM	England	34	75	172	1951
199840	Marco Matias	Marco André	Silva Lopes Matias	CF	Portugal	32	67	178	1807
200689		Ryan	Leonard	CM	England	29	82	185	1794
201138		Zacharie	Boucher	GK	France	29	76	180	57
201890	Negueba	Guilherme	Ferreira Pinto	CAM	Brazil	29	65	177	111588
202002		Loïck	Landre	CB	France	29	75	182	224
202084		Enej	Jelenič	RM	Slovenia	28	74	181	112409
202456		John	Verhoek	ST	Holland	32	87	188	1825
202814		Nathan	Byrne	RB	England	29	70	172	1917
214411		Nicolás	Maturana	RW	Chile	28	63	163	110980
214733		Maximiliano	Cerato	RW	Argentina	33	68	171	110781
214987		Germán	Voboril	LB	Argentina	34	72	177	110975
215266		Lucas	Melano	ST	Argentina	28	81	186	111140
215615	Maikel Mesa	Maikel	Mesa Piñero	CAM	Spain	30	72	183	472
216408		Lukas	Spalvis	ST	Lithuania	27	78	189	29
217639		Yosuke	Kashiwagi	CM	Japan	33	73	176	111575
218991		Mauricio	Gómez	LM	Colombia	27	72	186	112578
219837	Aguza	Sergio	Aguza Santiago	CDM	Spain	28	68	175	1861
220035		Abdul	Ajagun	CAM	Nigeria	28	65	168	100081
220429		Gastón	Campi	CB	Argentina	30	87	193	101083
221179	Sebas Coris	Sebastián	Coris Cardeñosa	RM	Spain	28	72	182	15019
221890		Jay	Fulton	CDM	Scotland	27	78	182	1960
222358		Óscar	Barreto	RM	Colombia	28	68	173	101105
222475		Morten	Thorsby	CM	Norway	25	72	186	1913
223030		Aytaç	Kara	CM	Turkey	28	84	186	742
223243		Victor Emanuel	Aguilera	CB	Argentina	32	88	187	1879
223550		Jonas	Omlin	GK	Switzerland	27	80	189	896
224142		Carlos	Henao	CB	Colombia	32	85	187	101104
224376	Philipe Sampaio	Philipe	Sampaio Azevedo	CB	Brazil	26	83	191	10019
224489		Ertuğrul	Ersoy	CB	Turkey	24	82	187	742
225206		Khaled	Narey	RM	Germany	27	75	180	28
225530		Obbi	Oularé	ST	Belgium	25	99	196	232
226035		Jordan	Morris	ST	United States	26	84	183	111144
226401		Kieran	Dowell	CAM	England	23	80	185	7
226515	Andrei Girotto	Andrei	Girotto	CDM	Brazil	29	79	186	71
227362		Sigurd	Rosted	CB	Norway	27	79	188	674
227903		Maximiliano	Romero	ST	Argentina	22	72	179	247
228813	Aleix García	Aleix	García Serrano	CM	Spain	24	68	173	110062
229041		Mehdi	Tahrat	CB	Algeria	31	86	193	64
229522	Francisco Ramos	Francisco	Neto Ramos	CM	Portugal	26	76	185	1887
53073		Stefan	Kulovits	CDM	Austria	38	70	177	110178
135743	Alex Geijo	Alexandre	Geijo Pazos	ST	Spain	39	81	188	205
140201		Yoshito	Okubo	ST	Japan	39	73	170	101144
143112		Pablo	Lugüercio	RM	Argentina	39	79	177	101083
155524		Richard	Stearman	CB	England	33	76	191	1794
157305		Rasmus	Lindgren	CB	Sweden	36	73	181	711
157741		Simone	Bentivoglio	CM	Italy	36	75	183	205
159436		Robinson	Zapata	GK	Colombia	42	85	184	101104
163396		James	Vaughan	ST	England	33	83	182	1917
165219		Jack	Hobbs	CB	England	32	85	191	4
166919		Marc	Wilson	CB	Republic of Ireland	33	80	188	4
169158		Jordens	Peters	CB	Holland	34	78	182	1907
169509		Jarosław	Fojut	CB	Poland	33	83	188	110746
169721		Micah	Richards	CB	England	33	83	180	2
171995	Jonathan Pereira	Jonathan	Pereira Rodríguez	ST	Spain	34	61	167	100831
172780		Brett	Pitman	ST	England	33	70	183	1790
173859		Sam	Baldock	ST	England	32	67	170	1793
176628		Jahmir	Hyka	LM	Albania	33	62	169	111928
177129		Adam	Bodzek	CDM	Poland	35	80	184	110636
178211		Robert	Zwinkels	GK	Holland	38	80	186	650
179800		Jesús	Paganoni	RB	Mexico	32	65	169	110145
181699		Sergio	Escudero	LM	Japan	33	72	171	1473
182409	Zhang Chengdong	Chengdong	Zhang	RW	China PR	32	84	186	112978
183442		James	Henry	RM	England	32	77	182	1951
183578		Sören	Gonther	CB	Germany	34	88	186	503
183815		Gerardo	Flores	RB	Mexico	35	75	175	1878
184285		Christian	Schneuwly	RM	Switzerland	33	74	178	897
184512		Denis	Tonucci	CB	Italy	32	78	182	110911
184816		Nejmeddin	Daghfous	RM	Tunisia	34	77	178	110178
186101		Even	Hovland	CB	Norway	32	90	191	298
186721		Claude	Dielna	CB	France	33	86	184	691
186887		Anco	Jansen	ST	Holland	32	77	186	100628
187350		Enrique	Pérez	RB	Mexico	32	80	175	110145
187789	Kanu	Rubenilson	dos Santos da Rocha	CAM	Brazil	33	84	183	100081
188194		Luis	Ibáñez	LB	Argentina	33	73	170	436
188791		Alberto	Costa	CM	Argentina	36	75	176	111714
189035		Nicolas	Giani	CB	Italy	35	81	182	110741
189510	Jeffrén	Jeffrén Isaías	Suárez Bermúdez	RM	Venezuela	33	72	173	322
189920		Ramazan	Köse	GK	Turkey	33	89	193	111339
190530		Thomas	Fontaine	CB	Madagascar	30	83	184	379
191443		Federico	Mancinelli	CB	Argentina	39	80	181	111711
192026	Souza	Elierce	Barbosa de Souza	CDM	Brazil	33	75	183	101148
192449		Marco	Stiepermann	LB	Germany	30	86	190	1792
193141		Iván	Pillud	RB	Argentina	35	81	179	101085
193369	Galán	Ernesto	Galán Iñigo	RB	Spain	35	79	181	110066
193683		Xavier	Chavalerin	CM	France	30	69	179	379
193974		Matteo	Ciofani	RB	Italy	33	76	183	200
194372		Ertuğrul	Taşkıran	GK	Turkey	31	83	191	101033
195258		Lukas	Schmitz	LB	Germany	32	78	183	111822
196952		Jake	Bidwell	LB	England	28	70	183	15
197953		Eunan	O'Kane	CM	Republic of Ireland	31	69	173	8
198046		Damian	Dąbrowski	CDM	Poland	28	73	178	110747
198394		Alexander	Kačaniklić	RM	Sweden	29	72	181	71
198511	Mika	Michael	Simões Domingues	GK	Portugal	30	90	195	1889
199339		Manuel	Riemann	GK	Germany	32	83	186	160
200440		Billy	Bodin	RM	Wales	29	70	180	1801
200746		John	Lundstram	CM	England	27	74	181	1794
201083		Michał	Kucharczyk	RM	Poland	30	78	179	1871
201873		Joe	Bendik	GK	United States	32	98	191	112606
201971		Akihiro	Ienaga	CAM	Japan	35	70	173	111730
202175		Matthías	Vilhjálmsson	ST	Iceland	34	85	186	298
202474	Aníbal Capela	Aníbal	Araújo Capela	CB	Portugal	30	84	188	112168
202676		Adam	Taggart	ST	Australia	28	69	183	111395
203315		Georg	Teigl	RB	Austria	30	77	183	100409
214480		Javier	López	CB	Colombia	32	80	194	101104
214862		Leandro	Benegas	ST	Argentina	32	78	180	15029
215076		Lorenzo	Faravelli	CM	Argentina	28	67	172	101084
215314	Carlos Gutiérrez	Carlos	Gutiérrez González	CB	Spain	29	82	192	477
216015		Néstor	Moiraghi	CB	Argentina	36	79	179	111715
216523		Marios	Oikonomou	CB	Greece	28	85	189	278
218687		Juan	Domínguez	CDM	Colombia	34	70	173	101105
219466		Birger Solberg	Meling	LB	Norway	26	64	173	298
219852		Alex	Ferrari	RB	Italy	27	70	183	1837
220089		Salih	Dursun	CB	Turkey	30	79	188	741
220534		Sebastiano	Luperto	CB	Italy	24	75	191	48
221279		Liam	Kelly	CM	Republic of Ireland	25	74	178	1793
221737		Yairo	Moreno	LM	Colombia	26	70	176	110781
222262		Cyriel	Dessers	ST	Belgium	26	80	185	1903
222420		Grant	Ward	RM	England	26	73	178	94
222513		Rolando	Aarons	LM	England	25	76	178	13
222991		Manabu	Saito	LM	Japan	31	68	169	111730
223422		Emanuel	Loeschbor	CB	Argentina	34	78	180	1028
223654	Fede	Federico	San Emeterio Díaz	CDM	Spain	24	68	176	110832
224143	Querol	David	Querol Blanco	RM	Spain	32	75	183	110854
224385		Hiroki	Yamada	LM	Japan	32	66	173	101144
224537	Iago	Iago Azevedo	dos Santos	CB	Brazil	29	83	188	1900
224977		Alessandro	Micai	GK	Italy	28	77	186	110373
225507	Pol Llonch	Pol	Llonch Puyaltó	CDM	Spain	28	70	171	1907
225931		Mikkel	Duelund	RW	Denmark	24	70	180	1516
226299		Bryan	Róchez	ST	Honduras	26	81	183	1891
226677		Juninho	Bacuna	CM	Holland	24	74	178	1939
227153		Cristian	Borja	LB	Colombia	28	72	179	1882
228353		Gaëtan	Hendrickx	CDM	Belgium	26	69	175	670
228520		Ezequiel	Ávila	ST	Argentina	27	81	179	110839
228908		Jason	Berthomier	LM	France	31	74	177	294
229038	Christian Rivera	Christian	Rivera Hernández	CDM	Spain	24	80	190	472
229247		Charilaos	Charisis	RM	Greece	26	68	177	100081
50294		Souleymane	Camara	ST	Senegal	38	75	174	70
126883		Abdullah	Durak	CM	Turkey	34	80	181	101037
139799		Santiago	Silva	ST	Uruguay	40	84	183	101084
144511		Leandro	Greco	CM	Italy	35	75	184	111434
149309		Antonio	Rosati	GK	Italy	38	81	195	54
157270	Toché	José	Verdú Nicolás	ST	Spain	38	78	186	110827
158784		Jorge	Carranza	GK	Argentina	40	88	185	111714
162471		Andy	Keogh	ST	Republic of Ireland	35	73	183	111399
165564		Adam Larsen	Kwarasey	GK	Ghana	33	76	190	920
167516		Miroslav	Radović	CAM	Serbia	37	78	182	1871
169479		Rostyn	Griffiths	CDM	Australia	33	86	187	112224
170632		Jamie	MacDonald	GK	Scotland	35	79	185	82
171077	Carpio	Javier	Carpio Martín	RB	Spain	37	67	178	1968
172411	Servando	Servando	Sánchez Barahona	CB	Spain	37	75	181	1968
173097		Stergos	Marinos	RB	Greece	33	72	178	670
173667		Rúrik	Gíslason	ST	Iceland	33	78	184	110178
176924		Federico	González	ST	Argentina	34	76	178	111715
177100		Tobias	Werner	LM	Germany	36	70	174	36
177969		Ignacio	González	CB	Mexico	37	84	184	110781
179698		Leandro	Grimi	LB	Argentina	36	74	182	110396
181175		Ondřej	Mazuch	CB	Czech Republic	32	88	189	1952
182621		Daniel	Gordon	CB	Jamaica	36	85	194	1832
183392		David	Pollet	ST	Belgium	32	86	188	2013
183573		Norman	Theuerkauf	CB	Germany	34	80	183	111235
183736		Dirk	Marcellis	CB	Holland	33	80	180	1914
183987		Stefano	Celozzi	RB	Germany	32	74	171	160
184471		Alan	Judge	CAM	Republic of Ireland	32	70	169	1925
184643		Jorge	Villafaña	LB	United States	31	68	175	111140
185349		Denis	Odoi	CB	Belgium	33	71	178	144
186559		Jacob	Butterfield	CM	England	31	77	175	91
186999		Carlos	Peña	CAM	Mexico	31	76	178	101121
187489		David	Meyler	CDM	Republic of Ireland	32	81	191	1793
188000	Sandro Manoel	Sandro Manoel	dos Santos	CDM	Brazil	33	70	176	112393
188274		Mustapha	Yatabaré	ST	Mali	35	70	186	101033
188793	Raúl Llorente	Raúl	Llorente Raposo	LB	Spain	35	69	170	112427
189412		Loïc	Damour	CDM	France	30	75	181	1961
189594		Alparslan	Erdem	LB	Turkey	32	66	174	101014
190195		Mamadou	Samassa	GK	Mali	31	85	198	294
190648		Sandro	Sirigu	RB	Germany	32	79	183	110502
191843		Abdulmalek	Al Khaibari	CDM	Saudi Arabia	35	73	177	605
192114		Antonio	Briseño	CB	Mexico	27	72	184	10019
192363		Mads	Fenger	CB	Denmark	30	81	185	708
193211		Aleksandar	Ignjovski	RB	Serbia	30	71	175	110588
193461	Fredy	Alfredo	Kulembe Ribeiro	RW	Angola	31	68	170	1889
193735	Juan Dominguez	Juan	Domínguez Lamas	CDM	Spain	31	71	181	110854
194085		Lakdar	Boussaha	ST	France	34	77	178	1805
194717		Romain	Grange	RM	France	33	74	177	670
194851		Fabio	Mazzeo	ST	Italy	38	77	177	110911
196072		Rodrigo	Millar	CM	Chile	39	76	183	1028
197496		Yasser	Al Mosailem	GK	Saudi Arabia	37	84	184	112387
198017		Michael	Pereira	RM	France	33	73	180	113259
198250		Zsolt	Korcsmár	CB	Hungary	32	83	188	1516
198429		Stanislav	Tecl	ST	Czech Republic	30	82	181	266
198856		Christopher	Avevor	CB	Germany	29	88	185	110329
199347		Timo	Beermann	CB	Germany	30	85	188	111235
200672	Zhang Linpeng	Linpeng	Zhang	CB	China PR	32	80	185	111839
201061		Elvis	Manu	LW	Holland	27	70	173	111340
201526		Uffe	Bech	RM	Denmark	28	75	170	485
201936	Kim Jin Hyeon	Jin Hyeon	Kim	GK	Korea Republic	34	78	193	101148
202077		Will	Bruin	ST	United States	31	88	188	111144
202238	Muralha	Luiz Philipe	Lima de Oliveira	CM	Brazil	28	82	176	113222
202526		Stevie	May	ST	Scotland	28	67	178	77
215192		Gastón	Díaz	RB	Argentina	33	75	175	101088
215374		Scott	Hogan	ST	Republic of Ireland	29	64	180	2
216371		Artem	Timofeev	CDM	Russia	27	74	185	100767
218345		Jonathan	Zacaría	LW	Argentina	31	76	172	15029
219655		Francesco	Zampano	RB	Italy	27	74	177	111657
219848	David Costas	David	Costas Cordal	CB	Spain	26	72	184	450
220118		Iliass	Bel Hassani	CAM	Morocco	28	72	175	1906
220509		Lorenzo	Venuti	RB	Italy	26	66	176	347
221220		Juan	Quintero	CB	Colombia	26	79	183	101102
221618		Lys	Mousset	ST	France	25	80	184	1943
222225		Strahil	Popov	RB	Bulgaria	30	77	186	111339
222273	Jiang Zhipeng	Zhipeng	Jiang	LB	China PR	32	73	180	112978
222464	Sivera	Antonio	Sivera Salvá	GK	Spain	24	75	184	463
222553		Sebastian	Griesbeck	CDM	Germany	30	85	189	111235
223107		Muammer	Yıldırım	GK	Turkey	30	81	190	101020
223495		Iván	Rossi	CDM	Argentina	27	76	183	111711
223922		Andreas	Bouchalakis	CM	Greece	28	78	186	280
224314		Mirko	Gori	CM	Italy	28	76	177	111657
224608	Cai Huikang	Huikang	Cai	CDM	China PR	31	82	183	112540
224756		Arnaud	Lusamba	CAM	France	24	74	179	1750
225441		Kasey	Palmer	CAM	England	24	68	175	3
225934		Cédric	Yambéré	CB	Central African Republic	30	84	191	110569
226108		Filippo	Romagna	CB	Italy	24	75	185	1842
226430		Sead	Hakšabanovič	LM	Montenegro	22	70	174	573
226773		Pape Cheikh	Diop	CM	Spain	23	68	180	66
227557		Mateo	Cassierra	ST	Colombia	24	77	184	1915
227604		Felix	Platte	ST	Germany	25	86	190	110502
228838		Eric	Remedi	CDM	Argentina	26	72	169	112885
229026		Shehu	Abdullahi	CB	Nigeria	28	72	181	742
229209		Jonathan	Benítez	LW	Argentina	29	77	178	112534
229533	Tiago Mesquita	Tiago Manuel	Oliveira Mesquita	RB	Portugal	30	74	180	10019
111206		Sascha	Riether	RB	Germany	38	72	176	34
136363	Jung Jo Gook	Jo Gook	Jung	ST	Korea Republic	37	77	186	112115
138026		Davino	Verhulst	GK	Belgium	33	95	194	2007
142720		Carlos	Araujo	RB	Argentina	39	69	172	111711
146521	Ripa	Adrián	Ripa Cruz	LB	Spain	35	73	177	477
155657		Piotr	Celeban	CB	Poland	36	76	181	111092
157515		Efraín	Velarde	LB	Mexico	35	70	174	1028
158902		Daniel	Fox	CB	Scotland	35	78	183	14
159577		Damien	Delaney	CB	Republic of Ireland	40	89	191	422
164766		Lee	Wallace	LB	Scotland	34	75	185	86
167159		Steffen	Hagen	CB	Norway	35	80	185	1456
169464		Armand	Traoré	LB	Senegal	31	82	185	101037
169586		Fraizer	Campbell	ST	England	33	82	172	1952
169815		Carlos	Luna	ST	Argentina	39	81	179	111715
171565	Linares	Miguel	Linares Cólera	ST	Spain	38	78	181	110854
172620		Matías	Cahais	CB	Argentina	33	80	185	111714
173444		Giles	Barnes	ST	Jamaica	33	82	178	694
174382	Sunny	Sunday	Stephen Obayan	CDM	Nigeria	32	67	180	111065
177055		Viktor	Elm	CB	Sweden	35	84	191	1439
177895		Aydın	Karabulut	LM	Turkey	33	70	178	101041
179569		Radosław	Majewski	CAM	Poland	34	68	170	110746
179931		Cédric	Avinel	CB	France	34	70	180	614
182270		Wayne	Sandilands	GK	South Africa	37	81	180	110930
183315		David	González	GK	Colombia	39	84	194	101103
183490		Johannes	van den Bergh	LB	Germany	34	76	183	576
183640		Christian	Strohdiek	CB	Germany	33	87	192	10030
183940		Vurnon	Anita	LB	Holland	32	66	168	8
184323		Jan	Lecjaks	LB	Czech Republic	30	84	186	211
184707		Gary	Madine	ST	England	30	75	191	1961
185405		Dušan	Kuciak	GK	Slovakia	36	87	194	111091
186415		Stephan	Andrist	LM	Switzerland	33	71	176	492
186979		Israel	Jiménez	RB	Mexico	31	68	173	1970
187498		Jakob	Jantscher	LM	Austria	32	71	181	209
188076		Francesco	Bolzoni	CM	Italy	32	80	183	110741
188411	Bruno Perone	Bruno	Caldini Perone	CB	Brazil	34	85	191	244
189267		Daniel	Bernhardt	GK	Germany	35	85	189	550
189437		Cristian	Pasquato	CAM	Italy	32	70	172	1871
189893		Lorenzo	Del Prete	RB	Italy	35	81	180	199
190485		Heriberto	Olvera	LB	Mexico	31	69	175	101114
190883		A.J.	DeLaGarza	RB	Guam	33	68	175	698
191910	Kim Shin Wook	Shin Wook	Kim	ST	Korea Republic	33	93	196	1477
192259	Magno	Magno Damasceno	Santos da Cruz	ST	Brazil	33	77	178	1478
192559		Gerrit	Nauber	CB	Germany	29	75	186	1825
193244		Bobby	Shuttleworth	GK	United States	34	93	188	111138
193504		Steven	Caulker	CB	England	29	77	191	180
193768		Adam	Matthews	RB	Wales	29	71	178	106
194091		Michael	Jacobs	LM	England	29	74	175	1917
194783		Niccolò	Giannetti	ST	Italy	30	73	181	1844
195838	Crivellaro	Rafael	Schuler Crivellaro	CM	Brazil	32	78	183	10019
197424		Hisato	Sato	ST	Japan	39	71	170	112092
197975		Sam	Morsy	CDM	Egypt	29	75	173	1917
198033	Alex	Alexandre H.	Gonçalves Freitas	LW	Portugal	29	68	176	665
198355		Steve	Clark	GK	United States	35	87	188	111140
198704		Josh	McEachran	CM	England	28	65	178	1925
199283		Ermir	Lenjani	LB	Albania	32	65	175	110770
200292		Jason	Lowe	CDM	England	29	80	176	4
200542		Giannis	Maniatis	CDM	Greece	34	68	175	113142
200922		Sven	Schipplock	ST	Germany	32	84	186	159
201304		Bashkim	Kadrii	ST	Denmark	30	71	177	819
201530		Bruno	Martella	LB	Italy	28	78	184	110734
201999		Jon	Flanagan	RB	England	28	79	181	86
202164		Perry	Kitchen	CDM	United States	29	73	183	697
202489		Dimitri	Bisoli	CM	Italy	27	72	180	190
203026		Petar	Filipović	CB	Germany	30	83	188	101033
203216	Héctor	Héctor	Hernández Ortega	LB	Spain	30	71	173	457
202220		C.J.	Sapong	ST	United States	32	84	185	112134
202517		Apostolos	Vellios	ST	Greece	29	78	191	14
203043		Michael	O'Halloran	RM	Scotland	30	79	180	112224
203393		Eddy	Gnahoré	CM	France	27	88	188	1816
203699		Gaëtan	Courtet	ST	France	32	76	180	217
203859		Lucas	Aveldaño	CB	Argentina	36	82	185	260
204474	Dani Nieto	Daniel	Nieto Vela	RM	Spain	30	60	173	477
204840		Daryl	van Mieghem	RM	Holland	31	68	170	635
204966	Adrián Ortolá	Adrián	Ortolá Vaño	GK	Spain	27	72	182	242
205157	Ruiz de Galarreta	Iñigo	Ruiz de Galarreta	CM	Spain	28	64	174	472
205588		Immanuel	Höhn	CB	Germany	29	72	183	110502
206083		Josh	Murphy	LW	England	26	67	173	1961
206485		Rudy	Camacho	CB	France	30	79	185	111139
206549		Evan	Bush	GK	United States	35	83	186	111139
207660		Dominik	Wydra	CDM	Austria	27	85	186	506
207815		John Jairo	Ruiz	RM	Costa Rica	27	66	175	113057
208384		Rafidine	Abdullah	CDM	Comoros	27	75	180	110913
208630		Dominik	Furman	CDM	Poland	29	71	181	1569
208862		Jimmy	Giraudon	CB	France	29	71	184	294
209332		Mirko	Salvi	GK	Switzerland	27	80	188	897
209618		Florian	Tardieu	CDM	France	29	73	179	15005
209958		Dustin	Bomheuer	CB	Germany	30	86	193	1825
210380		Dimitris	Diamantakos	ST	Greece	28	81	182	110329
210743	Leandrinho	Leandro	de Lima Silva	CAM	Brazil	27	70	178	744
211005	Jang Hyeon Soo	Hyeon Soo	Jang	CB	Korea Republic	29	77	187	101150
211270		Esteban	Saveljich	CB	Montenegro	30	80	186	1853
211691		Richard	Weil	CB	Germany	33	81	183	110588
212121		Jordi	Vanlerberghe	CDM	Belgium	25	85	190	682
212238		Besar	Halimi	CM	Kosovo	26	68	170	169
212643		Paweł	Cibicki	LW	Sweden	27	66	182	417
212817	Lee Jeong Hyeop	Jeong Hyeop	Lee	ST	Korea Republic	30	78	188	113161
213348		Adolphe	Teikeu	CB	Cameroon	31	89	188	113219
213573		Marius	Gersbeck	GK	Germany	26	80	187	166
213933		Linus	Wahlqvist	RB	Sweden	24	78	184	503
214029		Miguel	Murillo	ST	Colombia	27	80	184	101102
214258		Mathías	Riquero	CDM	Uruguay	38	76	178	112709
214440		Darío	Melo	GK	Chile	27	76	179	111328
214572		Juan	Angulo	RB	Colombia	32	72	180	101102
214916		Fernando	Cordero	LB	Chile	33	71	172	111714
215001		Francisco	Mattia	CB	Argentina	33	77	190	111713
215216		Alexis	Niz	CB	Argentina	33	79	179	111715
215388		Jérémy	Cordoval	RB	France	31	67	167	294
215810		Cristiano	Lombardi	LW	Italy	25	75	180	46
216268		Duncan	Watmore	RM	England	27	72	175	106
216449	Tomás Podstawski	Tomás	Martins Podstawski	CDM	Portugal	26	72	180	110746
216520		Javier	Güemez	CM	Mexico	29	77	174	110150
217532		Mohamed	El Monir	LB	Libya	29	76	177	112606
217998		Cristian	Arango	ST	Colombia	26	78	180	112516
219091		Juan	Fuentes	CDM	Chile	26	72	175	112116
219755		Uroš	Matić	CM	Serbia	31	78	184	256
219871		Jimmy	Medranda	LB	Colombia	27	68	172	696
220204		Roman	Bezjak	ST	Slovenia	32	70	179	110745
220700		Micheal	Azira	CDM	Uganda	33	73	178	111139
220968		Ahmed	El Messaoudi	CDM	Morocco	26	80	184	634
221619		Víctor	Cabrera	CB	Argentina	28	77	182	111139
221885		Paul	Seguin	RB	Germany	26	79	186	175
222337	Jo Sung Jin	Sung Jin	Jo	CB	Korea Republic	30	78	187	983
222779		Lefteris	Choutesiotis	GK	Greece	27	74	184	280
222876		Jordan	Smith	GK	England	26	75	183	14
223045		Uğur	Çiftçi	LB	Turkey	29	73	180	101041
223345	Wellington	Wellington	Nascimento Carvalho	RW	Brazil	28	67	182	10031
223637		Andy	Polo	LM	Peru	26	71	174	111140
223730		Tom	van Weert	ST	Holland	31	73	180	820
223929		Aaron	Leya Iseka	ST	Belgium	23	82	183	1809
224265		Joe	Williams	CDM	England	24	66	178	4
224890	Miguel Cardoso	Miguel Filipe	Nunes Cardoso	LM	Portugal	27	76	176	112516
225204	Raúl Guti	José Raúl	Gutiérrez Parejo	CM	Spain	24	75	178	244
225476		Cheick	Keita	LB	Mali	25	76	182	2013
226002		Miguel	Araujo	CB	Peru	26	71	178	112670
226523		Franz	Brorsson	CB	Sweden	25	81	185	320
226706	Felipe Pires	Felipe Augusto	Rodrigues Pires	LM	Brazil	26	68	178	10029
226805		Axel	Sjöberg	CB	Sweden	30	95	201	694
227537		Henk	Veerman	ST	Holland	30	90	201	110329
227785		Cristian	Guanca	LM	Argentina	28	78	178	112096
228080		Felix	Passlack	RB	Germany	23	74	170	1792
228404		Cristian	Techera	RM	Uruguay	29	68	158	101112
228762		Giovanni	Troupée	RB	Holland	23	65	181	650
228893		Manuel	Guanini	CB	Argentina	25	80	181	101084
229108		Jhon	Pérez	CAM	Colombia	33	67	174	112992
229327	Hélder Tavares	Hélder Luís	Vieira Tavares	CM	Cape Verde Islands	31	73	178	112516
229692		Jannik	Huth	GK	Germany	27	80	185	169
230037		Rajko	Brežančić	LB	Serbia	31	74	176	110839
230686		Jean-Victor	Makengo	CM	France	23	75	177	72
231207		Jhon	Lucumi	CB	Colombia	23	78	185	673
231560		Carlos	Muñoz	ST	Chile	32	67	173	110977
231985		Keegan	Rosenberry	RB	United States	27	73	173	112134
232406		Robin	Krauße	CDM	Germany	27	75	179	111239
50516175		Mattia	Mustacchio	RM	Italy	32	78	182	112409
50518647		Carlos	Peña	CAM	Mexico	31	76	178	86
50520059	Bruno Perone	Bruno	Caldini Perone	CB	Brazil	34	85	191	469
50525383	Juan Dominguez	Juan	Domínguez Lamas	CM	Spain	31	71	181	209
50529601		Eunan	O'Kane	CM	Republic of Ireland	31	69	173	1923
50530397		Joe	Corona	CM	United States	31	72	178	111678
50532786		Zacharie	Boucher	GK	France	29	76	180	1530
50533178		Bruno	Martella	LB	Italy	28	78	184	190
203173	Noguera	Alberto	Noguera Ripoll	RM	Spain	31	72	175	477
203398		Derrick	Williams	LB	Republic of Ireland	28	75	180	3
203593		George	Maluleka	CM	South Africa	32	76	170	110929
204092		Janis	Blaswich	GK	Germany	30	88	193	100634
204353		Craig	Forsyth	LB	Scotland	32	83	189	91
204761		Grant	Hall	CB	England	29	71	191	15
204939		Ondřej	Petrák	CDM	Czech Republic	29	79	186	171
205089		Mattia	Valoti	CM	Italy	27	73	187	112791
205603		Mike	van Duinen	ST	Holland	29	75	185	1914
206018		Igor	Vetokele	ST	Angola	29	74	173	89
206440		Marvin	Baudry	CB	Congo	31	82	189	15005
206604		Carlos	Labrín	CB	Chile	30	81	181	101097
207552		Alhassan	Kamara	ST	Sierra Leone	28	82	180	711
207892		Joseph-Claude	Gyau	LM	United States	28	75	175	1825
208316		Andreas	Blomqvist	CM	Sweden	29	70	182	702
208766		Omri	Altman	CAM	Israel	27	76	180	1884
208861		Johan	Gastien	CM	France	33	69	179	1815
209061		Simon	Hedlund	LW	Sweden	28	68	175	1831
209430		Renaud	Ripart	LM	France	28	73	181	224
210028		Waleed	Bakhashwain	CDM	Saudi Arabia	31	66	176	112408
210280		Patrick	Ziegler	CB	Germany	31	79	187	112427
210566		Lucas	Chiaretti	CAM	Brazil	33	67	171	110911
211021		Per Kristian	Bråtveit	GK	Norway	25	72	184	1463
211292		Nyasha	Mushekwi	ST	Zimbabwe	33	81	188	112378
211946		Markus	Kolke	GK	Germany	30	91	187	492
212104		Jaime	Gómez	RB	Mexico	28	65	176	110150
212208		Leonel	Galeano	CB	Argentina	30	84	184	111707
212592		Andrew	Farrell	RB	United States	29	75	180	691
213007		Abdulfatah	Aseri	RM	Saudi Arabia	27	64	167	112387
213110		Pape	Sané	ST	Senegal	29	84	187	1823
213692		Joshua	Harrop	CAM	England	25	70	175	1801
213902	Alef	Alef	dos Santos Saldanha	CDM	Brazil	26	76	186	278
214012		Andrés	Escobar	LW	Colombia	30	68	168	111722
214266		Gonzalo	Barriga	LB	Chile	37	72	175	112535
214408		Igor	Lichnovsky	CB	Chile	27	79	188	1878
214724		David	Llanos	ST	Chile	32	68	173	110975
214882		Jakub	Czerwiński	CB	Poland	30	75	183	111086
214991		Jessy	Pi	CDM	France	27	74	180	378
215178		Erik	Godoy	CB	Argentina	27	79	184	110406
215569	Unai García	Unai	García Lugea	CB	Spain	28	81	186	479
216139		Luca	Bittante	RB	Italy	27	75	184	1746
216346		Alvas	Powell	RB	Jamaica	27	75	182	111140
216463		Hamza	Sakhi	CAM	Morocco	25	68	173	57
216534		Roberto	Rodriguez	LM	Switzerland	31	75	180	894
217794		Brayan	Véjar	LM	Chile	26	65	168	110980
218656		Sascha	Mockenhaupt	CB	Germany	29	84	187	492
219470		Cheikh	N'Doye	CM	Senegal	35	90	192	1530
219594		Andrea	Barberis	CM	Italy	27	72	177	110734
219879		Matías	Pisano	RM	Argentina	29	61	166	111707
220489		Filippo	Scaglia	CB	Italy	29	88	191	111993
220815		Juan José	Narváez	CM	Colombia	26	76	180	449
220901	David Raya	David	Raya Martin	GK	Spain	25	75	183	3
221350		Thierry	Ambrose	ST	France	24	76	178	64
221694	Minhoca	Nélson	Farpelha Estrela	LW	Portugal	33	66	175	1438
222109		Chris	Cadden	RM	Scotland	24	76	183	83
222562		Rúnar Alex	Rúnarsson	GK	Iceland	26	76	186	110569
222840		Racine	Coly	LB	Senegal	25	70	185	72
223004		Jon	Nolan	CM	England	29	72	180	94
223134		Zeki	Yavru	RB	Turkey	29	78	178	436
223359		Marko	Petković	RB	Serbia	28	80	186	100767
223610	David Concha	David	Concha Salas	RW	Spain	24	61	172	457
223794		Philipp	Schobesberger	RW	Austria	27	64	176	254
224205		Mariano	Barbieri	LM	Argentina	30	64	163	112535
224796		Jorge	Rodríguez	CB	Argentina	25	80	179	110404
225106	Jorge Sáenz	Jorge	Sáenz de Miera	CB	Spain	24	75	192	260
225396		Branco	Ampuero	CB	Chile	28	82	182	110975
225950		Marvin	Gakpa	LW	France	27	70	182	68
226436		Hidde	ter Avest	RB	Holland	24	78	182	55
226662		Bart	Nieuwkoop	RB	Holland	25	72	181	246
226798		Mauricio	Martínez	CDM	Argentina	28	66	174	101085
227274		David	Barbona	LM	Argentina	26	71	175	111708
227591		Alexis	Canelo	ST	Argentina	29	83	180	1882
228174		Cameron	Carter-Vickers	CB	United States	23	92	183	1960
228546	Omar Perdomo	José Omar	Perdomo Machado	RM	Spain	28	75	178	15019
228861		Stanislav	Iljutcenko	ST	Russia	30	82	189	1825
229064		Joher Khadim	Rassoul	CB	Senegal	25	80	187	2007
229260		Kevin	Bua	LM	Switzerland	27	76	180	896
229456		Lorenzo	Dickmann	RB	Italy	24	70	177	112791
229748		Mayron	George	ST	Costa Rica	27	80	189	1516
229890		Emmanuel	Hackman	RB	Ghana	26	76	187	10031
230150	Luís Machado	Luís Miguel	Vieira Machado	LM	Portugal	28	62	168	10019
230824	Pedro Pereira	Pedro Miguel	Lopes Pereira	RB	Portugal	23	72	182	110556
231110		Patrick	Erras	CDM	Germany	26	85	196	171
231521		Exequiel	Palacios	CM	Argentina	22	66	177	1876
231726		Andrei	Ivan	RW	Romania	24	81	189	254
232208	Allan	Allan	Rodrigues de Souza	CM	Brazil	24	70	172	1824
232505		Takuto	Hayashi	GK	Japan	38	87	188	113157
50529602		Gjermund	Åsen	CAM	Norway	30	71	182	298
50530884	Hong Chul	Chul	Hong	LB	Korea Republic	30	67	176	983
50532952		Bashkim	Kadrii	ST	Denmark	30	71	177	272
50533868		C.J.	Sapong	ST	United States	32	84	185	693
50534864	Héctor	Héctor	Hernández Ortega	LB	Spain	30	71	173	260
50539387		Mike	Havenaar	ST	Japan	34	92	195	101146
50540902		Robbie	Willmott	RM	England	31	77	176	112254
50544291		Paweł	Cibicki	LW	Sweden	27	66	182	8
50546088		Darío	Melo	GK	Chile	27	76	179	110980
203308		Joshua	Brillante	CDM	Australia	28	73	177	111400
203423		Lawrence	Thomas	GK	Australia	29	91	191	111397
203746	Jon Toral	Jon-Miquel	Toral Harper	CAM	Spain	26	77	184	1952
204153		Yannick	Stark	CDM	Germany	30	81	185	110502
204731	Joãozinho	João Carlos	Reis Graça	LB	Portugal	32	72	185	112516
204920		Damian	Zbozień	RB	Poland	32	80	186	111082
204992		Mamadou	Kone	ST	Côte d'Ivoire	29	69	176	573
205559		Nouha	Dicko	ST	Mali	29	74	173	1952
205674	Fran Carbia	Francisco	Carbia Barrera	LM	Spain	29	67	173	110854
206402		Matúš	Putnocký	GK	Slovakia	36	91	195	873
206563		Jason	Holt	CM	Scotland	28	70	164	112260
207711	Chuli	Manuel Jesús	Vázquez Florido	ST	Spain	30	59	170	469
208169		Levent	Gülen	CB	Switzerland	27	77	185	101020
208616	Isaac Becerra	Isaac	Becerra Alguacil	GK	Spain	33	80	183	15019
208856		Quentin	Bernard	LB	France	32	77	184	378
208923		Ibrahim	Ghaleb	CDM	Saudi Arabia	30	76	176	112139
209417		Radosław	Murawski	CM	Poland	27	68	173	1843
209892		Bryan	Rabello	CAM	Chile	27	70	167	111035
210182		Mohammed	Jahfali	CB	Saudi Arabia	30	70	185	605
210475		Manuel	Prietl	CDM	Austria	30	79	187	159
210833		Riccardo	Improta	LW	Italy	27	73	179	112026
211057	Pablo Valcarce	Pablo	Valcarce Vidal	RM	Spain	28	70	175	453
211574		Marko	Bakić	CM	Montenegro	27	78	185	111560
212054		Bryan	Idowu	LWB	Nigeria	29	76	179	100765
212192		Julian	Green	LM	United States	26	70	173	165
212506		Mauro	Matos	ST	Argentina	39	86	180	111708
212807		Kekuta	Manneh	LM	United States	26	68	175	898
213102	Arthur Caike	Arthur Caike	do Nascimento Cruz	LM	Brazil	29	75	176	111674
213404		Paweł	Dawidowicz	CB	Poland	26	85	191	206
213746	Arsénio	Arsénio Martins	Lafuente Nunes	LW	Portugal	31	73	180	1900
213954		Anton	Mitryushkin	GK	Russia	25	82	189	110770
214038		Sergio	Mosquera	CB	Colombia	27	77	185	111722
214331		Luis Carlos	Ruiz	ST	Colombia	34	76	187	101101
214533		Juan	Villota	CAM	Colombia	29	69	170	111723
214807		Franz	Schultz	CM	Chile	30	72	172	15029
214980		Juan	Caicedo	ST	Colombia	32	79	187	101103
215123		Alan	Aguerre	GK	Argentina	30	80	181	110396
215250		César	Rigamonti	GK	Argentina	34	87	188	111022
215665	Filipe Ferreira	Filipe Miguel	Neves Ferreira	LB	Portugal	30	72	178	209
216229		Rémy	Dugimont	CAM	France	35	75	182	57
216377		Stefan	Kutschke	ST	Germany	32	95	194	111239
216514		Boris	Sagredo	LM	Chile	32	63	165	112668
217203		Leonardo	Sánchez	CB	Argentina	35	85	190	111707
217845		Andrew	Hjulsager	CM	Denmark	26	73	175	450
219046		Dhurgham	Ismail	LB	Iraq	27	75	178	101037
219514	Derley	Vanderley	Dias Marinho	ST	Brazil	33	76	183	666
219779		Ebenezer	Assifuah	LM	Ghana	28	70	172	1738
220085		Luca	Waldschmidt	CF	Germany	25	75	181	25
220636	Felipe Macedo	Felipe	Francisco Macedo	CB	Brazil	27	76	187	10031
220878		Malcolm	Cacutalua	CB	Germany	26	81	188	506
221014	Carlos Fernández	Carlos	Fernández Luna	ST	Spain	25	72	186	481
221413		Rodrigo	Echeverría	CB	Chile	26	73	181	15029
221990		Yonathan	Cabral	CB	Argentina	29	93	188	111708
222355		Luca	Valzania	CM	Italy	25	77	184	39
222692		Benno	Schmitz	RB	Germany	26	75	182	31
222930		Tarkan	Serbest	CDM	Turkey	27	78	184	111339
223010		Leonardo	Morosini	CAM	Italy	25	70	175	190
223190		Taşkın	Çalış	CDM	Turkey	28	72	176	113259
223473	Filipe Melo	Filipe Joaquim	Melo Silva	CDM	Portugal	31	82	189	518
223690		Sergio	Rochet	GK	Uruguay	28	82	190	101041
223747		Stephen	Kingsley	LB	Scotland	27	77	178	1952
224041		Marvin	Schwäbe	GK	Germany	26	90	188	269
224520		Ryan	Kent	LM	England	24	65	172	86
224970		Jean-Luc	Dompé	RM	France	25	65	170	674
225440		Carlos	Embalo	LW	Guinea-Bissau	26	74	175	1843
225652		George	Puşcaş	ST	Romania	25	78	188	1843
226157	Javi Muñoz	Javier	Muñoz Jiménez	CM	Spain	26	70	176	110827
226468		Andrea	Favilli	ST	Italy	24	78	190	110556
226765		Lucas	Gamba	ST	Argentina	34	70	170	111711
227174		Matty	Cash	RM	England	24	64	179	14
227547		Dylan	Saint-Louis	LW	Congo	26	78	184	111817
227866		Pål Alexander	Kirkevold	ST	Norway	30	90	185	112425
228321	Sergi Palencia	Sergi	Palencia Hurtado	RB	Spain	25	66	170	59
228595		Grischa	Prömel	CDM	Germany	26	78	183	1831
228829		Marc	Roberts	CB	England	31	81	193	88
229053		Zeki	Yıldırım	CDM	Turkey	30	75	180	741
229361	Undabarrena	Iker	Undabarrena	CDM	Spain	26	74	181	260
229541		Álvaro	Montero	GK	Colombia	26	85	196	111722
229862	Edu Expósito	Eduardo	Expósito Jaén	CM	Spain	25	67	179	242
230079		Aldo	Kalulu	RM	France	25	66	166	896
230598		Jaime	Carreño	CM	Chile	24	65	166	110975
231073		Boris	Radunović	GK	Serbia	25	90	194	111434
231410	Brahim Díaz	Brahim	Díaz	LW	Spain	22	68	170	10
231624		Fabian	Schleusener	ST	Germany	29	80	186	110178
232429		Kengo	Kawamata	ST	Japan	31	76	184	101144
50534165		Apostolos	Vellios	ST	Greece	29	78	191	110913
50536494		Jamal	Blackman	GK	England	27	93	199	5
50540504		Quentin	Bernard	LB	France	32	77	184	57
50542918		Esteban	Saveljich	CB	Montenegro	30	80	186	1861
50545914		Gonzalo	Barriga	LB	Chile	37	72	175	112116
50546372		David	Llanos	ST	Chile	32	68	173	110977
50548127		Armando	Sadiku	ST	Albania	30	80	185	10032
50551230		Steven	Fortès	CB	Cape Verde Islands	29	85	192	64
50552474		Larry	Vásquez	CDM	Colombia	29	80	186	111722
203491		Aiden	O'Brien	LM	Republic of Ireland	27	72	183	97
203780		Frédéric	Veseli	CB	Albania	28	80	183	1746
204352		Dino	Arslanagic	CB	Belgium	28	87	191	230
204677	Oriol Rosell	Oriol	Rosell Argerich	CDM	Spain	29	76	182	112606
204847		Todd	Kane	RB	England	27	70	180	1952
205086		Philipp	Klement	RM	Germany	28	71	174	10030
205496	Nicolas	David Nicolas	Andrade	GK	Brazil	33	85	190	55
205753		Edgar	Salli	LM	Cameroon	28	71	171	171
206145		Benjamin	Uphoff	GK	Germany	27	84	192	1832
206631		Kelyn	Rowe	CM	United States	29	70	173	691
207531		Stefan	Thesker	CB	Germany	30	85	190	576
207745		Mehdi	Zeffane	RB	Algeria	29	71	176	74
208247		Lukas	Spendlhofer	CB	Austria	28	82	187	209
208631		Filip	Starzyński	CAM	Poland	30	72	184	110749
208865		Jimmy	Roye	CM	France	32	68	174	110316
209281		Yahia Sulaiman	Al Shehri	CAM	Saudi Arabia	31	63	165	112139
209444	Bruno Nascimento	Bruno Andrade	Toledo Nascimento	CB	Brazil	30	74	188	10019
210020		Patrick	Weihrauch	RM	Germany	27	74	181	159
210466	Gégé	Admilson E.	Dias de Barros	CB	Cape Verde Islands	33	83	184	113057
210868	José Mari	José María	Martín Bejarano	CDM	Spain	33	70	183	1968
211177		Arnór Ingvi	Traustason	LM	Iceland	28	77	181	320
211506		John	Swift	CM	England	26	73	182	1793
212024		Goran	Cvijanović	CM	Slovenia	34	75	179	111082
212377		Mario	Osuna	CDM	Mexico	32	76	177	1028
212516		John	Souttar	CB	Scotland	24	75	189	80
212992		Jón Daði	Böðvarsson	ST	Iceland	29	85	190	1793
213136		Steeven	Willems	CB	France	30	76	183	670
213588		Alejandro	Sánchez	GK	Argentina	34	84	187	111708
213905		Sam	Gallagher	ST	England	25	75	193	17
213990		Dávinson	Monsalve	CB	Colombia	37	82	187	112527
214274		José	Chunga	GK	Colombia	30	80	180	101101
214355		Ricardo	Jérez	GK	Guatemala	35	85	193	112579
214662		Reinaldo	Lenis	RW	Colombia	29	70	180	101100
214907		Farès	Bahlouli	CAM	France	26	82	182	65
214993		Pablo	Alvarado	CB	Argentina	35	80	181	112535
215183		Ezequiel	Rescaldani	ST	Argentina	29	83	191	110581
215390	Danilson da Cruz	Danilson	da Cruz Gomes	CDM	Cape Verde Islands	35	88	186	1823
216067		Riccardo	Gagliolo	LB	Italy	31	75	180	50
216255		Marvin	Stefaniak	LW	Germany	26	76	178	175
216416		Jan	Gyamerah	RB	Germany	26	77	184	160
216750		Patrik	Carlgren	GK	Sweden	29	84	188	1786
217653		Hideto	Takahashi	CDM	Japan	33	75	184	113160
218651		Pieros	Sotiriou	ST	Cyprus	28	81	186	819
219285		Brayan	Beckeles	RB	Honduras	35	84	182	101121
219647		Agustín	Vuletich	ST	Argentina	29	79	185	110373
219912		Lebogang	Manyama	CAM	South Africa	30	75	180	110929
220196		David	Brooks	CAM	Wales	24	62	183	1943
220826		Larry	Vásquez	CDM	Colombia	29	80	186	101099
220889	Guille Donoso	Guillermo	Donoso Alonso	RM	Spain	26	65	173	110831
221271		Théo	Pellenard	LB	France	27	78	184	59
221621		Steve	Birnbaum	CB	United States	30	81	185	688
222163		Róbert	Pich	LM	Slovakia	32	68	176	111092
222557		Justen	Glad	CB	United States	24	72	185	111065
222875		Joris	Kayembe	LM	Belgium	26	73	182	71
222944	Pablo Pérez	Pablo	Pérez Rodríguez	CAM	Spain	28	79	187	459
223151		Dimitri	Oberlin	ST	Switzerland	23	74	182	896
223452		Muğdat	Çelik	CAM	Turkey	31	75	177	325
223575	Rafael Costa	Rafael Eduardo	Costa	CM	Brazil	30	79	183	1898
223709		Ali Şaşal	Vural	GK	Turkey	31	80	187	101041
223920		Anastasios	Avlonitis	CB	Greece	31	83	191	209
223966	Vítor Bruno	Vítor Bruno	Ramos Gonçalves	LB	Portugal	31	69	171	10019
224484		Thabo	Qalinge	RM	South Africa	29	62	165	110930
224925		Gianluca	Gaudino	CM	Germany	24	75	175	192
225294	Edson Farias	Edson	Rodrigues Farias	RM	Brazil	29	67	170	10019
225533		Chris	Bedia	ST	Côte d'Ivoire	25	84	193	15005
225974		Scott	McKenna	CB	Scotland	24	80	189	77
226508		Greg	Taylor	LB	Scotland	23	62	174	82
226786		Alex	Bono	GK	United States	27	88	191	111651
227443		Yojiro	Takahagi	CM	Japan	35	69	183	101150
227708	Lucas Tagliapietra	Lucas	Tagliapietra	CB	Brazil	30	94	194	112990
228326	Brian Oliván	Brian	Oliván Herrero	LB	Spain	27	70	179	1968
228413		Emil	Audero	GK	Italy	24	80	190	1837
228860		Hidde	Jurjus	GK	Holland	27	90	187	635
229040		Aristote	Nkaka	CDM	Belgium	25	79	180	682
229276		Paolo	Bartolomei	CM	Italy	31	76	183	110741
229705		Jean-Kévin	Duverne	CB	France	24	71	184	64
229949	Anderson Lopes	Anderson José	Lopes de Souza	ST	Brazil	27	82	185	982
230727		Gautier	Larsonneur	GK	France	24	69	181	378
231340		Gonzalo	Montiel	RB	Argentina	24	70	175	1876
231591	Javi Galán	Javier	Galán Gil	LB	Spain	26	70	172	1867
232004		José David	Moya	CB	Colombia	29	77	185	101104
232433		Hichem	Belkaroui	CB	Algeria	30	88	186	112392
50546826		Erik	Godoy	CB	Argentina	27	79	184	101112
50548182		Roberto	Rodriguez	LM	Switzerland	31	75	180	167
50552170		Daniel	Hernández	RM	Colombia	28	65	176	111711
50553533		Paul	Seguin	RB	Germany	26	79	186	165
50554782		Zeki	Yavru	RB	Turkey	29	78	178	111340
50555853		Mariano	Barbieri	LW	Argentina	30	64	163	111022
50557044		Branco	Ampuero	CB	Chile	28	82	182	112533
50562334		Jean-Victor	Makengo	CM	France	23	75	177	1809
50563768		Shaquell Kwame	Moore	RB	United States	24	73	179	1853
50567948		Samuel	Eduok	RM	Nigeria	27	82	176	749
50569150		Dennis	Johnsen	LW	Norway	23	75	185	1913
50573146		Romario	Ibarra	LM	Ecuador	26	76	174	110147
203570		Stuart	Dallas	LM	Northern Ireland	30	81	183	8
203798		Felipe	Seymour	CM	Chile	34	78	174	15029
204332		Pelé	van Anholt	RB	Holland	30	70	170	1904
204690		Philipp	Hosiner	ST	Austria	32	79	179	209
204846		Jamal	Blackman	GK	England	27	93	199	8
205073		Filip	Kiss	CDM	Slovakia	30	75	186	112096
205215	Igor Rossi	Igor	Rossi Branco	CB	Brazil	32	82	189	112389
205990		Harrison	Reed	CDM	England	26	72	176	3
206147		Marcus	Antonsson	ST	Sweden	30	80	184	320
206538		Kevin	Stewart	CDM	England	27	73	181	1952
206654	Pablo Marí	Pablo	Marí Villar	CB	Spain	27	87	191	242
207739		Mike	Havenaar	ST	Japan	34	92	195	112836
207926		Andreas	Linde	GK	Sweden	28	93	196	417
208462		Robin	Pröpper	CB	Holland	27	84	192	100634
208769		Will	Vaulks	CDM	England	27	75	180	1797
208965		Ahmed Hassan	Asiri	CB	Saudi Arabia	29	68	185	607
209371		Bram	van Polen	LB	Holland	35	73	179	1914
209637		Marco	Modolo	CB	Italy	32	82	186	205
210236		Michael	Hefele	CB	Germany	30	91	192	14
210532		Mathias	Abero	LB	Uruguay	31	86	184	111708
210917		Marco	Fossati	CM	Italy	28	73	180	206
211209	Pinillos	Daniel	Pinillos González	LB	Spain	28	74	182	1932
211365		Eirik	Hestad	CM	Norway	26	75	183	417
211952		Maximilian	Thiel	LM	Germany	28	81	187	111235
212126		Nikola	Ninković	CF	Serbia	26	72	182	1847
212454		Callum	O'Dowda	LM	Republic of Ireland	26	75	180	1919
212714		Tiago	Casasola	CB	Argentina	25	84	188	110373
213010	Cifu	Miguel Ángel	Garrido Cifuentes	RWB	Spain	30	65	173	573
213559	Fausto Tienza	Fausto Antonio	Tienza Núñez	CM	Spain	31	78	183	469
213729		Sondre Løvseth	Rossbach	GK	Norway	25	80	189	1456
213938		Davide	Biraschi	CB	Italy	27	72	182	110556
214153		Juan	Pérez	ST	Colombia	30	72	178	110147
214338		Édison	Toloza	ST	Colombia	37	75	174	112578
214459		César	Valenzuela	CAM	Chile	29	60	163	111327
214776		Óscar	Benítez	LW	Argentina	28	83	184	111019
214918		Matías	Mier	LM	Uruguay	31	76	181	112523
215149		Lucas	Ceballos	RB	Argentina	34	67	166	110581
215283	César	César Henrique	Martins	CB	Brazil	28	83	192	1438
215751		Gaetano	Monachello	ST	Italy	27	79	184	200
216175		Cican	Stanković	GK	Austria	28	80	186	191
216376	Marco Sangalli	Marco	Sangalli Fuentes	RM	Spain	29	66	179	100831
216479		Armando	Sadiku	ST	Albania	30	80	185	1853
216836	Álvaro Peña	Álvaro	Peña Herrero	CAM	Spain	29	69	178	100831
217870		Giovanni	Di Lorenzo	RB	Italy	28	82	182	1746
219087		Sebastián	Vegas	LB	Chile	24	80	182	1028
219582		Steven	Fortès	CB	Cape Verde Islands	29	85	192	1809
219803		Dimitri	Cavaré	RB	France	26	84	184	1932
220128		Jonatan	Cristaldo	ST	Argentina	32	73	175	101085
220522		Daniel	Hernández	RM	Colombia	28	65	176	1013
220829		Ernesto	Torregrossa	ST	Italy	29	80	184	190
221168		Dawid	Kownacki	ST	Poland	24	75	187	1837
221552		Sivert	Heltne Nilsen	CDM	Norway	29	78	184	1446
221994	Núrio	Núrio Domingos	Matias Fortuna	LB	Angola	26	73	177	670
222404		Mathias	Normann	CM	Norway	25	75	179	1808
222643		Jordan	Silva	CB	Mexico	27	78	190	1878
222926		Adama	Mbengue	LB	Senegal	27	68	178	210
223016		Selim	Ay	CB	Turkey	30	80	184	101033
223313		Hakan	Arslan	CDM	Turkey	33	76	186	101041
223603		Fabian	Bredlow	GK	Germany	26	90	190	171
223755		Marlon	Ritter	CAM	Germany	26	72	173	10030
224144	Diego Aguirre	Diego	Aguirre Parra	LM	Spain	30	62	174	244
224715		Nikita	Chernov	CB	Russia	25	79	188	315
225285		Volkan	Fındıklı	CDM	Turkey	30	84	191	101033
225584		Quentin	Cornette	RM	France	27	75	172	1816
225939		Jann	George	RM	Germany	29	75	176	543
226407		Gastón	Bojanich	CB	Argentina	36	83	191	111019
226686		Max	Christiansen	CDM	Germany	24	82	185	159
226787		Santiago	Rosales	LM	Argentina	26	69	180	101084
227513		Cristian	Arrieta	RB	Colombia	25	69	174	112526
227840		Michael	Ordóñez	CDM	Colombia	31	75	180	112528
227964	Lucas Venuto	Lucas Henrique	Ferreira Venuto	RM	Brazil	26	60	164	256
228332		Hamza	Choudhury	CDM	England	23	64	178	95
228711		Brian	Mansilla	LM	Argentina	24	79	180	101085
228827		Jeando	Fuchs	CDM	France	23	70	174	226
229019		Ahmet	Engin	RM	Germany	24	70	180	1825
229201		Alejandro	Camargo	CM	Argentina	32	68	175	112534
229317		Marko	Bašić	CDM	Croatia	33	82	188	322
229487		Lukas	Klünter	RB	Germany	25	73	184	166
229752		Djibril	Sow	CM	Switzerland	24	77	184	900
230107		Lassana	Coulibaly	CM	Mali	25	67	175	86
230978		Taiwo	Awoniyi	ST	Nigeria	23	74	178	674
231447		Donyell	Malen	LW	Holland	22	78	179	247
231667		Daniel	Cataño	CAM	Colombia	29	75	174	111722
232120		Shaquell Kwame	Moore	RB	United States	24	73	179	110854
232489		Yoshiaki	Komai	RM	Japan	29	64	168	112444
50554524		Jordan	Smith	GK	England	26	75	183	1940
50554799		Dimitri	Oberlin	ST	Switzerland	23	74	182	1746
50557088		Carlos	Embalo	LW	Guinea-Bissau	26	74	175	112168
50560359		Brian	Mansilla	LM	Argentina	24	79	180	101084
50562626		Taiwo	Awoniyi	ST	Nigeria	23	74	178	111560
50566390		Harvey	Barnes	LW	England	23	66	174	95
50568371		Fodé	Ballo Touré	LB	France	24	70	182	69
50570698		Sadık	Çiftpınar	CB	Turkey	28	78	181	326
67296353		David	Meyler	CDM	Republic of Ireland	32	81	191	1800
67324674		Cristiano	Lombardi	LW	Italy	25	75	180	205
67347354		Ilias	Chair	LW	Belgium	23	68	173	361
67308380		Ricky	Holmes	LM	England	34	75	172	1802
67333069		Mariano	Barbieri	LW	Argentina	30	64	163	112531
67351394		Noah	Okafor	LM	Switzerland	21	85	185	896
84121316		Issam	Jebali	ST	Tunisia	29	84	186	112408
51887		Anthony	Le Tallec	ST	France	36	73	184	112276
122574		Steven	Whittaker	RB	Scotland	37	87	185	81
135190		Michael	Liendl	CM	Austria	35	74	175	111822
137359		Christophe	Lepoint	CM	Belgium	36	83	188	100081
139057		Clemente	Rodríguez	LB	Argentina	40	65	167	110406
140445		Steven	MacLean	ST	Scotland	38	79	180	80
146462	Jorge García	Jorge	García Torre	CB	Spain	37	79	184	110066
149572		Paolo	Sammarco	CM	Italy	38	75	183	111657
152828	Ibson	Ibson	Barreto da Silva	CDM	Brazil	37	76	177	111138
159034		Steven	Taylor	CB	England	35	91	186	111766
162512		Scott	Cuthbert	CB	Scotland	34	89	188	361
163201		Michael	McGovern	GK	Northern Ireland	37	89	191	1792
163828		Adam	Le Fondre	ST	England	34	73	175	111400
166862		Jake	Wright	CB	England	35	70	185	1794
170008		Ben	Hamer	GK	England	33	91	192	1939
170448		Jan	Zimmermann	GK	Germany	36	88	190	1824
171033		Mikkel	Andersen	GK	Denmark	32	91	196	1516
171642		Cristian	Álvarez	CB	Chile	41	75	175	110975
172837		Enrico	Alfonso	GK	Italy	33	87	191	190
173401		Andris	Vanins	GK	Latvia	41	85	186	894
176357		John	Mousinho	CB	England	35	79	186	1951
176636		Kamil	Vacek	CM	Czech Republic	34	76	184	272
177491	Eduardo da Silva	Eduardo	Alves da Silva	ST	Croatia	38	72	177	1871
177782		Hakan	Özmert	CDM	Turkey	36	80	183	741
178077		Mehmet	Uslu	LB	Turkey	33	67	176	101037
178520		Antonio	Piccolo	CAM	Italy	33	70	175	111434
179592		George	Boyd	LWB	Scotland	35	79	186	1807
180339		Nils	Schouterden	LM	Belgium	32	65	176	2013
181343		Pierre	Bengtsson	LB	Sweden	33	74	175	819
181917		Luis Miguel	Noriega	CM	Mexico	36	73	172	110145
182617		Danny	Hylton	ST	England	32	71	183	1923
183391		Guy-Roland	Ndy Assembe	GK	Cameroon	35	87	185	1823
183488		Vincenzo	Rennella	ST	France	32	78	188	469
183741		Michael	Zullo	LB	Australia	32	63	170	111400
183885		Kevin	Walker	CM	Sweden	32	72	177	710
184480		Hal	Robson-Kanu	ST	Wales	32	83	183	109
184944	Charles	Charles	Basílio da Silva	CDM	Brazil	36	71	175	741
186117		Jordon	Mutch	CM	England	29	81	184	101112
187150		Will	Buckley	LM	England	31	77	185	4
187701		George	Corral	RB	Mexico	31	70	176	110150
188017		Alberto	Pomini	GK	Italy	40	80	185	1843
188779		Luke	DeVere	CB	Australia	31	88	186	111395
189110		Paul	Hanlon	CB	Scotland	31	70	185	81
189208		Cillian	Sheridan	ST	Republic of Ireland	32	82	193	110745
189922		Georg	Niedermeier	CB	Germany	35	80	190	111397
190438		Fredrik	Semb Berge	CB	Norway	31	82	189	1456
190724		Marvin	Pourié	ST	Germany	30	86	185	1832
191096		Khaleem	Hyland	CDM	Trinidad and Tobago	32	80	183	112389
191333		Kyohei	Noborizato	LM	Japan	30	68	168	111730
191556		Yasushi	Endo	RM	Japan	33	69	168	101147
192320		Gary	Gardner	CM	England	29	82	186	88
192369		Hernán	Bernardello	CDM	Argentina	35	74	174	110396
192687	Roberson	Roberson	de Arruda Alves	ST	Brazil	32	72	184	1478
193195		Nassim	Ben Khalifa	ST	Switzerland	29	79	185	898
193426		Maximilian	Beister	ST	Germany	30	81	180	167
193794	Villalibre	Asier	Villalibre Molina	ST	Spain	23	89	184	448
193891	Borja Viguera	Borja	Viguera Manzanares	ST	Spain	34	76	184	477
196064		Quincy	Antipas	ST	Zimbabwe	37	69	168	112425
196953		Aristote	Nsiala	CB	Congo DR	29	83	193	94
197851		Akihiro	Hayashi	GK	Japan	34	91	195	101150
198354		Jhonathan	Ramis	ST	Uruguay	31	77	178	101088
198731		Elba	Rashani	LW	Kosovo	28	71	181	1456
199284		Dennis	Hediger	CM	Switzerland	34	79	175	1715
199762		Kamil	Drygas	CDM	Poland	29	72	184	110746
200087		Arkadiusz	Piech	ST	Poland	36	72	171	111092
200535		Terry	Antonis	CM	Australia	27	74	180	111397
200797		Loris	Néry	RB	France	30	73	174	1823
200968		Florent	Ogier	CB	France	32	73	183	1815
201401	Campabadal	Eduard	Campabadal Claros	RB	Spain	28	77	183	110831
201841		Noë	Dussenne	CB	Belgium	29	85	191	111560
202073		Eriq	Zavaleta	CB	United States	29	84	185	111651
202162		Jalil	Anibaba	CB	United States	32	77	183	691
202548		Loïc	Puyo	LW	France	32	77	182	1530
202708		Lloyd	Palun	RB	Gabon	32	77	179	1750
203002	Kim Kee Hee	Kee Hee	Kim	CB	Korea Republic	32	78	187	111144
203355		Robert	Hall	RM	England	27	66	173	1951
203863		Luis	Fariña	CAM	Argentina	30	72	177	666
203982		Juan David	Valencia	LB	Colombia	35	77	183	101104
204203	Xavi Molina	Francesc Xavier	Molina Arias	CB	Spain	35	78	182	2013
204468		Tom	Weilandt	RM	Germany	29	73	186	160
204849		Marco	Bueno	ST	Mexico	27	72	182	112584
205085		Wilson	Kamavuaka	CDM	Congo DR	31	81	188	110502
205291		Herman	Stengel	CM	Norway	25	74	180	922
205655		Angus	MacDonald	CB	England	28	70	184	1952
206159		Stefano	Sabelli	RB	Italy	28	74	180	190
206561		Christian	Walton	GK	England	25	75	195	1917
207860		Aaron	Maund	CB	United States	30	84	185	101112
208158		Federico	Andrada	ST	Argentina	27	76	180	111716
208592		Marky	Delgado	CM	United States	26	66	175	111651
208968		Fawaz	Al Qarni	GK	Saudi Arabia	29	88	184	607
209194		Sebastian	Nachreiner	CB	Germany	32	77	187	543
209491		Thomas	Meißner	CB	Germany	30	82	191	1907
84070787		Gary	Madine	ST	England	30	75	191	1794
45548		Tobias	Hysén	ST	Sweden	39	83	180	319
52842	Camacho	Juan Jose	Camacho Barnola	CAM	Spain	41	75	181	110839
131444		Rasmus	Würtz	CM	Denmark	37	72	179	820
135587		Niki	Mäenpää	GK	Finland	36	86	190	1919
137987		Jordan	Lotiès	CB	France	37	83	190	2013
138981	Tiago Gomes	Tiago Henrique	Damil Gomes	LB	Portugal	35	80	177	10019
142998		Cristian	Muñoz	GK	Argentina	44	73	177	112534
150106		Avraam	Papadopoulos	CB	Greece	36	79	186	111395
155886		Stephen	Henderson	GK	Republic of Ireland	33	87	188	14
159278		Agostino	Garofalo	LM	Italy	36	71	178	205
162407		Michael	Jakobsen	CB	Denmark	35	81	185	111393
162993		James	Perch	CDM	England	35	80	180	1949
163640		Benjamin	Lambot	CB	Belgium	34	79	190	1750
164637		Jonas	Brix-Damborg	CDM	Denmark	35	77	183	112425
169623		Peter	Hartley	CB	England	33	89	185	83
170472		Jonathan	Parr	LB	Norway	32	75	182	922
170966		Carlos	Esquivel	RM	Mexico	39	67	172	110145
171900		Fabian	Schönheim	CB	Germany	34	92	191	1831
172648		Siebe	Blondelle	CB	Belgium	35	80	185	2013
173533		David	Button	GK	England	32	87	191	1808
176094		Przemysław	Tytoń	GK	Poland	34	83	195	242
177285		Romain	Vincelot	CM	France	35	71	177	110890
177772		Baye	Djiby Fall	ST	Senegal	36	82	187	112425
177915		Daniele	Capelli	CB	Italy	35	84	186	110912
178414		Kees	Luijckx	CB	Holland	35	86	190	1447
178594		Stefano	Napoleoni	CAM	Italy	35	69	178	101014
180267	Ha Tae Goon	Tae Goon	Ha	ST	Korea Republic	33	80	187	1475
181205		Adam	Hloušek	LB	Czech Republic	32	76	187	1871
181477		Nigel	Boogaard	CB	Australia	34	88	188	111398
182160		Erling	Knudtzon	ST	Norway	32	70	178	299
183407		Sascha	Kotysch	CB	Germany	32	76	188	680
183524		Shane	Lowry	CB	Australia	32	88	185	111399
183686		Mario	de Luna	CB	Mexico	33	80	179	1880
183833		Faneva	Andriatsima	ST	Madagascar	37	74	183	1815
184341		Riccardo	Maniero	ST	Italy	33	75	183	112168
184777		Eduardo	Herrera	ST	Mexico	33	86	187	110144
186122		Byron	Webster	CB	England	34	88	191	97
187447	Shin Hyung Min	Hyung Min	Shin	CDM	Korea Republic	35	77	182	1477
187982		Maciej	Dąbrowski	CB	Poland	34	88	194	110749
188390		Georgios	Gkalitsios	RB	Greece	35	78	183	111560
188871		Libor	Kozák	ST	Czech Republic	32	82	193	1844
189160		Garath	McCleary	RW	Jamaica	34	76	183	1793
189311		Tom	Hateley	CDM	England	31	73	180	111086
189952		Korcan	Çelikay	GK	Turkey	33	86	194	101007
190651		Miguel Ángel	Martínez	CB	Argentina	37	89	187	111022
191090		Tom	Adeyemi	CM	England	29	78	185	94
191192		Davide	Petrucci	CDM	Italy	29	76	184	101037
191655	Kim Seung Gyu	Seung Gyu	Kim	GK	Korea Republic	30	80	187	101146
192001		Carlos	Guzmán	RB	Mexico	27	70	179	1028
192337		Baba	Diawara	ST	Senegal	33	76	185	111393
192567		Matthias	Zimmermann	CDM	Germany	29	76	177	110636
193103		Patrick	Schönfeld	CM	Germany	32	84	186	492
193264		Patrick	Farkas	RB	Austria	28	78	179	191
193688		Niklas	Backman	CB	Sweden	32	80	186	271
193850		Marco	Calderoni	LB	Italy	32	75	183	347
194349		Jonathan	Tinhan	ST	France	32	71	177	294
196948		Boniek	García	CM	Honduras	36	68	175	698
197839	Leonardo	Jose Leonardo	Ribeiro da Silva	CB	Brazil	33	86	188	698
198103		Julian	Leist	CB	Germany	33	85	192	111379
198701		Stefano	Pettinari	ST	Italy	29	79	185	347
199118		Viktor	Prodell	ST	Sweden	33	86	190	700
199692		Hiram	Mier	CB	Mexico	31	73	182	110150
199904		Jesse	Joronen	GK	Finland	28	89	197	819
200236		Gordan	Bunoza	CB	Bosnia and Herzegovina	33	95	197	110765
200629		Antonio	Santurro	GK	Italy	29	86	192	189
200855		George	Baldock	RWB	England	28	67	175	1794
201243		Andrea	La Mantia	ST	Italy	30	85	190	347
201446		George	Moncur	CM	England	27	63	176	1932
202064		Luis Carlos	Arias	LM	Colombia	36	70	167	111723
202304	Im Seon Yeong	Seon Yeong	Im	CM	Korea Republic	33	78	185	1477
202535		Thorsten	Röcher	LM	Austria	30	78	181	111239
202663		Daryl	Horgan	LM	Republic of Ireland	28	70	170	81
203060		Josh	Vela	CAM	England	27	70	185	4
203377		Adnane	Tighadouini	LM	Morocco	28	72	180	573
203902		Adrián	Luna	RM	Uruguay	29	62	169	110145
204138		Ruben	Ligeon	RB	Holland	29	60	175	1914
204297		Anthony	O'Connor	CB	Republic of Ireland	28	77	187	1804
204709		Diego	Rubio	ST	Chile	28	77	179	696
205096		Bjarne	Thoelke	CB	Germany	29	84	191	111821
205386		Guillaume	Hubert	GK	Belgium	27	88	198	231
205551	Álvaro Lemos	Álvaro	Lemos Collazo	RB	Spain	28	76	175	472
205951	Rafinha	Rafael	Scapini de Almeida	RB	Brazil	39	78	184	100325
206463		Jeremy	Dudziak	CDM	Germany	25	70	176	110329
206605		Aias	Aosman	CAM	Syria	26	75	175	503
208047	Kim In Seong	In Seong	Kim	RM	Korea Republic	31	74	180	1473
208502		Josecarlos	Van Rankin	RB	Mexico	28	70	179	1880
209002		Mandé	Sayouba	GK	Côte d'Ivoire	28	82	193	272
209359		Brandon	O'Neill	CDM	Australia	27	78	179	111400
209529		Muamer	Tanković	ST	Sweden	26	74	179	708
209800		Miguel	Herrera	CB	Mexico	32	81	183	110781
210005		Christoph	Martschinko	LB	Austria	27	78	175	256
210241		Daniel	Buballa	LB	Germany	31	80	187	110329
210556	Lucas João	Lucas Eduardo	Santos João	ST	Portugal	27	80	192	1807
211009		Darragh	Lenihan	CB	Republic of Ireland	27	76	187	3
169843		Ben	Turner	CB	England	32	91	193	15015
170592		Sebastian	Schuppan	CB	Germany	35	83	187	110197
170988	Toquero	Gaizka	Toquero Pinedo	RM	Spain	36	78	182	244
171992	Juan Carlos	Juan Carlos	Sánchez Martínez	GK	Spain	34	76	182	477
172470		Nicklas	Pedersen	ST	Denmark	33	84	188	100628
173531		Ben	Amos	GK	England	31	76	193	97
175598	Zhao Xuri	Xuri	Zhao	CDM	China PR	35	84	185	112983
176907		Cristián	Canío	CAM	Chile	40	75	176	112709
177389		Filipe	Morais	RM	Portugal	35	83	175	110890
177877		José Francisco	Torres	CDM	United States	33	65	173	110152
178233		Arnaud	Djoum	CM	Cameroon	32	78	182	80
178461		Janus Mats	Drachmann	CM	Denmark	33	71	179	272
179725		Joris	Sainati	CB	France	32	78	183	217
180808		Ondřej	Kúdela	CDM	Czech Republic	34	78	182	266
181371	Léo Silva	Hugo Leonardo	Silva Serejo	CM	Brazil	35	76	181	101147
182122	Zou Zheng	Zheng	Zou	LB	China PR	33	70	178	111839
182816		Féthi	Harek	CB	Algeria	38	65	175	224
183465		Jack	Rodwell	CM	England	30	78	188	3
183601		Patrick	Fabian	CB	Germany	33	92	193	160
183831		Ande	Dona Ndoh	ST	Cameroon	35	80	186	1813
184176		Gianni	Bruno	ST	Belgium	29	73	180	1750
184747		Chris	Martin	ST	Scotland	32	73	185	91
185018		Jean-Pascal	Fontaine	CAM	France	32	73	177	1738
186950		Fabio	Daprelà	CB	Switzerland	30	76	183	10032
187298		Hugo	Rodríguez	CB	Mexico	31	79	184	110152
187818		Ariel	Borysiuk	CDM	Poland	30	70	180	111091
188383		Pierrick	Valdivia	CM	France	33	77	185	224
188798	Tito	Alberto	Ortiz Moreno	CDM	Spain	36	75	185	110854
188996		Atdhe	Nuhiu	ST	Kosovo	32	85	197	1807
189849		Moestafa	El Kabir	LM	Morocco	32	84	174	101007
190176	Marc Pedraza	Marc	Pedraza Sarto	CDM	Spain	34	73	183	453
190669		Oscar	Jansson	GK	Sweden	30	82	187	705
190982	Alberto Perea	Alberto	Perea Correoso	RM	Spain	30	69	175	1968
191111		Emil	Salomonsson	RWB	Sweden	32	73	182	319
191390		Fabrice	N'Sakala	LB	Congo DR	31	74	178	113142
191842		Hassan	Muath	RB	Saudi Arabia	35	70	180	607
192126		Nabil	Bahoui	LM	Sweden	30	84	188	322
192596	Héctor Rodas	Héctor	Rodas Ramírez	CB	Spain	33	85	191	100831
193157		Jop	van der Linden	CB	Holland	31	74	188	111400
193304		Łukasz	Burliga	RB	Poland	33	78	184	110745
193716		Danny	Wilson	CB	Scotland	29	79	187	694
193889		Marc	Vidal	GK	France	30	83	183	1809
194946	Pacheco	Pedro Miguel	Pacheco de Melo	CM	Canada	37	78	181	1438
196946		Emilio	Izaguirre	LB	Honduras	35	77	177	78
197391		Lars	Vilsvik	RB	Norway	32	73	180	922
198135		Darryl	Lachman	CB	Curaçao	31	75	189	1914
198702		Kristoffer	Barmen	CM	Norway	27	76	190	919
199205	Raphael Martinho	R. Martinho	Alves de Lima	LM	Brazil	33	73	183	1847
199419		Yoann	Court	LM	France	31	70	172	378
199946	Danilo	Danilo	Sousa Campos	CAM	Belgium	31	72	173	741
200346		Michał	Żyro	RM	Poland	28	88	189	110
200574	Kim Won Il	Won Il	Kim	CB	Korea Republic	34	77	185	1478
200806		Richard	Smallwood	CDM	England	30	72	180	3
201114		Bartłomiej	Pawłowski	LM	Poland	28	70	178	110749
201301		Daniel	Høegh	CB	Denmark	30	79	190	1913
201408		Salvatore	D'Elia	LB	Italy	32	76	183	1847
201845		Mehdi	Terki	CDM	Algeria	29	87	187	2007
202102	Yu Hai	Hai	Yu	LB	China PR	34	70	183	112540
202459		Jesper	Drost	CAM	Holland	28	75	175	1915
202662		Steven	Lewerenz	LM	Germany	30	76	176	576
202778		Ertaç	Özbir	GK	Turkey	31	78	188	113259
203164		Maik	Kegel	CM	Germany	31	82	183	110169
203528		Alhassane	Bangoura	RM	Guinea	29	72	175	480
203933		Hervé	Lybohy	CB	Côte d'Ivoire	38	85	186	224
204260		Florian	Raspentino	ST	France	32	73	179	2013
204475	Lobato	Cristian	Lobato Villegas	RM	Spain	32	66	174	696
204922		Andreas	Leitner	GK	Austria	27	72	184	111821
205068	Cristiano	Cristiano	Pereira Figueiredo	GK	Portugal	30	88	194	665
205334		Anthony	Koura	ST	Burkina Faso	28	70	173	1823
205518		Yohan	Croizet	CM	France	29	83	178	696
205874		Ferhat	Kaplan	GK	Turkey	32	79	190	741
206315		Omri	Ben-Harush	LB	Israel	31	79	185	2007
207502		Ruben	Kristiansen	LB	Norway	33	74	183	919
207872		Jordan	Botaka	RW	Congo DR	28	81	182	680
208324		Pierre-Yves	Polomat	LB	France	27	77	183	1819
208602		Yoëll	van Nieff	CDM	Holland	28	82	183	100634
208835		Youssouf	M'Changama	CM	Comoros	30	69	173	1805
209316		Thom	Haye	CM	Holland	26	74	177	347
209512		Igor	Stefanović	GK	Serbia	34	86	192	1867
209722	Marquinhos Pedroso	Marcos	Garbellotto Pedroso	LB	Brazil	27	77	178	695
209890		Yroundu	Musavu-King	CB	Gabon	29	83	186	55
210140		Abdullah	Al Mayoof	GK	Saudi Arabia	34	96	189	605
210401		Christos	Donis	CM	Greece	26	75	184	1884
210557	Nuno Campos	Nuno Vieira	Campos	RB	Portugal	28	70	173	1891
211067		Dario	Del Fabro	CB	Italy	26	81	189	111434
211243	Nono	David	González Plata	ST	Spain	30	63	170	100831
211437		Leonardo	Bertone	CM	Switzerland	27	73	179	900
211746		Rico	Benatelli	CM	Germany	29	83	181	503
211911		Royal-Dominique	Fennell	CDM	United States	32	82	183	550
212075		Andrew	Nabbout	ST	Australia	28	83	178	111575
212321		Jonas	Meffert	CDM	Germany	26	76	186	576
212457		Omar	Vásquez	CAM	Colombia	31	63	165	112578
212803		Zach	Clough	CAM	England	26	64	170	14
213354		Timofey	Margasov	RB	Russia	29	76	186	100765
213694		Kenji	Gorré	LW	Holland	26	71	179	1891
184290		Tomáš	Pekhart	ST	Czech Republic	32	93	194	472
184763		Yohann	Thuram	GK	France	32	90	188	1738
186270		Gevorg	Ghazaryan	RW	Armenia	33	73	177	518
186998		William	Yarbrough	GK	United States	32	75	188	110781
187550	Eduardo Neto	Eduardo	da Silva Neto	CDM	Brazil	32	76	185	112092
188289		Emmanuel	Rivière	ST	France	31	76	182	68
188538		Vincent	Sasso	CB	France	30	82	190	1889
189141		Robin	Söder	ST	Sweden	30	71	177	319
189192		Andrea	Mazzarani	CAM	Italy	31	75	180	110373
189885		Craig	Noone	RM	England	33	69	177	4
189944		Lamine	Gassama	RB	Senegal	31	74	181	101026
190640		Victor	Pálsson	CB	Iceland	30	84	186	894
190826		Marc	Hornschuh	CB	Germany	30	82	188	110329
191135		Lago Júnior	Wakalible	RM	Côte d'Ivoire	30	75	182	453
191378		Shu	Kurata	LM	Japan	32	68	172	112093
191834		Nasser	Al Shamrani	ST	Saudi Arabia	37	70	175	111674
192241		Rhyan	Grant	RB	Australia	30	74	174	111400
192439		Murray	Davidson	CM	Scotland	33	69	183	100804
192617		Timo	Perthel	LB	Germany	32	83	185	160
193272		Samuel	Şahin-Radlinger	GK	Austria	28	83	196	919
193780		Izet	Hajrović	RM	Bosnia and Herzegovina	30	72	177	211
194063		Ján	Greguš	CM	Slovakia	30	79	189	819
195262		Adriano	Grimaldi	ST	Germany	30	90	188	33
197376		Clemens	Fandrich	CM	Germany	30	67	177	506
197961		Mateusz	Możdżeń	CDM	Poland	30	76	180	111083
198624		Joe	Shaughnessy	CB	Republic of Ireland	29	69	183	100804
198971		Bennard	Kumordzi	CB	Ghana	36	79	187	100081
199267		Steven	Ruprecht	CB	Germany	34	92	196	110169
199800		Zakarya	Bergdich	LB	Morocco	32	69	178	1889
200067		Zakaria	Diallo	CB	France	34	90	194	111139
200538		Liassine	Cadamuro	CB	Algeria	33	81	188	15019
200700		Alexander	Merkel	CAM	Kazakhstan	29	67	177	100634
200983		Franco	Signorelli	CM	Venezuela	30	68	178	110373
201359		Mohammed	Abu	CDM	Ghana	29	68	170	920
201681		César	Quintero	CM	Colombia	32	74	176	112992
201955		Massadio	Haïdara	LB	France	28	76	179	64
202095		Viktor	Klonaridis	RM	Belgium	29	76	180	278
202404	Daniel Amora	Daniel Lopes	Amora	CM	Brazil	33	78	185	112392
202630		Anton	Kochenkov	GK	Russia	34	83	195	100765
202896		Marco	Ureña	ST	Costa Rica	31	70	179	112996
203069		Ryan	Tunnicliffe	CM	England	28	80	183	97
203853		Maximilian	Sax	RM	Austria	28	70	178	256
204071	Gerard Badía	Gerard	Badía Cortés	RM	Spain	31	72	175	111086
204442		Dimitri	Mohamed	CDM	France	32	73	182	111560
204489		Stanley	Elbers	RM	Holland	29	66	172	1914
205044		Sebastian	Maier	CAM	Germany	27	68	179	160
205156	Choe Yeong Joon	Yeong Joon	Choe	CM	Korea Republic	29	73	176	111588
205232		Dylan	McGeouch	CM	Scotland	28	69	178	106
205578		Pierre-Yves	Ngawa	RB	Belgium	29	75	187	199
206161		Achraf	Lazaar	LB	Morocco	29	80	184	13
206630		Darren	Mattocks	ST	Jamaica	30	70	179	688
208019		Denys	Bain	CB	France	28	74	181	1738
208422		Ryan	Sanusi	CM	Belgium	29	75	181	1805
208637		Marc	Lais	CDM	Germany	30	69	182	543
209018	Baraka	Andrés	Fernandes Gonçalves	CDM	Brazil	35	83	181	112990
209317		Panagiotis	Vlachodimos	LM	Greece	29	74	184	224
209608		Darío	Burbano	LM	Colombia	33	63	168	101104
209988		Levent	Ayçiçek	LM	Germany	27	67	169	165
210429		Bright	Addae	CM	Ghana	28	87	184	1847
210644		Emiliano	Marcondes	ST	Denmark	26	75	183	1925
211056	Luis Valcarce	Luis	Valcarce Vidal	LB	Spain	28	70	175	477
211234		Enzo	Fernández	CAM	France	26	78	184	110066
211514		Reece	James	LB	England	27	71	169	106
211857	Alex Muñoz	Alejandro José	Muñoz Miguel	CB	Spain	27	74	185	244
211966		Mahlon	Romeo	RB	Antigua and Barbuda	25	73	178	97
212088		Mohamed	Abdul Shafy	LB	Egypt	36	71	170	112387
212242		Robert	Andrich	CM	Germany	26	83	189	111235
212443		Simone	Pasa	CM	Italy	27	85	184	111993
212932		Yuji	Ono	CAM	Japan	28	69	170	113160
213614		Samuel	Gustafson	CM	Sweden	26	79	187	206
213841		Victor	Lekhal	CDM	France	27	72	187	1738
213985		Édinson	Palomino	LM	Colombia	35	60	170	111723
214187		Carlos	Bejarano	GK	Equatorial Guinea	36	83	184	101099
214341		Jonathan	Ávila	CB	Colombia	29	88	189	101101
214406		Albert	Acevedo	CB	Chile	38	74	176	112116
214493		Jorge	Aguirre	CAM	Colombia	34	68	169	101104
214690		Óscar	Hernández	CM	Chile	27	71	177	112533
214767		Luciano	Balbi	LB	Argentina	32	72	172	469
214948		Sebastian	Schonlau	CB	Germany	27	77	185	10030
215139		Emanuel	Olivera	CB	Argentina	31	73	180	110406
215208		Eugenio	Isnaldo	LM	Argentina	27	72	180	111710
215598		Shani	Tarashaj	CAM	Switzerland	26	82	176	322
216138		Mariano	Arini	CM	Italy	34	75	178	111434
216568	Mario Barco	Mario	Barco Vilar	ST	Spain	28	78	184	1968
219090		Raúl	Osorio	CB	Chile	26	68	180	112116
219523		Jonás	Aguirre	LM	Argentina	29	69	175	111022
219861		Cristian	Flórez	LB	Colombia	26	82	180	112579
220152		Yves	Baraye	LW	Senegal	29	69	177	50
220448		Idriss	Mhirsi	CAM	Tunisia	27	70	177	111273
221312		Alexis	Pérez	CB	Colombia	27	73	181	110150
221680		Nick	Hagglund	CB	United States	28	87	185	111651
221924		Kasper	Fisker	CM	Denmark	33	71	170	269
222497		Yerko	Leiva	CAM	Chile	23	63	166	15029
223195		Orhan	Ovacıklı	RB	Turkey	32	71	179	101037
223615		Christian	Chimino	RB	Argentina	33	72	178	111711
223921		Dimitrios	Kolovos	CAM	Greece	28	74	184	1907
193081		Matthieu	Saunier	CB	France	31	75	182	217
193312		Sebastian	Mielitz	GK	Germany	32	85	190	1447
193482	Zequinha	José Egas	dos Santos Branco	RW	Portugal	34	75	183	665
193864	Bruno Monteiro	Bruno André	Freitas Monteiro	CM	Portugal	36	73	178	112516
194726		Jakob	Ahlmann	LB	Denmark	30	70	179	820
197226		Sören	Bertram	LW	Germany	30	82	185	506
197981		Simon	Makienok	ST	Denmark	30	94	201	1903
198147		Mark	van der Maarel	LB	Holland	31	74	177	1903
198964	Tyronne	Tyronne Gustavo	Del Pino Ramos	RM	Spain	30	72	180	260
199384		Fabian	Koch	RB	Austria	32	68	180	209
199721		Mathieu	Gorgelin	GK	France	31	83	187	66
200235		Mitchell	te Vrede	ST	Holland	30	83	193	1904
200532		Kristof	D'Haene	LB	Belgium	31	63	168	100081
200698		Nick	Marsman	GK	Holland	30	88	188	1903
200912		Mihai	Răduţ	LM	Romania	31	65	178	873
201271		Jakob	Ankersen	LM	Denmark	30	73	182	271
201523		Mathieu	Deplagne	RB	France	29	78	183	294
202043		Karl	Holmberg	ST	Sweden	28	73	185	702
202171		Josh	Williams	CB	United States	33	87	188	687
202589	Javi Hernández	Javier	Hernández González	CAM	Spain	32	77	184	110747
202770		Connor	Ripley	GK	England	28	96	191	110313
202968	Yun Il Lok	Il Lok	Yun	LM	Korea Republic	29	65	178	101151
203283		Amaury	Escoto	ST	Mexico	28	70	180	1882
203848		Richard	Windbichler	CDM	Austria	30	72	183	1473
204131		Kevin	Escamilla	CDM	Mexico	27	76	179	1881
204427		Shawn	Parker	ST	Germany	28	78	181	165
204616		Alberto	Almici	RB	Italy	28	75	179	206
205048		Korbinian	Vollmann	LM	Germany	27	70	174	110178
205185	Ilori	Tiago	Almeida Ilori	CB	Portugal	28	80	190	1793
205455		André	Weis	GK	Germany	31	84	189	543
205535		Troels	Kløve	LM	Denmark	30	76	177	272
206104		Serdar	Dursun	ST	Germany	29	80	190	110502
207542	Lee Seul Chan	Seul Chan	Lee	LB	Korea Republic	27	65	172	1475
207916		Lasse	Vigen Christensen	CM	Denmark	26	80	180	269
208432		Tom	Pettersson	CB	Sweden	31	83	190	113173
208681		Jordy	Croux	RW	Belgium	27	70	172	1907
209039		David	Moberg Karlsson	CF	Sweden	27	76	179	702
209485		Alexander	Mühling	CM	Germany	28	84	186	576
209643		Milan	Vilotić	CB	Serbia	34	84	190	898
210000		Maciej	Gajos	CDM	Poland	30	65	174	873
210209		Muhannad	Asiri	ST	Saudi Arabia	34	77	186	112387
210492		Abdulaziz	Al Jebreen	CDM	Saudi Arabia	31	73	179	112139
210832		Mattijs	Branderhorst	GK	Holland	27	87	192	1907
211212		Abdelkader	Oueslati	CAM	Tunisia	29	75	182	112390
211428	Etxeberría	Markel	Etxeberría Mendiola	RB	Spain	26	72	180	477
211595		George	Evans	CDM	England	26	76	184	91
211870		Dimitrij	Nazarov	ST	Azerbaijan	31	73	184	506
212014	Ricardo Nunes	Ricardo	Nuno dos Santos	LB	South Africa	35	73	180	110746
212158		Osayamen	Osawe	ST	Nigeria	27	79	181	111239
212540		Scott	Caldwell	CDM	United States	30	68	173	691
212958		Kofi	Opare	CB	United States	30	86	188	688
213618		Diego	Vallejos	ST	Chile	31	74	173	111328
213917	Fábio Cardoso	Fábio Rafael	Rodrigues Cardoso	CB	Portugal	27	81	187	1438
214014		Carlos	Lizarazo	CAM	Colombia	30	67	171	101099
214194		Andrés	Correa	LB	Colombia	27	75	175	112523
214356		Jerson	Malagón	CB	Colombia	28	77	189	112527
214412		Paulo	Magalhães	RB	Chile	31	74	177	112533
214575		Luis	Payares	CB	Colombia	31	78	185	111722
214721		Federico	Falcone	ST	Argentina	31	79	188	1898
214854		Rubén	Farfán	RM	Chile	29	69	176	112709
215092		Mauricio	Zenteno	CB	Chile	37	76	174	112531
215289		Fernando	Telechea	ST	Argentina	39	79	180	111707
215647	Juanma	Juan Manuel	Delgado Lloria	ST	Spain	30	79	189	112448
216102	André Claro	André Filipe	Claro de Jesus	LM	Portugal	30	75	183	1898
216467		Jack	Payne	CAM	England	26	60	169	1804
216860		Václav	Černý	RW	Czech Republic	23	65	182	245
217649		Shuichi	Gonda	GK	Japan	32	83	187	113160
219680		Cédric	Hountondji	CB	Benin	27	81	195	112828
219709	Saúl	Saúl	García Cabrero	LB	Spain	26	71	183	242
220126		Modou	Diagne	CB	Senegal	27	74	188	1823
220714		Philip	Billing	CDM	Denmark	25	80	197	1939
221376		Ante	Puljić	CB	Croatia	33	79	187	112389
221756	Lee Gwang Hyeok	Gwang Hyeok	Lee	LW	Korea Republic	25	63	169	1474
221926		Musa	Araz	CAM	Switzerland	27	69	173	101033
222734	Kang Sang Woo	Sang Woo	Kang	LB	Korea Republic	27	62	176	1474
223132		Kadir	Keleş	LB	Turkey	33	67	174	111340
223272		Ivan	Močinić	CDM	Croatia	28	72	180	254
223710		Vedat	Muriqi	ST	Kosovo	27	86	194	101037
223746		Greg	Stewart	RM	Scotland	31	73	178	82
224013	Sergi Canós	Sergi	Canós Tenés	LW	Spain	24	75	175	1925
224315		Luca	Paganini	RM	Italy	28	70	182	111657
224436		Sauli	Väisänen	CB	Finland	27	79	191	110734
224648	Li Lei	Lei	Li	LB	China PR	29	66	183	111768
225034		Michele	Somma	CB	Italy	26	77	182	242
225434		Sebastián	Salazar	CDM	Colombia	25	79	180	101104
225666		Dominik	Nagy	LM	Hungary	26	69	174	1871
226408		Fernando	Brandán	LM	Argentina	31	63	168	111713
226720	Witi	Witiness	João Quembo	LW	Mozambique	24	64	173	1891
227562		Lukáš	Haraslín	RM	Slovakia	25	71	182	111091
227919		Luciano	Ospina	CB	Colombia	30	80	190	112579
228209		Siphelele	Ntshangase	CAM	South Africa	28	65	172	110929
228505		Patrick	Pentz	GK	Austria	24	81	182	256
228980		Mickaël	Tirpan	RB	Belgium	27	74	179	2007
229325		Oscar	Linnér	GK	Sweden	24	82	198	433
229384		Nico	Hammann	CB	Germany	33	79	185	110588
209758		Ventura	Alvarado	CB	United States	28	76	181	101121
210004		Benedikt	Saller	RB	Germany	28	70	178	543
210147		Mansour	Al Harbi	LB	Saudi Arabia	33	75	175	607
210476		Markus	Kuster	GK	Austria	27	82	194	1785
210826		Luis Felipe	Gallegos	LM	Chile	29	73	173	101121
211037	De La Hoz	César	De La Hoz López	CM	Spain	29	70	179	1861
211228		Matthew	Palmer	CM	England	26	79	179	1797
211409	Nixon	Nixon Darlanio	Reis Cardoso	ST	Brazil	29	71	176	1439
211844		Nicolas	Gavory	LB	France	26	76	182	1903
212000		Erich	Berko	LW	Germany	26	82	181	503
212120		Michael	Heylen	CB	Belgium	27	82	187	15005
212459		Michele	Cavion	CM	Italy	26	74	180	1847
213105		Lee	Evans	CM	Wales	27	88	186	1917
213644		Andreas	Geipl	CDM	Germany	29	73	178	543
213948		Duane	Holmes	RM	United States	26	65	173	91
214094		César	Arias	ST	Colombia	33	77	175	112579
214320		Felipe	Flores	LW	Chile	34	70	177	112533
214380		Yonni	Hinestroza	RB	Colombia	36	68	169	101106
214441		Alejandro	Contreras	CB	Chile	28	80	184	15029
214611		Jhon Freddy	Pajoy	LM	Colombia	32	76	176	113222
214765		Marcelo	Herrera	CB	Argentina	29	78	185	110395
214942	Héctor	Héctor	Hernández Marrero	ST	Spain	25	71	173	573
214998		Mauro	Bogado	CDM	Argentina	36	68	170	111711
215335		Maximiliano	Núñez	RM	Argentina	34	69	170	112992
215786		Yann	Boé-Kane	CDM	France	30	76	185	614
216271		Joost	van Aken	CB	Holland	27	75	194	1807
216627		Kieffer	Moore	ST	England	28	83	195	1932
218662	Asdrúbal	Asdrúbal	Padrón Hernández	ST	Spain	30	68	173	100831
219244		David	von Ballmoos	GK	Switzerland	26	90	192	900
219684		Sam	Nicholson	LM	Scotland	26	71	175	694
219725		Stefano	Minelli	GK	Italy	27	76	184	190
220166	Avto	Avtandil	Ebralidze	LW	Georgia	29	70	178	518
220805		Alex	Castro	LM	Colombia	27	68	170	112579
221477	Song Seung Min	Seung Min	Song	ST	Korea Republic	29	77	187	1474
221841		Adam	Armstrong	LM	England	24	69	172	3
221972	Sun Jie	Jie	Sun	CB	China PR	29	88	191	111769
222461	Rochinha	Diogo Filipe	Rocha Costa	LM	Portugal	26	68	169	1898
222671	Everaldo	Everaldo	Stum	ST	Brazil	30	76	181	110150
222881	Auro	Auro Alvaro	da Cruz Junior	RB	Brazil	25	64	168	111651
223696		Mohamed	Hamdaoui	LM	Holland	28	65	170	635
223736		Rajko	Rotman	CDM	Slovenia	32	80	187	101020
224250		Damian	Roßbach	LB	Germany	28	83	187	1832
224330		Nicolás	Stefanelli	ST	Argentina	27	71	166	433
224504		Israel	Poblete	CAM	Chile	26	70	171	110977
224986	Jesús Valentín	Jesús Miguel	Valentín Rodríguez	CB	Spain	29	79	185	1867
225150		Alexis	Araujo	RM	Portugal	24	53	159	110316
225455		Víctor	Dávila	ST	Chile	23	72	173	101121
225908		Reece	Oxford	CB	England	22	78	191	19
226535		Sam	Johnson	ST	Liberia	28	74	178	920
226793		Matt	Polster	RB	United States	28	77	183	693
227898		Boban	Jović	RB	Slovenia	30	69	178	742
228171		Christopher	Ikonomidis	LM	Australia	26	73	180	111399
228415		Leonardo	Godoy	RB	Argentina	26	70	180	112670
228668		Matty	Taylor	ST	England	31	72	176	1919
229010		Selim	Amallah	CAM	Belgium	24	75	185	111560
229280		Kévin	Hoggas	CAM	France	29	77	183	1750
229381		Pablo	Rojas	RM	Colombia	29	72	167	112903
229640		Mads	Pedersen	LWB	Denmark	24	74	178	1788
229879		Dave	Romney	CB	United States	28	79	188	697
230693	Macedo	Wanderson	de Macedo Costa	ST	Brazil	29	80	185	1475
231209		Ronaldo	Tavera	CDM	Colombia	26	67	174	112528
231596		José	Contreras	GK	Venezuela	26	86	186	212
231950		Vedran	Jugović	CM	Croatia	32	69	178	1475
232293		Victor	Osimhen	ST	Nigeria	22	78	185	670
232608		Hiroyuki	Abe	CAM	Japan	32	69	170	111730
232770		Santiago	Colombatto	CM	Argentina	24	71	176	206
233074	Borja Domínguez	Borja	Domínguez Domínguez	CM	Spain	29	81	187	100831
233512		Alin	Toşca	CB	Romania	29	81	181	393
234060		Yangel	Herrera	CDM	Venezuela	23	77	182	112828
234164	Fábio China	Fábio Diogo	Agrela Ferreira	LB	Portugal	29	68	178	1893
234492		José Luis	Gamonal	GK	Chile	31	75	180	112709
234832		Kristian	Pedersen	LB	Denmark	27	83	191	88
234893		Giuseppe	Mastinu	CAM	Italy	29	77	175	110741
235521	Carbonell	Àlex	Carbonell Vallés	CM	Spain	23	75	182	110854
236447		Ronaldo	Peña	ST	Venezuela	24	78	183	698
237039		Lazaros	Lamprou	RW	Greece	23	76	183	393
237520		Mohamed Mady	Camara	CDM	Guinea	24	75	182	280
237819		Nicolás	Domínguez	CDM	Argentina	23	73	179	101088
238504		Amine	Bassi	CAM	Morocco	23	72	173	1823
238857	Wilson Manafá	Wilson Miguéis	Manafá Jancó	LB	Portugal	27	69	174	10031
239073		Christopher	Antwi-Adjej	LM	Germany	27	67	173	10030
239465		Martin	Chrien	CM	Slovakia	25	72	182	1438
239752		Steffen	Schäfer	CB	Germany	27	82	189	110588
240082		Mikhail	Lysov	LB	Russia	23	72	182	100765
240351		Samuel	Moutoussamy	CM	France	24	72	176	71
240988		Denis	Vavro	CB	Slovakia	25	76	190	819
241811	Sergio Gómez	Sergio	Gómez Martín	CAM	Spain	20	68	171	22
242816	Riqui Puig	Ricard	Puig Martí	CM	Spain	21	66	169	241
243984		Ahmed	Hammoudan	RM	Morocco	30	67	176	112392
245124		Djordje	Jovanovic	ST	Serbia	22	78	185	2007
50501491		Ben	Turner	CB	England	32	91	193	1940
50511185		Harmeet	Singh	CM	Norway	30	72	180	100325
50516395		Chris	Martin	ST	Scotland	32	73	185	1952
50520427		Luke	DeVere	CB	Australia	31	88	186	111766
211189		Biagio	Meccariello	CB	Italy	30	85	187	347
211363		Tom	Lockyer	CB	Wales	26	72	180	1962
211848		Ben	Zolinski	RM	Germany	29	78	181	10030
212035		Jérémie	Bela	ST	France	28	71	173	1854
212169		Julian	Michel	CM	France	29	65	179	2007
212440	Jung Seok Hwa	Seok Hwa	Jung	CAM	Korea Republic	30	63	171	112115
212664		Alexander	Kolev	ST	Bulgaria	28	81	191	111082
213027		Matt	Preston	CB	England	26	78	183	1940
213375		Antonio	Vacca	CM	Italy	31	67	172	50
213839		Baptiste	Guillaume	ST	Belgium	26	77	189	224
213951	Helton Leite	Helton Brant	Aleixo Leite	GK	Brazil	30	93	196	1898
214151		Juan	Mahecha	CM	Colombia	34	70	176	112523
214371		Juan	Arboleda	RB	Colombia	32	70	182	111722
214401		Héctor	Urrego	CB	Colombia	28	77	183	101104
214488		Jhonny	Vásquez	CDM	Colombia	34	76	177	112578
214590		Johan	Fuentes	CM	Chile	37	75	169	112531
214937		Lucas	Villalba	LB	Argentina	26	73	177	111707
215020		Juan Ignacio	Cavallaro	LM	Argentina	27	68	172	111715
215143		Juan Ignacio	Sills	CDM	Argentina	34	70	180	110396
215592		Wout	Droste	RB	Holland	32	76	180	100634
216068		Fabrizio	Poli	CB	Italy	32	75	185	112409
216295		Tuur	Dierckx	RM	Belgium	26	68	171	110913
216482		Bryan	Pelé	LM	France	29	65	169	294
217606		Emmanuel	Boateng	LM	Ghana	27	70	167	697
219177		Jorge	Grant	LM	England	26	72	178	1923
219487		Filippo	De Col	RB	Italy	27	83	184	110741
219909		Joseph	Molangoane	RM	South Africa	33	65	162	110929
220201		Ivan	Ledezma	CAM	Chile	26	68	170	101097
220720		Andrea	Fulignati	GK	Italy	26	88	188	1746
220969		Niclas	Eliasson	LM	Sweden	25	72	178	1919
221539	Carrillo	José Ángel	Carrillo Casamayor	ST	Spain	27	80	190	1968
221854	Wu Xinghan	Xinghan	Wu	LW	China PR	28	68	183	111724
222306	Ding Haifeng	Haifeng	Ding	LWB	China PR	30	71	182	112429
222572	Iván Villar	Iván	Villar Martínez	GK	Spain	24	79	189	450
223122		Caner	Osmanpaşa	CB	Turkey	33	77	182	111340
223426		Benedikt	Zech	CB	Austria	30	80	186	15009
223839		Vedat	Bora	RM	Turkey	26	68	175	101033
223957		Lucas	Pirard	GK	Belgium	26	91	191	680
224271		Thomas	Goiginger	RW	Austria	28	69	181	252
224344		Andrés	Vilches	ST	Chile	29	80	180	110975
224524		Esteban	Burgos	CB	Argentina	29	80	191	100831
225200	Kike Barja	Enrique	Barja Afonso	RM	Spain	24	69	178	479
225606		Nicola	Citro	ST	Italy	32	60	172	205
226085	Léo Jardim	Leonardo	Cesar Jardim	GK	Brazil	26	74	188	744
226668		Nicolás	Mazzola	ST	Argentina	31	89	188	112116
227511		Nicolai	Rapp	CB	Germany	24	82	186	506
227617		Lamin	Jallow	ST	Gambia	27	80	185	110373
227936		Robert	Mazáň	LB	Slovakia	27	75	180	450
228378		Antonino	La Gumina	ST	Italy	25	78	182	1746
228508		Fabian	Kalig	CB	Germany	28	78	180	506
228887		Tomislav	Mrčela	CB	Australia	30	88	195	111399
229023		Patrick	Eze	ST	Nigeria	28	78	186	101033
229348		Antonee	Robinson	LB	United States	23	64	181	1917
229467		Alvaro	Cesped	CDM	Chile	29	69	174	112535
229659		Bryan	Heynen	CM	Belgium	24	67	182	673
229803		Emanuel	Taffertshofer	CDM	Germany	26	74	174	110178
229966	Nando	Fernando	García Puchades	RM	Spain	27	68	178	226
231205		Yanni	Regäsel	RB	Germany	25	72	176	1825
231428		Filippo	Bandinelli	CM	Italy	26	74	180	112026
232062		Daniel	Sundgren	RWB	Sweden	30	69	179	433
232209	José Kanté	José	Kanté Martínez	ST	Guinea	30	76	184	1871
232388	Vitor Costa	Vitor Costa	de Brito	LB	Brazil	27	74	182	666
232728		Yutaka	Yoshida	LB	Japan	31	69	168	113160
232882		Kento	Misao	CDM	Japan	25	73	181	101147
233372		Bautista	Merlini	LM	Argentina	26	62	165	1013
233840		Eboue	Kouassi	CDM	Côte d'Ivoire	23	70	185	78
234151	David Carmona	David	Carmona Sierra	RB	Spain	24	72	176	1968
234413		Felix	Müller	LM	Germany	28	71	178	110178
234789		Yan Brice	Eteki	CDM	Cameroon	23	67	178	1861
234948		Jean Thierry	Lazare Amani	CM	Côte d'Ivoire	23	64	172	2013
235561		Kévin	Fortuné	ST	France	32	80	182	64
236405	Lasure	Daniel	Lasure Briz	LB	Spain	27	70	176	244
237226		Jesper	Nyholm	CB	Sweden	27	74	183	433
237448		Antonio Mlinar	Delamea	CB	Slovenia	30	73	183	691
237750		Ken	Tokura	ST	Japan	35	80	187	112444
238497		Marvin	Spielmann	LM	Switzerland	25	73	182	1715
238692		Klaus	Gjasula	CDM	Albania	31	84	192	10030
238981		Tobias	Schwede	LM	Germany	27	68	181	10030
239136		Nicolas	Cozza	CB	France	22	72	178	70
239498		Bryan	Henning	CDM	Germany	26	72	172	2045
239808		Michal	Sáček	CM	Czech Republic	24	70	180	267
240133		Malik	Tchokounté	ST	France	32	90	191	210
240631		Andrea	Settembrini	CM	Italy	29	67	176	111993
241804		Omid	Noorafkan	CDM	Iran	24	78	182	670
242544		Andriy	Bogdanov	CM	Ukraine	31	75	184	111082
243551		Ali	Gholizadeh	RM	Iran	25	69	176	670
244309		Teddy	Teuma	CM	France	27	73	176	111273
50481754		Avraam	Papadopoulos	CB	Greece	36	79	186	280
50502614		Carlos	Esquivel	RM	Mexico	39	67	172	1882
50513808		Erling	Knudtzon	ST	Norway	32	70	178	417
50517765		Jordon	Mutch	CM	England	29	81	184	111588
50520519		Libor	Kozák	ST	Czech Republic	32	82	193	267
50522759		Emil	Salomonsson	RWB	Sweden	32	73	182	113157
50524265		Timo	Perthel	LB	Germany	32	83	185	110588
50529609		Mateusz	Możdżeń	CDM	Poland	30	76	180	111089
50531994		Michał	Żyro	RM	Poland	28	88	189	110746
213868		Jean-Charles	Castelletto	CB	Cameroon	26	78	186	378
214091	Alcatraz	Gilberto	García	RB	Colombia	34	75	180	111723
214271		Alvaro	Salazar	GK	Chile	28	79	185	112534
214390		Henry	Rojas	CM	Colombia	34	74	177	101105
214416		Isaac	Díaz	ST	Chile	31	84	181	15029
214630		Augusto	Barrios	RB	Chile	30	78	183	112533
214911		Alfonso	Parot	LB	Chile	31	81	181	110580
214969		Fernando	Godoy	CDM	Argentina	31	71	174	111707
215528		Khalid	Karami	RB	Morocco	31	73	181	1909
215593		Dawid	Kort	CAM	Poland	26	65	176	1873
216048		Gabriel	Vargas	ST	Chile	37	74	173	112655
216289		Mark	Diemers	CAM	Holland	27	70	175	634
216710		Robinson	Aponzá	CAM	Colombia	32	70	174	112903
219170		Raúl	Becerra	ST	Argentina	33	87	187	112531
219566		Fred	Friday	ST	Nigeria	26	90	187	1906
219952		Liam	Henderson	CM	Scotland	25	67	183	206
220357		Jamal	Bajandouh	CDM	Saudi Arabia	28	85	186	607
220940		Cameron	Brannagan	CM	England	25	71	180	1951
221473		Francisco	Arancibia	RW	Chile	24	62	170	15029
221675		Carlos	Mosquera	RW	Colombia	30	66	164	112527
221855	Liu Binbin	Binbin	Liu	RM	China PR	28	72	172	111724
222346	Shi Ke	Ke	Shi	CB	China PR	28	80	184	112540
222493		Marvin	Friedrich	CB	Germany	25	78	193	1831
222830		Fausto	Grillo	CB	Argentina	28	78	181	101026
223214		Kevin	Friesenbichler	ST	Austria	27	75	188	256
223501		Adrían	Spörle	LB	Argentina	26	76	182	110404
223726		Erkan	Kaş	LB	Turkey	29	75	183	113259
223934		Barış	Yardımcı	RB	Turkey	28	71	176	742
224251		Robin	Zentner	GK	Germany	26	96	194	169
224424		Richard	Neudecker	LM	Germany	24	63	174	110329
224812		Sergiy	Bolbat	LM	Ukraine	28	66	175	101059
225187		Pelle	van Amersfoort	CAM	Holland	25	77	193	1913
225664		Miguel	Ibarra	RM	United States	31	65	166	111138
226050		Cedric	Teuchert	ST	Germany	24	80	182	34
226652	Park Yong Woo	Yong Woo	Park	CM	Korea Republic	27	80	186	1473
227230	Eber Bessa	Eber Henrique	Ferreira de Bessa	CM	Brazil	29	72	167	665
227772		Gastón	Giménez	CM	Argentina	30	88	188	101088
228349		Mërgim	Vojvoda	RB	Kosovo	26	79	186	111560
228600	Javi Jiménez	Javier	Jiménez Moreno	LB	Spain	25	70	173	15019
228897		Mickaël	Alphonse	RB	France	32	75	182	110569
229171		Kenny Prince	Redondo	LW	Germany	26	68	181	1831
229466		Cris	Martinez	LW	Paraguay	28	70	170	110144
229605		Callum	Connolly	CDM	England	23	70	183	1917
229722		Kevin	Medel	CDM	Chile	25	66	171	112584
230117	Jhonatan	Jhonatan	Luiz Siqueira	GK	Brazil	30	79	189	1900
231056		Stefan	Marinović	GK	New Zealand	29	95	192	101112
231360		Jalil	Elías	CDM	Argentina	25	69	180	111706
231713		Kevin	Salazar	CAM	Colombia	25	62	170	112992
232132	Joaquín	Joaquín	Fernández Moreno	CB	Spain	25	66	190	1861
232376		Takuya	Aoki	CDM	Japan	31	77	179	111575
232661		Mariano	Bareiro	CB	Argentina	26	74	182	111710
232811		Jun	Amano	CM	Japan	30	64	175	101151
233201		Chris	Mepham	CB	Wales	23	75	191	1925
233911	Matos	José Joaquín	Matos García	LB	Spain	26	68	168	1968
234381		Jannik	Müller	CB	Germany	27	83	183	503
234573	Aurélio Buta	Aurélio Gabriel	Ulineia Buta	RB	Angola	24	72	172	230
234839		Taha	Yalçıner	CDM	Turkey	34	70	178	113142
235036		Wout	Faes	CB	Belgium	23	81	185	682
236259		Sergio	Peña	CAM	Peru	25	74	177	112516
236621		Pierre-Yves	Hamel	ST	France	27	67	185	217
237245		Eddie	Segura	CB	Colombia	24	78	182	112528
237542		Gustavo	Páez	ST	Venezuela	31	70	177	110929
238041		Tyrell	Malacia	LB	Holland	21	67	169	246
238636		Rico	Preißinger	CDM	Germany	25	81	185	110588
238784		Björn	Rother	CDM	Germany	25	81	185	110588
239048		Halil	Akbunar	RM	Turkey	27	61	167	101026
239378		Kaj	Sierhuis	ST	Holland	23	84	180	245
239613		Matteo	Pessina	CM	Italy	24	75	183	39
239837		Alexis	Mac Allister	CM	Argentina	22	70	176	111019
240168		Junior	Arias	ST	Uruguay	28	79	176	112670
240740		Callum	Hudson-Odoi	LW	England	20	76	185	5
241785		Vahid	Amiri	LW	Iran	33	75	181	436
242146		Claudio	Gonzalez	GK	Chile	31	73	175	112535
243829		Diego	Calderón Caicedo	ST	Colombia	31	86	180	112389
244385		Georgiy	Bushchan	GK	Ukraine	27	84	196	101047
50470061		Matthew	Kilgallon	CB	England	37	79	188	184
50507246	Zhao Xuri	Xuri	Zhao	CM	China PR	35	84	185	112378
50513770	Zou Zheng	Zheng	Zou	LB	China PR	33	70	178	112429
50517770		Byron	Webster	CB	England	34	88	191	1949
50521497		Moestafa	El Kabir	ST	Morocco	32	84	174	1439
50523774		Nabil	Bahoui	LM	Sweden	30	84	188	635
50530766		Viktor	Prodell	ST	Sweden	33	86	190	705
50534418		Connor	Ripley	GK	England	28	96	191	1801
50536804	Choe Yeong Joon	Yeong Joon	Choe	CM	Korea Republic	29	73	176	1477
50541256		Darío	Burbano	LM	Colombia	33	63	168	101114
50545266		Diego	Vallejos	ST	Chile	31	74	173	110975
50545989		Jonathan	Ávila	CB	Colombia	29	88	189	112992
50546064		Isaac	Díaz	ST	Chile	31	84	181	112584
50546278		Augusto	Barrios	RB	Chile	30	78	183	15029
50546646		Mauro	Bogado	CDM	Argentina	36	68	170	111713
50551509		Cristian	Flórez	LB	Colombia	26	82	180	101099
50552368		Andrea	Fulignati	GK	Italy	26	88	188	1847
50554862		Kevin	Friesenbichler	ST	Austria	27	75	188	111822
50557103		Víctor	Dávila	ST	Chile	23	72	173	110147
50559159		Nicolai	Rapp	CB	Germany	24	82	186	1831
50561115		Alvaro	Cesped	CDM	Chile	29	69	174	112668
223981		Max	Clark	LB	England	25	73	180	1909
224316		Roberto	Crivello	LB	Italy	29	76	180	110741
224507		Andrea	Schenetti	CM	Italy	30	72	175	111993
224838		Filip	Dagerstål	CB	Sweden	24	74	189	702
225236		Benjamín	Kuscevic	CB	Chile	25	80	185	110975
225875		Niklas	Kreuzer	RB	Germany	28	76	179	503
226102		Chey	Dunkley	CB	England	29	85	188	1917
226604		Diego	Valoyes	RW	Colombia	24	76	180	112670
227163		Pablo	Mina	GK	Colombia	35	81	183	101102
227647		Maximilian	Mittelstädt	LB	Germany	24	69	178	166
228130	Oh Seung Hoon	Seung Hoon	Oh	GK	Korea Republic	33	79	192	1473
228814		André	Green	LM	England	23	71	180	1790
228946		Mattias	Svanberg	LM	Sweden	22	77	185	189
229336		Anto	Grgić	CM	Switzerland	24	84	188	110770
229380	David Rocha	David	Mateos Rocha	CM	Spain	36	77	179	15019
229620		Vladimir	Rodić	RM	Montenegro	27	74	176	708
229702		Joshua	Mees	LM	Germany	25	73	181	1831
229882	Eduardo Henrique	Eduardo	Henrique da Silva	CDM	Brazil	26	73	187	1889
230308		Leyvin	Balanta	LB	Colombia	30	78	186	101104
231142	Nuno Tomás	Nuno Miguel	Adro Tomás	CB	Portugal	25	84	184	1889
231535		Cameron	Borthwick-Jackson	LB	England	24	73	189	1949
231874		Jannes	Horn	LB	Germany	24	77	186	31
232162		Steven	Ugarković	CDM	Australia	26	79	187	111398
232238		Carlos	Peralta	ST	Colombia	31	79	178	112523
232582		Walter	Andrade	CB	Argentina	36	86	190	110581
232691	Kim Min Hyeok	Min Hyeok	Kim	CB	Korea Republic	29	73	187	113160
232810		Takuya	Kida	CDM	Japan	26	63	169	101151
233314		Russell	Canouse	CDM	United States	26	76	177	688
233960		Lukas	Mühl	CB	Germany	24	83	189	171
234281		Mario	Kvesić	CAM	Bosnia and Herzegovina	29	70	175	506
234790	Soriano	Juan	Soriano Oropesa	GK	Spain	23	83	185	481
234987		Athanasios	Androutsos	CAM	Greece	24	75	182	280
235888		Irvin	Cardona	ST	France	23	77	185	1750
236301	Koke Vegas	Jorge	Ruiz Ojeda	GK	Spain	25	88	188	1853
237023		Yanis	Merdji	ST	France	27	72	174	57
237541	Pedrosa	André Alexandre	Antunes Pedrosa	CDM	Portugal	24	70	185	665
237766		Shota	Kaneko	RM	Japan	26	58	163	101149
238232	Han Kwang Song	Kwang Song	Han	ST	Korea DPR	22	70	178	199
238666		Alexander	Nandzik	LB	Germany	28	70	172	543
238979		Christopher	Handke	CB	Germany	32	80	191	110588
239335	Óscar	Óscar	Rodríguez Arnaiz	CAM	Spain	23	68	174	100888
239482	Galeno	Wenderson	Nascimento Galeno	RW	Brazil	23	72	182	744
239787		Gustavo	Torres	RW	Colombia	25	77	181	101100
239907		Raphael	Dwamena	ST	Ghana	25	81	186	1853
240201	Nacho Méndez	Ignacio	Méndez Fernández	CM	Spain	23	73	179	459
241312	Hu Jinghang	Jinghang	Hu	ST	China PR	24	68	178	111779
242000		Konstantinos	Mavropanos	CB	Greece	23	88	194	1
243401	André Vidigal	André Filipe	Cunha Vidigal	LW	Portugal	22	67	176	634
244258		Danijel	Zagorac	GK	Croatia	34	80	186	211
244787		Milan	Havel	LB	Czech Republic	27	78	183	110468
50499167		Efraín	Juárez	CM	Mexico	33	76	180	920
50508933		Romain	Vincelot	CB	France	35	71	177	127
50515013		Nicolò	Cherubin	CB	Italy	34	83	188	110912
50518946		Hugo	Rodríguez	CB	Mexico	31	79	184	110144
50523490		Hassan	Muath	RB	Saudi Arabia	35	70	180	111674
50524920		Samuel	Şahin-Radlinger	GK	Austria	28	83	196	485
50525711		Ján	Greguš	CM	Slovakia	30	79	189	111138
50534107		Jesper	Drost	CAM	Holland	28	75	175	100634
50535786		Ruben	Ligeon	RB	Holland	29	60	175	635
50537226		Pierre-Yves	Ngawa	RB	Belgium	29	75	187	110911
50543162		Reece	James	LB	England	27	71	169	142
50545739	Alcatraz	Gilberto	García	RB	Colombia	34	75	180	101100
50546049		Héctor	Urrego	CB	Colombia	28	77	183	101103
50546089		Alejandro	Contreras	CB	Chile	28	80	184	112116
50546590	Héctor	Héctor	Hernández Marrero	ST	Spain	25	71	173	110066
50549297		Shuichi	Gonda	GK	Japan	32	83	187	10031
50551814	Avto	Avtandil	Ebralidze	LW	Georgia	29	70	178	1891
50553620	Sun Jie	Jie	Sun	CB	China PR	29	88	191	917
50555992		Andrés	Vilches	ST	Chile	29	80	180	110980
50558441		Matt	Polster	RB	United States	28	77	183	86
50561028	David Rocha	David	Mateos Rocha	CM	Spain	36	77	179	1861
50561614	Nando	Fernando	García Puchades	RM	Spain	27	68	178	469
50563361		Kevin	Salazar	CAM	Colombia	25	62	170	101104
50565020		Bautista	Merlini	LM	Argentina	26	62	165	111710
50568687		Lazaros	Lamprou	RW	Greece	23	76	183	634
50576669		Mamadou	Loum	CDM	Senegal	24	80	188	236
67308023		Luke	Brattan	CDM	Australia	31	65	175	10
67335532		Nicolás	Mazzola	ST	Argentina	31	89	188	111716
84107680		Matt	Clarke	CB	England	24	74	188	1808
183924		Francesco	Migliore	LB	Italy	33	75	173	111434
184288		Dorian	Dervite	CB	France	33	85	192	670
185316		Thomas	Rogne	CB	Norway	31	86	191	873
186611		Mauro	Vigorito	GK	Italy	31	79	187	347
186970	Gu Cao	Cao	Gu	CB	China PR	33	75	183	111779
187837		Muris	Mešanović	ST	Bosnia and Herzegovina	31	75	177	266
188490		Liam	Sercombe	CM	England	31	69	178	1962
188917		Jørgen	Skjelvik	CB	Norway	30	77	183	697
189730		Francesco	Di Tacchio	CM	Italy	31	81	186	110373
190178		Niklas	Gunnarsson	CB	Norway	30	80	188	710
190821		Abdisalam	Ibrahim	CM	Norway	30	71	185	920
191237	Juanjo	Juan José	Ciércoles Sagra	CDM	Spain	33	67	176	1596
191800		Taishi	Taguchi	CM	Japan	30	70	176	101144
192283		Viktor	Lundberg	ST	Sweden	30	79	187	711
229575		Daniel	Mancini	CM	Argentina	24	72	171	57
229865	Óscar Pinchi	Óscar Francisco	García Quintela	LM	Spain	25	62	173	240
229883		Omar	Duarte	ST	Colombia	26	75	180	101100
230869	Unai Simón	Unai	Simón Mendibil	GK	Spain	24	89	190	448
231077		Martin	Frýdek	CM	Czech Republic	29	76	179	267
231423		Casper	De Norre	LB	Belgium	24	72	175	680
231627		Umar	Sadiq	ST	Nigeria	24	80	192	86
232000	Lee Seung Woo	Seung Woo	Lee	LW	Korea Republic	23	63	173	206
232289	Josete	José Antonio	Malagón Rubio	CB	Spain	33	79	179	110831
232623		Yosuke	Ideguchi	CDM	Japan	24	71	171	165
232775		Ataru	Esaka	ST	Japan	29	67	175	101145
233265		Rémi	Oudin	RM	France	24	79	185	379
233959		Sebastián	Villa	RW	Colombia	25	68	178	1877
234172		Barnabás	Bese	RB	Hungary	27	84	188	1738
234764	David Haro	David	Haro Iniesta	LM	Spain	31	61	168	1596
234989		Amedeo	Benedetti	LB	Italy	29	64	170	111993
235280		José	Aja	CB	Uruguay	28	84	193	101112
236248		Ben	Woodburn	CAM	Wales	21	72	174	1794
236993		Nick	Lima	RB	United States	26	80	175	111928
237283		Nicolás	Reniero	ST	Argentina	26	79	183	1013
237595		Marco	Friedl	LB	Austria	23	71	187	38
237960	Mama Baldé	Mama Samba	Baldé	RB	Guinea-Bissau	25	75	181	666
238594		André	Dej	CM	Poland	29	74	174	543
238971		Michel	Niemeyer	LM	Germany	25	72	178	110588
239120		Francis	Uzoho	GK	Nigeria	22	91	196	468
239340		Julian	Chabot	CB	Germany	23	89	192	1915
239589		Wilfried	Kanga	ST	Côte d'Ivoire	23	76	185	1530
239855	Ibson Melo	Ibson	Pereira de Melo	LW	Brazil	31	74	179	1893
240574		Andrea	Brighenti	ST	Italy	33	79	179	111434
241731		Yoel	Bárcenas	LM	Panama	27	72	175	110827
242079		Kristijan	Bistrović	CDM	Croatia	23	75	183	315
242664		Alexis	Saelemaekers	RM	Belgium	22	66	176	229
244251		Alon	Turgeman	ST	Israel	30	74	178	256
245021		Mamadou	Loum	CDM	Senegal	24	80	188	1900
50484269		Johan Lædre	Bjørdal	CB	Norway	35	82	188	920
50509525		José Francisco	Torres	CDM	United States	33	65	173	1970
50515136		Vincenzo	Rennella	ST	France	32	78	188	1968
50519466		Ariel	Borysiuk	CDM	Poland	30	70	180	1569
50522288		Victor	Pálsson	CB	Iceland	30	84	186	110502
50523649		Carlos	Guzmán	RB	Mexico	27	70	179	101121
50524952		Łukasz	Burliga	RB	Poland	33	78	184	1873
50531340		Hiram	Mier	CB	Mexico	31	73	182	1880
50534310		Steven	Lewerenz	LM	Germany	30	76	176	110588
50535176		Alhassane	Bangoura	RM	Guinea	29	72	175	101112
50536833	Ilori	Tiago	Almeida Ilori	CB	Portugal	28	80	190	237
50540687		David	Moberg Karlsson	CF	Sweden	27	76	179	267
50545662		Carlos	Lizarazo	CAM	Colombia	30	67	171	101106
50546004		Jerson	Malagón	CB	Colombia	28	77	189	112578
50546141		Jorge	Aguirre	CAM	Colombia	34	68	169	112528
50546791		Juan Ignacio	Sills	CDM	Argentina	34	70	180	111711
50551171		Jonás	Aguirre	LM	Argentina	29	69	175	110580
50552453		Alex	Castro	LM	Colombia	27	68	170	111722
50555384		Rajko	Rotman	CDM	Slovenia	32	80	187	111340
50557556		Reece	Oxford	CB	England	22	78	191	100409
50559584		Robert	Mazáň	LB	Slovakia	27	75	180	205
50561114		Cris	Martinez	LW	Paraguay	28	70	170	112709
50561956		Leyvin	Balanta	LB	Colombia	30	78	186	111722
50563857	José Kanté	José	Kanté Martínez	ST	Guinea	30	76	184	15019
50564849		Chris	Mepham	CB	Wales	23	75	191	1943
50567896		Ben	Woodburn	CAM	Wales	21	72	174	9
50575612		Cody	Cooke	ST	England	28	76	185	100805
67298713		Moestafa	El Kabir	LM	Morocco	32	84	174	711
67322482		Diego	Vallejos	ST	Chile	31	74	173	112655
67345110		Ovie	Ejaria	CM	England	23	75	183	9
84125458		Kaj	Sierhuis	ST	Holland	23	84	180	1915
184229		Joachim	Thomassen	LB	Norway	33	78	180	112199
184549		Adrian	Winter	RM	Switzerland	35	75	178	894
186558		Jimmy	Ryan	CM	Republic of Ireland	32	67	180	1926
187004		Moussa	Maâzou	RM	Niger	32	80	187	64
187925		Yannis	Tafer	RW	Algeria	30	67	181	898
188836		Jason	Steele	GK	England	30	79	188	1808
189833		Richard	Tait	RWB	Scotland	31	77	179	83
190139	Adaílton	Adaílton	dos Santos da Silva	ST	Brazil	30	83	176	101144
190554		Sam	Cronin	CDM	United States	34	75	178	111138
190792		Parfait	Mandanda	GK	Congo DR	31	84	182	670
191105		Robert	Lundström	RWB	Sweden	31	72	182	433
191924	Lee Bum Young	Bum Young	Lee	GK	Korea Republic	32	90	194	112115
192231		Joe	Edwards	CM	England	30	73	173	1803
192643		Kevin	Kratz	CAM	Germany	34	72	173	112885
193076	Assis	Assis	Giovanaz	GK	Brazil	31	92	187	1898
193346		Guus	Hupperts	RM	Holland	29	78	176	2007
193939		Billy	Kee	ST	Northern Ireland	30	72	175	110313
194934	Dani Jiménez	Daniel	Jiménez López	GK	Spain	31	72	179	100831
197817		Hanyer	Mosquera	CB	Colombia	34	85	185	112578
198040		Esteban	Alvarado	GK	Costa Rica	32	85	192	436
198451	Dani Rodríguez	Daniel	Rodríguez Vázquez	CM	Spain	33	71	177	453
198690		Roger	Torres	CAM	Colombia	30	67	169	112579
199407		Danny	Post	CDM	Holland	32	94	191	100651
199768		Christian	Gartner	CM	Austria	27	76	180	1825
184657		Sander	Fischer	CB	Holland	32	81	184	111660
184764		Léo	Schwechlen	CB	France	32	78	182	749
185438		Nicklas	Bärkroth	RM	Sweden	29	75	172	710
186449		Liam	Kelly	CDM	Scotland	31	88	187	1800
187093		Jairo	González	LB	Mexico	29	79	169	111035
187225		Omar	Mendoza	RB	Mexico	32	72	173	111678
50522630	Alberto Perea	Alberto	Perea Correoso	CAM	Spain	30	69	175	469
50524017		Hernán	Bernardello	CDM	Argentina	35	74	174	111706
50530349		Stefano	Pettinari	ST	Italy	29	79	185	110734
50534616	Yun Il Lok	Il Lok	Yun	LM	Korea Republic	29	65	178	1478
50535908		Florian	Raspentino	ST	France	32	73	179	110456
50537809		Achraf	Lazaar	LB	Morocco	29	80	184	1807
50544451		Zach	Clough	CAM	England	26	64	170	1955
50545919		Alvaro	Salazar	GK	Chile	28	79	185	110980
50546060		Paulo	Magalhães	RB	Chile	31	74	177	112116
50546238		Johan	Fuentes	CM	Chile	37	75	169	112709
50547176		Khalid	Karami	RB	Morocco	31	73	181	1904
50551373		Stefano	Minelli	GK	Italy	27	76	184	110912
50553187	Carrillo	José Ángel	Carrillo Casamayor	ST	Spain	27	80	190	1867
50554382	Kang Sang Woo	Sang Woo	Kang	LB	Korea Republic	27	62	176	2055
50558183		Sam	Johnson	ST	Liberia	28	74	178	111065
50560462		André	Green	LW	England	23	71	180	2
50561253		Callum	Connolly	CDM	England	23	70	183	4
50562704		Stefan	Marinović	GK	New Zealand	29	95	192	1919
50563780	Joaquín	Joaquín	Fernández Moreno	CB	Spain	25	66	190	462
50565708		Yangel	Herrera	CDM	Venezuela	23	77	182	10
50568893		Eddie	Segura	CB	Colombia	24	78	182	112996
50572960	Hu Jinghang	Jinghang	Hu	ST	China PR	24	68	178	112540
67304126		Adriano	Grimaldi	ST	Germany	30	90	188	167
67329584		Andrea	Fulignati	GK	Italy	26	88	188	112791
84075288		Cillian	Sheridan	ST	Republic of Ireland	32	82	193	111766
183823	Héctor Verdés	Héctor	Verdés Ortega	CB	Spain	37	80	185	110066
184143		Anders K.	Jacobsen	ST	Denmark	31	76	182	272
184635		Stef	Nijland	CAM	Holland	32	81	187	635
186503		Tim	Breukers	RB	Holland	33	77	182	100634
186756		Danny	Swanson	RM	Scotland	34	59	168	81
187218		Miguel	Jiménez	GK	Mexico	31	79	182	1880
188038		Ondřej	Čelůstka	RB	Czech Republic	32	80	186	741
189345		Dominic	Peitz	CDM	Germany	36	91	196	576
189962		Wilfred	Moke	CB	Congo DR	33	78	183	101033
190180		Ryan	McGowan	RB	Australia	31	78	191	1804
190585		Sheanon	Williams	RB	United States	31	77	180	697
190979		Etzaz	Hussain	CM	Norway	28	69	176	417
191083		Patrick	Mortensen	ST	Denmark	31	81	188	112199
191532	Yu Yang	Yang	Yu	CB	China PR	32	72	183	111768
192007		Martín	Zúñiga	ST	Mexico	28	80	183	1878
192481		Danny	Rowe	RM	England	29	76	183	94
192890		Erbín	Trejo	CM	Mexico	31	69	171	110150
193187		Kyle	Bennett	LM	England	30	61	165	1962
193827		Teerasil	Dangda	ST	Thailand	33	71	181	113157
194669		Marcel	Ritzmaier	CM	Austria	28	75	180	111822
195722		Roberto	Cereceda	LB	Chile	36	73	173	112116
197941		Kennedy	Igboananike	ST	Nigeria	32	70	175	705
198178		André	Calisir	CB	Sweden	31	74	180	319
198625		Scott	Bain	GK	Scotland	29	75	180	78
199053		Riccardo	Bocalon	ST	Italy	32	76	186	110373
199410		Ivan	Yagan	LM	Armenia	31	74	176	2013
199764		Jonathan	Ligali	GK	France	30	86	184	70
184847		John	Goossens	CAM	Holland	33	77	174	650
186494		Mark	Oxley	GK	England	30	73	190	1954
186725		David	Horst	CB	United States	35	95	193	111065
187193		Erik	Pimentel	CB	Mexico	31	77	176	110152
188202		Yannick	Thoelen	GK	Belgium	31	89	188	674
188399		Alexander	Dercho	LB	Germany	34	75	186	487
189010		Szymon	Matuszek	CDM	Poland	32	79	185	420
189224	Júnior Negão	Gleidionor	Júnior	ST	Brazil	34	83	187	1473
189736		Federico	Casarini	CM	Italy	32	72	181	1847
189868		Mark	Marshall	RM	Jamaica	34	69	170	89
190247		John	Brayford	RB	England	33	71	173	15015
190588		Rodney	Wallace	LM	Costa Rica	33	75	182	112828
190619		Mike	Grella	LM	United States	34	77	180	687
191184		Mateusz	Machaj	CAM	Poland	32	67	174	110745
191552		Masahiko	Inoha	CB	Japan	35	74	179	101146
192015		Gael	Acosta	LM	Mexico	29	64	165	110150
192473		Lee	Novak	ST	England	32	78	183	1949
192977		Nicolaj	Madsen	CM	Denmark	33	83	188	822
193166		Luis	Madrigal	ST	Mexico	28	90	191	1032
193564		Marcos	Álvarez	CF	Germany	29	77	179	487
193798		Joe	Mason	ST	Republic of Ireland	30	73	178	110
194150		Simon	Moore	GK	England	31	83	191	1794
195126		John	Marquis	ST	England	29	73	185	142
197148		Marcus	Piossek	RM	Poland	32	73	176	110700
198104		Dominik	Stahl	CDM	Germany	32	79	182	172
198285		Lee	Nicholls	GK	England	28	85	191	1798
198811		Fredrik Oldrup	Jensen	CM	Norway	28	73	183	319
199010		Andy	Boyle	CB	Republic of Ireland	30	77	178	1801
199614		Glynor	Plet	ST	Holland	34	84	194	113142
199813		Gernot	Trauner	CB	Austria	29	82	183	252
200375		Ted	van de Pavert	CB	Holland	29	85	194	635
200925		Tobias	Rühle	RM	Germany	30	79	179	531
201179		Antonio	Donnarumma	GK	Italy	31	96	192	47
201869		Russell	Teibert	CDM	Canada	28	66	173	101112
202076		Zarek	Valentin	LB	United States	30	73	183	111140
202199		George	Long	GK	England	27	94	193	1952
202322		Nicolai	Næss	CB	Norway	28	82	183	1913
202534		Kristoffer	Larsen	LM	Norway	29	74	183	112199
202803		Martin	Angha	CB	Switzerland	27	79	188	110770
202909		David	Boo Wiklander	CB	Sweden	36	85	180	319
202988	Ryu Won Woo	Won Woo	Ryu	GK	Korea Republic	31	78	185	1474
203399		Ouasim	Bouy	CB	Holland	28	79	181	1914
203781		Donny	Toia	LB	United States	29	75	173	112606
204499		Ryan	Inniss	CB	England	26	84	196	1799
50535025		Adnane	Tighadouini	LM	Morocco	28	72	180	1445
50536497		Marco	Bueno	ST	Mexico	27	72	182	110147
50541370	Marquinhos Pedroso	Marcos	Garbellotto Pedroso	LB	Brazil	27	77	178	688
50544606		Kofi	Opare	CB	United States	30	86	188	694
50546038		Henry	Rojas	CM	Colombia	34	74	177	111723
50546223		Luis	Payares	CB	Colombia	31	78	185	101105
50546413		Marcelo	Herrera	CB	Argentina	29	78	185	111022
50550825		Jorge	Grant	LM	England	26	72	178	1940
50551800		Yves	Baraye	LW	Senegal	29	69	177	110912
50554109	Rochinha	Diogo Filipe	Rocha Costa	RM	Portugal	26	68	169	1887
50555394		Greg	Stewart	CAM	Scotland	31	73	178	88
50558316		Nicolás	Mazzola	ST	Argentina	31	89	188	101084
50560819		Kenny Prince	Redondo	LW	Germany	26	68	181	165
50561370		Kevin	Medel	CDM	Chile	25	66	171	110975
50563275		Umar	Sadiq	ST	Nigeria	24	80	192	199
50564339	Kim Min Hyeok	Min Hyeok	Kim	CB	Korea Republic	29	73	187	1477
50566928		José	Aja	CB	Uruguay	28	84	193	110977
50571435		Gustavo	Torres	RW	Colombia	25	77	181	1013
67293641		Eduardo	Herrera	ST	Mexico	33	86	187	101121
67332610		Greg	Stewart	ST	Scotland	31	73	178	77
84120140		Yangel	Herrera	CDM	Venezuela	23	77	182	110839
184084		Matthieu	Dreyer	GK	France	32	81	188	1816
184819	Ricardo Machado	Ricardo Jorge	Tavares Machado	CB	Portugal	32	80	190	112393
186562		Josh	Magennis	ST	Northern Ireland	30	92	188	4
186881		James	Holland	CDM	Australia	32	76	182	252
187171	Kim Ho Jun	Ho Jun	Kim	GK	Korea Republic	37	89	190	112115
187915		Emir	Kujović	ST	Sweden	33	88	194	110636
188625		Joel	Ekstrand	CB	Sweden	32	77	188	433
189573	Guarrotxena	Iker	Guarrotxena Vallejo	LM	Spain	28	66	177	110746
189924		Bartosz	Rymaniak	RB	Poland	31	80	189	111083
190408		Mads	Reginiussen	CM	Norway	33	70	175	112200
190602		Riccardo	Brosco	CB	Italy	30	78	190	1847
191044		Pa Modou	Jagne	LB	Gambia	31	79	176	894
191263		Ahmed Mohammed	Al Fraidi	CAM	Saudi Arabia	33	77	174	112139
191572	Zheng Zheng	Zheng	Zheng	LB	China PR	32	75	183	111724
192043		Alonso	Zamora	CB	Mexico	29	75	180	110152
192354		Rodolfo	Vilchis	LM	Mexico	31	66	165	1028
192853		Mirko	Carretta	LW	Italy	30	75	178	111434
193173		Matty	Lund	CDM	Northern Ireland	30	76	183	1949
193870	Pedro Trigueira	Pedro José	da Silva Trigueira	GK	Portugal	33	78	192	1900
194163		Jukka	Raitala	CB	Finland	32	78	181	111139
196145		Yulián	Anchico	CM	Colombia	37	75	182	101103
197924		Mladen	Bartulović	LM	Croatia	34	82	182	112505
198235		Jon	Taylor	RM	England	29	77	168	1797
198642		Dan Peter	Ulvestad	CB	Norway	32	84	189	113459
198962		Raïs	M'Bolhi	GK	Algeria	35	80	189	112096
199498		Gavin	Massey	RM	England	28	75	180	1917
188386		Edouard	Butin	ST	France	33	76	180	378
188522	Fábinho	Fabio	Alves Macedo	LB	Brazil	36	68	170	112134
189217		Peter	Pawlett	RM	Scotland	30	68	178	1798
189655		Zdeněk	Ondrášek	ST	Czech Republic	32	79	185	1873
190060		Nzuzi	Toko	CM	Congo DR	30	70	174	112390
190254		Wes	Thomas	ST	England	34	76	180	92
190583		Michael	Smith	ST	England	29	86	194	1797
190665		Jonathan	Obika	ST	England	30	76	183	1951
190995		Brad	Inman	LM	Australia	29	79	185	1955
191432		Adnan Ibrahem	Falatah	LB	Saudi Arabia	37	70	176	112391
192431	Mario Ortíz	Mario	Ortíz Ruiz	CDM	Spain	32	65	178	110854
192528	Steven Vitória	Steven	de Sousa Vitória	CB	Canada	34	86	195	111091
192792		Přemysl	Kovář	GK	Czech Republic	35	89	187	266
193344		Pascal	Schürpf	LM	Switzerland	32	83	190	897
193580		Musa	Nizam	LB	Turkey	30	74	182	741
193956		Ben	Pringle	LM	England	33	74	173	1801
194759		Omar	Beckles	LB	England	29	78	191	127
196615		Umaru	Bangura	CB	Sierra Leone	33	75	180	894
198094		Collen	Warner	CDM	United States	33	80	178	111138
198279		Chris	Schuler	CB	United States	33	93	193	112606
198377		Liam	Palmer	RWB	Scotland	29	81	188	1807
198816		Pierre	Bouby	CDM	France	37	78	184	112276
199173		Marco	Crimi	CM	Italy	31	65	178	110741
199398		Andreas	Wittwer	LB	Switzerland	30	78	173	898
199746		Jesper	Bøge	RB	Denmark	31	70	180	112425
200209		Nicolai	Larsen	GK	Denmark	30	83	190	1788
200369		Ole Jørgen	Halvorsen	RM	Norway	33	75	178	112199
200592	Park Jong Woo	Jong Woo	Park	CM	Korea Republic	32	74	180	983
200952		Mike	Könnecke	CAM	Germany	32	70	174	110592
201112		Jakub	Słowik	GK	Poland	29	82	190	111092
201362	Pardo	José Antonio	Pardo Lucas	CB	Spain	33	78	187	469
201958		Ethan	Ebanks-Landell	CB	England	28	88	188	110
202182		Riku	Riski	RW	Finland	31	68	174	100325
202482		Alex	Rodman	LM	England	34	80	188	1962
202611	Manuel Sánchez	Manuel	Sánchez López	CDM	Spain	33	78	185	468
202810		Sean	McDermott	GK	Republic of Ireland	28	83	185	113459
202921		Jake	Gleeson	GK	New Zealand	31	91	191	111140
202974	Sin Se Gye	Se Gye	Sin	RB	Korea Republic	30	73	178	2055
203348		Samir	Carruthers	CAM	Republic of Ireland	28	70	173	1951
203415		Jake	Reeves	CM	England	28	70	170	1804
204100		Simon	Brandstetter	ST	Germany	31	83	187	492
204622		Josh	Meekings	CB	England	28	78	184	180
204946		Yuki	Otsu	LM	Japan	31	73	180	101151
205321		Jason	Naismith	RB	Scotland	27	83	169	1938
205406		Luca	Martinelli	CB	Italy	32	73	185	110911
205663		Massimiliano	Busellato	CM	Italy	28	73	174	110911
206004		Juhani	Ojala	CB	Finland	32	85	191	711
206157		Lawrence	Olum	CB	Kenya	37	83	188	111140
206536		Tom	Naylor	CDM	England	30	72	188	1790
50563071		Casper	De Norre	LM	Belgium	24	72	175	673
50564376		Yutaka	Yoshida	LB	Japan	31	69	168	112092
50567169	Carbonell	Àlex	Carbonell Vallés	CM	Spain	23	75	182	1867
50569398		Ken	Tokura	ST	Japan	35	80	187	101148
50576772		Djordje	Jovanovic	ST	Serbia	22	78	185	1968
67313713		Marco	Bueno	ST	Mexico	27	72	182	100325
67340577		Kevin	Salazar	CAM	Colombia	25	62	170	112578
84083306		Sören	Bertram	ST	Germany	30	82	185	110502
183973		Loïc	Nestor	CB	France	32	70	179	110456
184283		Jan-Philipp	Kalla	RB	Germany	35	74	180	110329
186127		Ched	Evans	ST	Wales	32	76	183	112260
186723		Yannick	Boli	ST	Côte d'Ivoire	33	78	180	694
187077		Freddie	Sears	ST	England	31	75	170	94
188164		José	Baxter	CAM	England	29	74	179	1920
189186		Andrew	Shinnie	CAM	Scotland	32	70	180	1923
189724		Nikola	Vujadinović	CB	Montenegro	35	84	191	873
190015		Mame Ousmane	Cissokho	LW	Senegal	34	68	175	112276
190552		Chris	Pontius	RM	United States	33	77	183	697
190698		Jasmin	Burić	GK	Bosnia and Herzegovina	34	80	193	873
191154		Tobias	Sana	ST	Sweden	32	64	173	271
191980	Yun Suk Young	Suk Young	Yun	LB	Korea Republic	31	76	183	982
192169		Erik	Friberg	CM	Sweden	35	70	179	711
192496		Paul	Downing	CB	England	29	79	188	3
193111		René	Lange	LB	Germany	32	76	178	110592
193206		Olly	Lee	CM	England	30	80	181	80
194149		Fredrik	Ulvestad	CM	Norway	29	84	183	710
194792		Luke	Hyam	CM	England	29	72	178	1954
197422		Hiroki	Mizumoto	CB	Japan	35	74	183	113157
197996		Eric	Larsson	RB	Sweden	30	68	175	320
198348		Mathias	Autret	LM	France	30	71	175	378
198955	Juan Muñiz	Juan	Muñiz Gallego	RM	Spain	29	74	178	110831
199159		Luke	Brattan	CDM	Australia	31	65	175	112224
199686		George	Saunders	CDM	England	32	74	176	112526
193251		Christoph	Schösswendter	CB	Austria	33	78	193	1831
193728		David	Wotherspoon	RM	Canada	31	76	180	100804
193958		Lee	Brown	LB	England	30	79	183	1790
194200	Trujillo	Ángel	Trujillo Canorea	CB	Spain	33	79	179	1861
195357		Fabien	Farnolle	GK	Benin	36	104	196	113259
197896		Adam	Straith	CB	Canada	30	89	188	110700
198257		Seth	Sinovic	LB	United States	34	77	178	696
198721		Daniel	Cappelletti	CB	Italy	29	76	183	110912
198952		Sergiu	Suciu	CM	Romania	31	76	184	205
199394	Diego Maurício	Diego Maurício	Machado de Brito	LM	Brazil	30	80	183	112115
199620		Stefan	Payne	ST	England	29	74	180	1962
199867	Milton Raphael	Milton Raphael	Guimarães Pires	GK	Brazil	30	81	189	665
200256		Thilo	Leugers	CDM	Germany	30	75	184	110597
200505		Lars	Hutten	CAM	Holland	31	72	181	634
200807		Kieron	Freeman	RWB	Wales	29	79	178	1794
200981		Nicolao	Dumitru	LM	Italy	29	77	184	15019
201265		Nicklas	Helenius	ST	Denmark	30	84	196	272
201927		Callum	Harriott	LM	England	27	66	165	1793
202131		Jordan	Cousins	CM	England	27	72	177	15
202259		Magnar	Ødegaard	CB	Norway	28	80	186	418
202524	Borja Granero	Borja	Granero Niñerola	CDM	Spain	31	75	189	469
202788		Mateusz	Szczepaniak	ST	Poland	30	73	184	110747
202904		Joonas	Tamm	CB	Estonia	29	97	192	112199
202966	Choi Bo Kyung	Bo Kyung	Choi	CB	Korea Republic	33	79	184	1477
203309		Ben	Halloran	RW	Australia	29	77	184	111393
203733	José Ángel	José Ángel	Jurado de la Torre	CM	Spain	29	74	182	918
204458		Adedeji	Oshilaja	CB	England	28	75	181	112259
204644		Simon	Kroon	RM	Sweden	28	73	183	113173
204987		Bror	Blume	RM	Denmark	29	73	177	271
205393		Jack	Baldwin	CB	England	28	70	185	106
205609		Johanna	Omolo	CDM	Kenya	32	73	179	1750
205887		Cauley	Woodrow	ST	England	26	74	184	1932
205956		Charles	Dunne	CB	Republic of Ireland	28	86	188	83
206094		Marnick	Vermijl	RB	Belgium	29	76	180	1801
206281		Igors	Tarasovs	CB	Latvia	32	85	190	111092
206529		Franck	Boli	ST	Côte d'Ivoire	27	77	180	917
207584		Mikael	Boman	ST	Sweden	33	92	188	1786
206603		Connor	Lade	RB	United States	31	68	169	689
207712		Nigel	Bertrams	GK	Holland	28	81	185	1788
207754		Kévin	Mayi	ST	France	28	78	182	378
207804		Amari'i	Bell	LB	England	27	77	180	3
207905		Mateusz	Mak	RM	Poland	29	64	176	111086
207952		Semi	Ajayi	CB	Nigeria	27	83	193	1797
208146		Davide	Adorni	CB	Italy	28	75	183	111993
208424		Matteo	Ricci	CM	Italy	27	63	175	110741
208510	Pelayo Novo	Pelayo	Novo García	CAM	Spain	30	80	184	1854
208638	Rober Correa	Roberto Antonio	Correa Silva	RB	Spain	28	77	182	1968
208645		Jordan	Moore-Taylor	CB	England	27	83	178	1798
208778		Nicolò	Manfredini	GK	Italy	33	80	190	110741
208857		Frédéric	Bong	CB	Cameroon	34	91	187	111817
209162		Erik	Correa	ST	Colombia	29	70	184	111722
209210		Alex	Grant	CB	Australia	27	88	191	111399
209264		Bård	Finne	LW	Norway	26	70	173	920
209401		Djavan	Anderson	RB	Holland	26	72	180	110373
209413		Mateusz	Matras	CDM	Poland	30	88	193	110749
209452		Sebastian	Rudol	CB	Poland	26	77	183	110746
209602		Tommaso	Cancellotti	RM	Italy	29	75	185	111993
209816	Buatu	Jonathan	Buatu Mananga	CB	Angola	27	87	187	744
210148		Robert	Klaasen	CM	Holland	27	74	177	635
210381		Charalampos	Lykogiannis	LB	Greece	27	78	186	1842
210392		Ryan	McLaughlin	RM	Northern Ireland	26	69	174	1926
210601		Thomas	Ebner	CDM	Austria	29	75	180	256
210619	Jordi Quintillà	Jordi	Quintillà Guasch	CM	Spain	27	70	178	898
192582		Chris	Shields	CDM	Republic of Ireland	30	78	186	837
193087		Piotr	Tomasik	LB	Poland	33	72	177	873
193412		David	Drocco	CM	Argentina	32	70	167	111711
194059		Michał	Chrapek	CM	Poland	29	68	175	111092
195371		Lucien	Owona	CB	Cameroon	30	89	189	1861
197169		Dejan	Lazarević	LM	Slovenia	31	65	175	110745
198082		Samba	Diakité	CM	Mali	32	80	186	111273
198330		Ivan	Franjić	RB	Australia	33	77	180	111399
198840	Abraham	Abraham	Minero Fernández	LB	Spain	35	71	175	15019
199121		Haris	Radetinac	RM	Serbia	35	73	187	710
199638	Provencio	Daniel	Provencio Azcune	CM	Spain	33	75	178	468
204882		Ryan	Williams	LM	Australia	27	67	173	1797
205216	Sérgio Marakis	Sérgio Romeo	Marakis	CDM	Portugal	29	76	178	1891
205582		Anthony	Forde	RM	Republic of Ireland	27	82	180	1797
205752		Gwion	Edwards	LM	Wales	28	76	175	94
205999		Moreno	Rutten	RB	Holland	28	69	177	100651
206134		Devante	Cole	ST	England	26	73	185	1917
206530		Marius	Høibråten	CB	Norway	26	77	184	1757
206628		Adrián	Calello	CDM	Argentina	34	71	178	110404
207629		Jose	Villarreal	CF	United States	27	80	172	112606
207783		Raymon	Gaddis	LB	United States	31	68	175	112134
207942	Stéfano Pinho	Stéfano	Souza Pinho	ST	Brazil	30	75	184	112606
208188		Jon	Guthrie	CB	England	29	82	192	1803
208521		Frédéric	Brillant	CB	France	36	73	187	688
208691		Cammy	Smith	CAM	Scotland	25	61	176	100805
208929		Shaya Ali	Sharahili	CDM	Saudi Arabia	31	68	175	112391
209268		Danny	Rose	CM	England	33	66	170	1790
209757		Vedran	Janjetović	GK	Australia	33	84	187	112427
210029		Joe	Rafferty	RB	Republic of Ireland	27	75	184	1955
210046		Kieran	Sadlier	LM	Republic of Ireland	26	66	182	422
210213		Giovanni	Korte	RM	Holland	28	71	170	1904
210366		Niklas	Lomb	GK	Germany	28	84	187	110178
210494		Marc Andre	Schmerböck	LM	Austria	27	75	180	111822
210543		Marco	Migliorini	CB	Italy	29	86	194	110373
210667		Floriano	Vanzo	RM	Belgium	27	80	178	110913
210783		Aqeel	Al Sahabi	CB	Saudi Arabia	34	67	180	112389
210713		Frederik	Holst	RB	Denmark	26	71	175	700
210951		Edison	Flores	LM	Peru	27	68	170	1028
211132	Andrés Prieto	Andrés Tomás	Prieto Albert	GK	Spain	27	91	194	573
211002	Hwang Seok Ho	Seok Ho	Hwang	CB	Korea Republic	32	75	182	101149
211195		Lucas	Woudenberg	LB	Holland	27	70	186	1913
211221		Martin	Boyle	RM	Scotland	28	70	178	81
211395		Abdullah	Al Salem	CAM	Saudi Arabia	28	74	184	113057
211433		Fernando	Evangelista	LB	Argentina	29	82	184	101083
211439		Thamsanqa	Gabuza	ST	South Africa	34	86	183	110930
211702		Marc	Endres	CB	Germany	30	83	189	172
211604		Liam	Roberts	GK	England	26	82	193	1803
211742		Marc	Lorenz	LM	Germany	33	75	182	1832
211901		Lucas	Hufnagel	CM	Georgia	27	73	183	172
211953		René	Vollath	GK	Germany	31	75	185	167
211955		Ulrich	Taffertshofer	CDM	Germany	29	82	183	487
212046		Adrian	Popa	RM	Romania	33	71	169	1793
212137		Andreas	Vindheim	RB	Norway	26	79	184	320
212228		Ivan	Toney	ST	England	25	70	179	1938
212287		Andreas	Maxsø	CB	Denmark	27	89	192	894
212244		Christopher	Lenz	LB	Germany	26	79	181	1831
212418		Markus	Lackner	CDM	Austria	30	75	193	209
212485		Danny	Bakker	CDM	Holland	26	70	178	650
212546		Myenty	Abena	RB	Suriname	26	79	191	635
212754		Corentin	Fiore	CB	Belgium	26	75	183	1843
213009		Abdulrahman	Al Ghamdi	RM	Saudi Arabia	26	70	175	607
212948		Fabrice	Ondoa	GK	Cameroon	25	90	185	682
213367		Laurent	Abergel	CDM	France	28	70	172	1823
213328		Senna	Miangue	LB	Belgium	24	81	192	232
213152		Carlton	Morris	ST	England	25	85	185	1792
213449		Paweł	Stolarski	RB	Poland	25	74	181	1871
213486		Dmitriy	Efremov	RM	Russia	26	70	180	315
213407		Matt	Macey	GK	England	26	81	198	1929
213570		Stephen	O'Donnell	RB	Scotland	29	89	188	82
213543		Kasper	Pedersen	CB	Denmark	28	75	185	820
213612		Hosam	Aiesh	RM	Sweden	26	72	180	113173
243787		Ylber	Ramadani	CDM	Albania	25	75	185	822
244231		Farshad	Ahmadzadeh	RM	Iran	28	70	176	111092
244273		Bojan	Knežević	CDM	Croatia	24	75	178	211
244492	João Gabriel	João Gabriel	Farinello Rosa	CB	Brazil	32	83	186	112990
244340		Rok	Vodišek	GK	Slovenia	22	83	188	110556
244749		Nayef	Aguerd	CB	Morocco	25	76	188	110569
244967		Tamer Haj	Mohamad	CDM	Syria	31	83	180	113219
244969		Zouheir	Laaroubi	GK	Morocco	37	86	185	113219
245035		Claudio	Gomes	CDM	France	21	70	180	10
245459		Xian	Emmers	CM	Belgium	22	72	178	111434
50490364		David	Edwards	CM	Wales	35	78	183	127
245396		Vladyslav	Supriaga	ST	Ukraine	21	75	182	101047
50496113		Tony	McMahon	RB	England	35	72	180	1949
50497157		Billy	Clarke	ST	Republic of Ireland	33	64	170	1804
50502731		Roy	O'Donovan	ST	Republic of Ireland	35	64	179	111395
50510156		Andrea	Cocco	ST	Italy	35	75	182	110912
50514655	Zhang Wenzhao	Wenzhao	Zhang	LM	China PR	34	70	178	112537
50515165		Abu	Ogogo	CM	England	31	78	177	1962
50516130		Jem	Karacan	CM	Turkey	32	67	176	111396
50518741		Jairo	González	LB	Mexico	29	79	169	101121
50519905		Brian	Easton	LB	Scotland	33	76	183	184
50520053		Zlatko	Janjić	CAM	Bosnia and Herzegovina	35	83	187	111379
50521708		Nzuzi	Toko	CM	Congo DR	30	70	174	319
50523327	Kwak Kwang Sun	Kwang Sun	Kwak	CB	Korea Republic	35	77	187	1475
199982		Joachim	Van Damme	CDM	Belgium	30	98	193	110913
200499		Vytautas	Andriuškevičius	LB	Lithuania	30	80	188	688
200667		Max	Power	CDM	England	28	77	181	106
200898		Ali	Crawford	CM	Scotland	30	63	179	142
201081		Bartosz	Kopacz	CB	Poland	29	85	188	110749
201491		Daniel	Lafferty	LWB	Northern Ireland	32	76	180	1794
201875		Jeff	Attinella	GK	United States	32	86	188	111140
202033		Stephen	McLaughlin	RM	Republic of Ireland	31	77	175	1954
202200		Luciano	Slagveer	RM	Holland	27	74	178	100628
202465		Richie	Towell	CM	Republic of Ireland	30	66	173	1808
202754		Cornel	Râpă	RB	Romania	31	72	180	110747
202977	Lee Jong Sung	Jong Sung	Lee	CB	Korea Republic	29	72	187	983
203431	Leandro	Weverson L.	de Oliveira Moura	LM	Brazil	28	76	177	101147
203606		Jiří	Skalák	LM	Czech Republic	29	76	177	97
203824		Remi	Matthews	GK	England	27	78	184	4
204044		Martin	Kobylański	CF	Poland	27	75	178	531
204217		Charlie	Wyke	ST	England	28	74	185	106
204322		Rory	McKenzie	RM	Scotland	27	75	175	82
204386		Dico	Koppers	LB	Holland	29	72	179	1914
204449		Stefano	Marzo	RB	Belgium	30	69	181	2007
204816		Menno	Koch	CB	Holland	27	78	195	1904
205190		Baïssama	Sankoh	CDM	Guinea	29	73	180	210
205460		Clemens	Schoppenhauer	CB	Germany	29	77	185	110329
205939		Onur	Bulut	RM	Germany	27	69	179	110500
206038	Jairo Morillas	Jairo	Morillas Rivero	ST	Spain	28	78	185	112448
206310		Larry	Azouni	CM	Tunisia	27	73	175	100081
206633		Luis	Silva	ST	United States	32	79	182	111065
207618		David	Fällman	CB	Sweden	31	84	187	708
207716		Abdullah	Al Hafith	CB	Saudi Arabia	28	77	186	605
207897		Anthony	Jung	LB	Germany	29	87	185	269
208298		Martín	Rivero	CDM	Argentina	31	72	175	111022
208304	Moon Chang Jin	Chang Jin	Moon	RM	Korea Republic	28	63	170	112115
208455	Choi Sung Keun	Sung Keun	Choi	CM	Korea Republic	30	67	181	983
208917		Khalid Ahmed	Al Ghamdi	RB	Saudi Arabia	33	62	167	112139
209001		Mukhtar Omar	Fallatah	ST	Saudi Arabia	33	66	179	605
209378		Bart	van Hintum	LB	Holland	34	76	177	100634
209709		Bright	Edomwonyi	ST	Nigeria	27	77	182	256
209830		Quentin	Beunardeau	GK	France	27	79	184	666
210134		Mohammed	Al Fatil	CB	Saudi Arabia	29	72	179	112387
210361		Bruno	Godeau	CB	Belgium	29	78	190	111560
210488		Peter	van Ooijen	CM	Holland	29	75	179	100651
210698		Matti	Steinmann	CDM	Germany	26	79	189	28
211095		Nicolai	Brock-Madsen	ST	Denmark	28	80	190	100805
211745		Philipp	Riese	CDM	Germany	31	68	175	506
211825		Patrick	Göbel	RM	Germany	28	68	169	110197
212340		Stefan	Wannenwetsch	CDM	Germany	29	73	177	27
212483		Johann	Obiang	LB	Gabon	28	64	170	294
212819		Kensuke	Nagai	ST	Japan	32	71	178	101150
213228		Samuel	Asamoah	CDM	Ghana	27	64	163	680
213488		Daniel	De Silva	CAM	Australia	24	60	170	111400
213654		Glen	Kamara	CM	Finland	25	73	183	180
213699		Ashley	Fletcher	ST	England	25	78	188	12
213743	Tiago Caeiro	Tiago David	Janeiro Caeiro	ST	Portugal	37	84	192	1889
214054		Harold	Rivera	LM	Colombia	27	74	175	112579
214175		Carlos	Robles	CDM	Colombia	29	70	171	111722
214313		Juan	Delgado	LM	Chile	28	70	177	112516
214333		Dilan	Zúñiga	LB	Chile	25	73	170	112584
214509		Nicolás	Palacios	CDM	Colombia	29	72	190	112527
214600		Francisco	Nájera	CB	Colombia	38	78	185	112523
214689		Gonzalo	Villagra	CM	Chile	39	67	174	112533
214710		Juan Carlos	Espinoza	RB	Chile	30	77	170	112116
214746		Fernando	Saavedra	CM	Chile	35	72	176	112535
214840		Andrés	Robles	CB	Chile	27	79	182	112668
215085		Rodrigo	Naranjo	GK	Chile	41	86	192	112531
215367		Osman	Sow	ST	Sweden	31	80	193	1798
215480		Aleksandar	Boljević	RM	Montenegro	25	77	184	110913
215638		Liam	Lindsay	CB	Scotland	25	89	193	1932
216037		Nahuel	Valentini	CB	Argentina	32	80	184	1847
216282		Raphael	Framberger	RB	Germany	25	73	179	100409
216791		Matthew	Pennington	CB	England	26	77	185	7
217054		Harold	Cummings	CB	Panama	29	84	180	111928
217647		Junya	Tanaka	LM	Japan	34	75	181	101146
218660		Josh	Sims	LM	England	24	65	168	1793
219452		Julián	Fernández	CDM	Argentina	26	72	177	111328
219555		Juan José	Mezú	CAM	Colombia	31	70	170	112903
219623		Leonardo	Rolón	RM	Argentina	26	70	171	112531
219700		Patryk	Lipski	CAM	Poland	27	79	185	111091
219836	Rubén Yáñez	Rubén	Yáñez Alabart	GK	Spain	27	85	190	1860
220045		Connor	Mahoney	RM	England	24	67	175	88
220754		Danilo	Ortiz	CB	Paraguay	29	82	188	110404
221095	Dani Romera	Daniel	Romera Andújar	ST	Spain	25	69	173	1968
221251		Gboly	Ariyibi	RM	United States	26	72	183	14
221378		Carlos	Ramírez	CB	Colombia	33	81	183	112578
221601	Carlos Abad	Carlos	Abad Hernández	GK	Spain	26	88	193	1867
221665		Rasmus	Lindkvist	LWB	Sweden	31	74	183	433
221747		Gonzalo	Díaz	LM	Argentina	31	72	169	111710
222197	Bai Jiajun	Jiajun	Bai	LB	China PR	30	65	166	110955
222256		Teddy	Bishop	CM	England	25	67	178	94
222533	Nuno Valente	Nuno Daniel	Costeira Valente	CM	Portugal	29	68	174	665
222590		Mauro	Manotas	ST	Colombia	26	66	178	698
222951		Marek	Rodák	GK	Slovakia	24	85	195	1797
50569710		Beni	Baningime	CDM	Congo DR	22	70	178	1917
50571319	Tete Morente	José Antonio	Morente Oliva	LM	Spain	24	77	184	110831
67313286		Dylan	McGowan	CB	Australia	30	80	186	112427
67323617		José Luis	Muñoz	LW	Chile	34	72	178	112116
199963		Merlin	Tandjigora	CDM	Gabon	31	68	172	1889
200233		Ali	Messaoud	CAM	Morocco	30	79	185	1971
200646		Antonio	Cinelli	CM	Italy	31	73	178	192
200697		Ryan	Tafazolli	CB	England	29	93	196	1938
201038		Marco	Djuricin	ST	Austria	28	80	183	322
201484		Patrick	McEleney	CAM	Northern Ireland	28	84	180	837
201847		Louis	Bostyn	GK	Belgium	27	84	196	15005
201940		Zac	MacMath	GK	United States	30	88	188	694
202170		Michael	Boxall	CB	New Zealand	32	91	188	111138
202263		Joackim	Jørgensen	CB	Norway	32	76	183	112199
202469		David	Bingham	GK	United States	31	86	188	697
202771		Joe	Newell	LM	England	28	79	185	1797
203225		James	Jeggo	CDM	Australia	29	66	179	256
203461		Hekuran	Kryeziu	CDM	Kosovo	28	75	181	894
203751		Conor	Townsend	LB	England	28	73	183	109
203915		Emanuele	Padella	CB	Italy	32	74	185	1847
204136		Michael	de Leeuw	CF	Holland	34	67	178	693
204219		Adam	Jackson	CB	England	27	80	187	1932
204350		Aleksandar	Trajkovski	CF	FYR Macedonia	28	78	182	1843
204388		Andreas	Wiegel	RM	Germany	30	70	179	1825
204504		Fernando	Lewis	RB	Holland	28	75	180	1907
204626		Thomas	Grøgaard	LB	Norway	27	71	180	919
204850		Tokmac Chol	Nguen	RM	Norway	27	60	174	922
205353	Cristian Ceballos	Cristian	Ceballos Prieto	CAM	Spain	28	68	177	680
205644		Cosimo	Chiricò	RW	Italy	29	72	169	347
205846	David Bruno	David	Dias Resende Bruno	RB	Portugal	29	72	175	112516
206210		Simone Andrea	Ganz	ST	Italy	27	67	175	1847
206408		Terrence	Boyd	ST	United States	30	82	188	110502
207427		Matt	Lampson	GK	United States	31	91	191	111138
207429		Dominic	Samuel	ST	England	27	69	182	3
207741		Mart	Lieder	ST	Holland	31	85	188	1447
207898		Elia	Soriano	ST	Germany	32	82	184	111083
208302		Alex	Gilbey	CM	England	26	73	183	1798
208371		Mohammed	Saeid	CM	Sweden	30	64	170	113458
208589		Kolja	Pusch	CAM	Germany	28	76	181	111235
209062		Per	Frick	ST	Sweden	29	81	182	700
209335		Kristoffer	Haugen	LB	Norway	27	77	188	417
209695	Eugeni	Eugeni	Valderrama Domènech	CM	Spain	27	75	184	1854
209737	Éverton Luiz	Éverton Luiz	Guimarães Bilher	CDM	Brazil	33	70	173	112791
210011		Terell	Ondaan	LM	Holland	27	72	171	1914
210304		Hendrick	Zuck	LM	Germany	31	69	176	29
210449		Najib	Ammari	CAM	Algeria	29	69	178	110741
210670		Francesco	Fedato	LW	Italy	28	73	183	110911
210861	Alemão	Rafael	Berger	CB	Brazil	35	75	180	1474
211623		Ryan	Colclough	LM	England	26	73	184	1949
211827		Philipp	Klewin	GK	Germany	27	86	192	159
211881		Quirin	Moll	CDM	Germany	30	77	182	33
212467		Hedgardo	Marín	CB	Mexico	28	83	183	1880
212997		Eroll	Zejnullahu	CM	Kosovo	26	73	177	1831
213221		Diawandou	Diagné	CDM	Senegal	27	62	175	2013
213530		Nicolai	Poulsen	CM	Denmark	27	70	176	1786
213646	Miguel Oliveira	Miguel Aires	Fernandes Olivera	GK	Portugal	27	98	196	1887
213695		Sean	Goss	CM	Germany	25	71	178	15
213801	Rúben Oliveira	Rúben Alexandre	Gomes Oliveira	CAM	Portugal	26	66	170	666
214124		Éder	Castañeda	CB	Colombia	28	81	182	101101
214198		John	Hernández	CDM	Colombia	35	73	176	111723
214319		Francisco	Rodríguez	CDM	Colombia	34	78	186	112578
214435		Esteban	Carvajal	CDM	Chile	32	67	172	112531
214536		Yamilson	Rivera	LM	Colombia	32	68	173	101099
214661		Gaspar	Iñíguez	CM	Argentina	27	76	172	55
214703		Diego	Sánchez	GK	Chile	34	86	184	110977
214730		Ignacio	González	GK	Chile	31	81	187	112668
214837		Matías	Donoso	ST	Chile	35	87	185	112709
214983		Matías	Ibáñez	GK	Argentina	34	88	190	110395
215160		Fabrizio	Angileri	LB	Argentina	27	84	184	111706
215379		Chris	Philipps	CDM	Luxembourg	27	80	182	1871
215527		Freek	Heerkens	CB	Holland	31	80	184	1907
215999		Diego	Díaz	CB	Chile	35	73	179	112655
216237		Karim	Azamoum	CDM	France	31	74	178	1968
216665		Michele	Cremonesi	CB	Italy	33	78	183	199
216834		Manuel	Perez	CDM	France	30	71	180	1815
217620		Abdoulaye	Seck	CB	Senegal	29	95	192	230
218548		Aboubakar	Oumarou	ST	Cameroon	34	78	188	112391
219164	Yago	Yago Henrique	Severino dos Santos	CDM	Brazil	26	86	179	112391
219527		Christian	Mafla	LB	Colombia	28	66	175	101100
219595		Déinner	Quiñónes	LM	Colombia	25	72	172	110144
219636		Fabián	Manzano	CDM	Chile	27	71	173	111328
219782	Lei Tenglong	Tenglong	Lei	CB	China PR	30	75	183	111768
219995		Vittorio	Parigini	LW	Italy	25	70	180	54
220600		Adam	Lundqvist	LB	Sweden	27	65	175	698
221050		Waylon	Francis	LB	Costa Rica	30	72	175	111144
221197		Fred	Onyedinma	RM	Nigeria	24	80	185	97
221328		Elmo	Lieftink	CM	Holland	27	80	186	1907
221425		Kazuki	Nagasawa	CM	Japan	29	68	172	111575
221664		Wilder	Cartagena	CDM	Peru	26	72	180	110145
221774	Fernando Karanga	Luiz Fernando	da Silva Monte	ST	Brazil	30	73	184	111779
222154		Bryan	Carvallo	CAM	Chile	24	61	164	110980
222248	Sun Ke	Ke	Sun	RW	China PR	31	70	180	112983
222484		Daniel	Mesenhöler	GK	Germany	26	83	188	1825
222546		Leopold	Zingerle	GK	Germany	27	78	185	10030
222798	Jeong Woo Jae	Woo Jae	Jeong	LM	Korea Republic	29	70	179	2056
223067		Nahuel	Yeri	RM	Argentina	29	81	174	111707
50569161		Omar	Eddahri	CF	Sweden	30	77	185	1596
50570333		Patrick	Herrmann	RB	Germany	33	80	180	110502
50571344		Florent	Muslija	LM	Germany	23	65	172	485
199917		Jake	Forster-Caskey	CM	England	27	64	178	89
200553	Nam Joon Jae	Joon Jae	Nam	LM	Korea Republic	33	75	182	110765
200895		Josh	Morris	LM	England	29	72	182	1949
200954		Denis	Thomalla	ST	Germany	28	75	186	111235
201085		Scott	Allan	CAM	Scotland	29	67	179	78
201815		Julian	Riedel	CB	Germany	29	76	182	27
201888		Veton	Berisha	ST	Norway	27	71	175	254
202161		Fabio	Concas	RM	Italy	34	62	177	112409
202231		Hector	Jimenez	LB	United States	32	64	175	687
202661		David	Boysen	RM	Denmark	30	71	179	700
202808		Nicholas	Yennaris	CM	England	28	70	170	1925
203265		Tyler	Blackett	LB	England	27	87	188	1793
203464		Tommie	Hoban	CB	Republic of Ireland	27	84	188	77
203966		Dennis	Kempe	LWB	Germany	35	86	187	506
204132		Ayub Timbe	Masika	LM	Kenya	28	60	170	112537
204220		Curtis	Edwards	CM	England	27	70	180	113173
204354		Jak	Alnwick	GK	England	28	82	188	86
204422		Dylan	McGowan	CB	Australia	30	80	186	112115
204445		Michael	Smith	RB	Northern Ireland	32	71	180	80
204619		Dylan	De Belder	ST	Belgium	29	72	182	1750
204842		Yanick	Brecher	GK	Switzerland	28	88	196	894
205045		Nils	Röseler	CB	Germany	29	70	190	100651
205388		Ogou Edmond	Akichi	CDM	Côte d'Ivoire	31	75	178	111817
205672		Kai	Heerings	CB	Holland	31	81	191	634
205724		Ivan	Lanni	GK	Italy	31	77	188	1847
206074		Michele	Fornasier	CB	Italy	27	80	186	200
206489		Ezekiel	Fryers	LB	England	28	80	183	1932
207428		José	Valencia	ST	Colombia	29	83	186	10019
207622		Martin	Bjørnbak	CB	Norway	29	90	193	918
207769		Pablo Nicolás	Caballero	ST	Argentina	35	79	191	1861
208165		Berat	Djimsiti	CB	Albania	28	83	190	39
208309		Ibrahima	Cissé	CDM	Belgium	27	84	181	144
208834		Baptiste	Aloé	CB	France	27	77	184	110456
208974		Hattan	Bahebri	LM	Saudi Arabia	29	67	171	111674
209320		Nicolas	Saint-Ruf	CB	France	28	85	187	1823
209484		Hadi	Sacko	RM	Mali	27	79	183	472
209703		Sven	Nieuwpoort	CB	Holland	28	72	180	635
209937	Quini	Joaquín	Marín Ruiz	RB	Spain	31	74	178	110832
210184		Assaf Ahmed	Al Qarni	GK	Saudi Arabia	37	81	183	607
210409		Lewis	MacLeod	CM	Scotland	27	72	175	1925
210536		Anatole	Ngamukol	ST	Equatorial Guinea	33	70	178	379
210867		Theofanis	Tzandaris	CDM	Greece	28	70	172	1884
211238		Luc	Kassi	CAM	Côte d'Ivoire	26	74	179	917
211820		Phil	Ofosu-Ayeh	RB	Ghana	29	87	181	110
211874		Simon	Scherder	CB	Germany	28	86	189	531
212420		Mouhamadou-Naby	Sarr	CB	France	27	89	196	89
212493		Sullay	Kaikai	LM	England	25	70	182	1799
213089		Godsway	Donyoh	LW	Ghana	26	71	179	1788
213301		Sascha	Horvath	RM	Austria	24	67	165	503
213577	Puertas	Antonio José	Rodríguez Díaz	RM	Spain	29	77	183	110832
213659		Fankaty	Dabo	RB	England	25	76	181	5
213736		Jesse	Gonzalez	GK	United States	26	84	193	695
214019		Daniel	Giraldo	CDM	Colombia	29	70	178	101102
214178		Juan Camilo	Vela	CAM	Colombia	28	69	174	112019
214291		Camilo	Rodríguez	RB	Chile	26	66	170	112584
214358		Juan Pablo	Nieto	CM	Colombia	28	74	178	101106
214507		Ánderson	Zapata	CB	Colombia	36	79	183	101099
214613		Félix	Micolta	ST	Colombia	31	76	179	110152
214695		Jorge	Ampuero	CB	Chile	34	82	183	110977
214715		Leonardo	Povea	CM	Chile	27	73	176	111327
214779		Bruno	Vides	ST	Argentina	28	73	178	110395
214929	Varela	Francisco	Varela Martín	LB	Spain	26	68	174	110066
215010		Emanuel	Brítez	RB	Argentina	29	78	180	110093
215169		Facundo	Castillón	RM	Argentina	35	71	173	111707
215380		Guido	Milan	CB	Argentina	34	92	194	110145
215701		Erik	Bakker	CM	Holland	31	77	178	635
216017		Héctor	Berríos	RB	Chile	34	67	174	112534
216286		Jeppe	Andersen	CM	Denmark	28	75	178	708
216799		Gianluca	Di Chiara	LB	Italy	28	80	185	112026
216981		Gervane	Kastaneer	LM	Holland	25	85	185	1904
218214		Fakhereedine	Ben Youssef	ST	Tunisia	30	86	190	112096
218744		Jack	Byrne	CM	Republic of Ireland	25	73	176	1920
219480	Naldo	Marinaldo	dos Santos Oliveira	CDM	Brazil	31	75	185	113057
219587		Alessandro	Martinelli	CDM	Switzerland	28	69	176	190
219605		Cristián	Cuevas	LB	Chile	26	64	173	256
219715		Raffaele	Di Gennaro	GK	Italy	27	80	185	44
219938		Lorenzo	Rosseti	ST	Italy	27	74	182	1847
220502		Mattia	Zaccagni	CM	Italy	26	63	177	206
220876		Franck	Honorat	RM	France	24	70	180	1815
221120		Rai	Vloet	CAM	Holland	26	75	188	111657
221284		Jonathan	Gradit	RB	France	28	77	180	210
221401	Alemão	Fagner	Ironi Daponte	CB	Brazil	30	83	185	113222
221625		Patrick	Mullins	ST	United States	29	78	185	687
221684		Ben	Sweat	LB	United States	29	79	188	112828
221969		Filip	Mladenović	LB	Serbia	29	65	180	111091
222235	Ren Hang	Hang	Ren	CB	China PR	32	77	185	112978
222528		Lynden	Gooch	CAM	United States	25	69	173	106
222645		Leonel	López	CDM	Mexico	27	65	174	110781
222969		Jérôme	Hergault	RB	France	35	80	185	614
223104		Marc	McNulty	ST	Scotland	28	70	178	1793
50570308		Nazim	Sangaré	RB	Germany	27	72	185	741
50570773		Erik	Botheim	ST	Norway	21	75	185	298
50573243		Santy	Ngom	ST	Senegal	28	85	181	1823
67324502		Liam	Lindsay	CB	Scotland	25	89	193	1806
67327608		Jack	Byrne	CM	Republic of Ireland	25	73	176	306
67345168	Josema	José Manuel	Sánchez Guillén	CB	Spain	25	81	184	15019
200130		Rémi	Mulumba	CM	Congo DR	28	76	180	2013
200466		Vitus	Eicher	GK	Germany	30	85	191	111235
200845		Patrick	Hoban	ST	Republic of Ireland	30	84	180	837
200953		Christoph	Hemlein	RM	Germany	30	79	181	29
201352		Alessandro	Iacobucci	GK	Italy	30	82	187	111657
201816		Thomas	Geyer	CB	Germany	30	71	179	550
201944		Christoffer	Remmer	RB	Denmark	28	79	182	417
202179		Zeli	Ismail	RM	England	27	75	178	1803
202422		Alex	Woodyard	CDM	England	28	58	175	1938
202749	Kim Oh Gyu	Oh Gyu	Kim	CB	Korea Republic	32	70	183	112115
202915	Quintanilla	Álex	Quintanilla	CB	Spain	31	79	183	1867
203331		Lloyd	Isgrove	RM	Wales	28	72	178	1932
203749		Sonny	Bradley	CB	England	29	90	196	1923
203795		Bruno	Romo	CB	Chile	32	86	186	112533
204042		Marco	Perrotta	CB	Italy	27	78	184	200
204211		Paul	Papp	CB	Romania	31	80	188	101041
204242		Michaël	Barreto	CAM	France	30	63	174	57
204380		Johannes	Brinkies	GK	Germany	28	87	188	110592
204424		Paul	Izzo	GK	Australia	26	81	184	111393
204534		Nelson	Ramos	GK	Colombia	39	83	188	112992
204730		Jacob	Schoop	CM	Denmark	32	72	176	822
205094	Jo Young Cheol	Young Cheol	Jo	LM	Korea Republic	32	83	181	111588
205443		Soufian	Benyamina	ST	Germany	31	79	190	110746
205676	Tekio	Sergio	Blázquez Sánchez	RB	Spain	31	72	175	468
206035	Eddy	Eddy Silvestre	Pascual Israfilov	CDM	Azerbaijan	29	80	191	100831
206053		Davide	Marsura	ST	Italy	27	78	187	205
206431		Roman	Buess	ST	Switzerland	28	78	184	898
207610		Ryan	Meara	GK	Republic of Ireland	30	84	193	689
207806		Brennan	Dickenson	LM	England	28	81	183	1935
208018		Thomas	Lam	CB	Finland	27	76	188	1914
208323		Cyriaque	Rivieyran	RB	France	30	68	172	1813
208782		Mickey	van der Hart	GK	Holland	27	91	190	1914
209287		Jean-Marie	Dongou Tsafack	ST	Cameroon	26	70	176	110831
209471	Augusto	Augusto	Pereira Loureiro	CDM	Portugal	33	80	180	111092
209717		Giovani	Hernández	CM	Mexico	28	73	173	101121
209852		Brendan	Galloway	LB	England	25	74	186	7
210205		Dion	Malone	RB	Suriname	32	85	185	650
210389		Brad	Smith	LB	Australia	27	70	177	111144
210635		Kortney	Hause	CB	England	26	93	191	110
210742		Melker	Hallberg	CM	Sweden	25	69	180	822
211732		Timmy	Thiele	ST	Germany	30	84	188	29
211793		James	Donachie	CB	Australia	28	87	195	1475
211850		Manfred	Starke	CF	Namibia	30	81	179	110591
212439	Lim Chai Min	Chai Min	Lim	CB	Korea Republic	30	83	189	2055
212608		Jérôme	Mombris	LB	Madagascar	33	68	187	1805
213117		Stefan	Lex	RM	Germany	31	74	178	33
213428		Clint	Irwin	GK	United States	32	88	191	111651
213602		Osvaldo	Bosso	RB	Chile	27	69	167	101097
213724	Bicho	Javier	Fernández Abruñedo	CAM	Spain	25	63	173	242
213798		Alex	Mowatt	LM	England	26	71	175	1932
214069		Jean Paul	Pineda	LW	Chile	32	74	177	112534
214192		Jefferson	Mena	CB	Colombia	32	79	183	111707
214254		Bastián	San Juan	CB	Chile	27	76	177	112116
214330		Maicol	Balanta	RM	Colombia	31	77	178	112579
214495		Elvis	Mosquera	LB	Colombia	30	77	182	101103
214583		Cristian	Vargas	GK	Colombia	31	82	184	101100
214684		Sebastián	Jaime	ST	Argentina	34	71	179	110977
214701		Tomás	Asta-Buruaga	CB	Chile	24	70	185	112533
214753		José Luis	Muñoz	LW	Chile	34	72	178	111328
214919		Diego	Rojas	CAM	Chile	26	52	164	110975
215013		Santiago	Zurbriggen	CB	Argentina	31	69	178	111716
215195		Sander	Svendsen	ST	Norway	24	67	172	708
215477		Ivan	Kecojević	CB	Montenegro	33	85	191	1968
215584		Jakub	Wójcicki	RB	Poland	33	80	190	110745
215818		Emerson	Hyndman	CM	United States	25	61	170	81
216245		Luis	Cárdenas	GK	Mexico	27	84	183	110150
216789		Emanuele	Suagher	CB	Italy	28	82	192	112409
216823		Vincent	Vermeij	ST	Holland	26	91	196	100634
217153	Wu Xi	Xi	Wu	CDM	China PR	32	75	180	112162
218658		Dominic	Iorfa	RB	England	26	78	193	110
219293		Michał	Helik	CB	Poland	25	80	191	110747
219522		Jeremías	Ledesma	GK	Argentina	28	83	185	110580
219604		Moussa	Sao	LM	France	31	74	186	111273
219688		Marcos Mauro	López	CB	Argentina	30	80	187	1968
219759		Salvatore	Molina	RM	Italy	29	75	177	110734
219948		Jason	Cummings	ST	Scotland	26	63	178	1938
220708		Brandon	Borrello	RM	Australia	26	79	178	25
220915		Gabriele	Moncini	ST	Italy	25	75	183	112791
221246		Diego	Gómez	RM	Colombia	32	65	172	112528
221358		Jordan	Rossiter	CDM	England	24	64	178	86
221461		Armando	Vargas	CAM	Colombia	32	70	170	111723
221662		Simon	Skrabb	ST	Finland	26	75	174	702
221709		Tommy	Thompson	RM	United States	25	65	170	111928
221862		Valentin	Lavigne	RW	France	27	76	180	217
222161		Mounir	El Allouchi	LM	Morocco	26	72	172	1904
222240	Ji Xiang	Xiang	Ji	RB	China PR	31	78	185	112162
222319		Jeison	Ángulo	LB	Colombia	25	74	182	101102
222535		Luis	Orejuela	RB	Colombia	25	71	180	245
222773		Luca	Zander	RB	Germany	25	73	183	110329
222922		Jake	Hesketh	CAM	England	25	63	168	17
50569428		Kazuya	Yamamura	CAM	Japan	31	80	186	111730
50570530	Dani Ojeda	Daniel	Ojeda Saranova	LM	Spain	26	75	180	110832
50571411		Edon	Zhegrova	RW	Kosovo	22	69	174	896
67319959		Nicolai	Brock-Madsen	ST	Denmark	28	80	190	1446
67327524		Josh	Sims	RW	England	24	65	168	17
67333985	Castro	Carlos	Castro García	ST	Spain	26	68	176	468
84122326		Ovie	Ejaria	CM	England	23	75	183	1793
50573647		Jean-Claude	Billong	CB	France	27	88	192	110911
67320684		Phil	Ofosu-Ayeh	RB	Ghana	29	87	181	110197
67325845		Gervane	Kastaneer	LM	Holland	25	85	185	1800
67341486		Shun	Nagasawa	ST	Japan	32	82	192	112836
117663434		Jake	Hesketh	RM	England	25	63	168	1798
27532		Dorus	de Vries	GK	Holland	40	96	190	78
49659		Karim	Ziani	RW	Algeria	38	66	169	112276
102084		Luca	Belingheri	CM	Italy	38	70	182	110912
111590		Liam	Feeney	RM	England	34	76	183	1926
135032		Niki	Zimling	CDM	Denmark	36	73	178	1447
138297		Arturo	Alvarez	RM	El Salvador	36	77	175	698
139866		Glenn	Loovens	CB	Holland	37	74	190	106
143018		Germán	Herrera	ST	Argentina	38	83	180	110580
143751		Ferhat	Öztorun	LB	Turkey	34	66	176	101033
151376		Kari	Arkivuo	LB	Finland	38	72	176	711
156313		Adam	El-Abd	CB	Egypt	36	88	180	1933
156903		José	De la Cuesta	CB	Colombia	38	73	184	111723
157482		Jamie	Mackie	ST	Scotland	35	71	173	1951
159040		Gianni	Munari	CM	Italy	38	84	190	50
163571		Matt	Jarvis	LM	England	35	72	170	1792
165031		Carlos Javier	Acuña	ST	Paraguay	33	75	175	1854
166847		Chris	McCann	CDM	Republic of Ireland	34	75	185	112885
169458		Alex	Bruce	CB	Northern Ireland	36	81	180	1917
170784		Charles-André	Doudin	CAM	Switzerland	34	80	184	435
171723		Andrea	Mengoni	CB	Italy	37	96	187	1847
171970		Ed	Upson	CM	England	31	73	180	1962
173673		Stephen	Quinn	CM	Republic of Ireland	35	60	168	15015
173891		Lucas	Akins	ST	England	32	79	178	15015
175092		Maynor	Figueroa	LB	Honduras	38	85	181	695
176849		Pierre	Gibaud	LB	France	33	80	184	1805
176996		Antony	Robic	RW	France	35	76	180	1823
177488		Manuel	Konrad	CDM	Germany	33	88	187	167
177912		Magnus	Lekven	CM	Norway	33	72	177	920
178379		Jordan	Harvey	LB	United States	37	80	180	112996
179663		Tommy	Rowe	LM	England	32	81	180	142
180174		Björn	Kopplin	LB	Germany	32	80	183	269
181831	Yang Cheng	Cheng	Yang	GK	China PR	35	78	188	112978
182094	Qin Sheng	Sheng	Qin	CDM	China PR	34	76	183	112378
182878	Jonathan Reis	Jonathan	de Lima Reis	ST	Brazil	32	78	182	112444
182996	Xiao Zhi	Zhi	Xiao	ST	China PR	36	80	187	112429
183477		Marek	Štěch	GK	Czech Republic	31	89	191	1923
223114		Eren	Tozlu	LM	Turkey	30	74	178	113259
223143		Ulisses	Garcia	LB	Switzerland	25	78	183	900
223302	Samu	Fábio Samuel	Amorim Silva	LM	Portugal	25	66	170	1898
223581		Jonathan	Iglesias	CDM	Uruguay	32	69	171	1815
223826	Mei Fang	Fang	Mei	CB	China PR	31	78	187	111839
223979	Paolo Fernandes	Paolo	Fernándes Cantin	RM	Spain	22	61	171	1904
224123		Davide	Agazzi	CM	Italy	28	70	173	1844
224213		Tyronne	Ebuehi	RB	Nigeria	25	72	187	234
224496		Germán	Gutiérrez	LB	Colombia	31	75	170	101101
224558	Yu Rui	Rui	Yu	CB	China PR	28	76	185	111769
224724		Tayfur	Bingöl	RM	Turkey	28	74	180	101026
224956		Daniel	Crowley	CAM	England	24	71	170	1907
225120		Rachid	Aït-Atmane	CDM	Algeria	28	78	189	459
225273		Mads	Døhr Thychosen	RWB	Denmark	24	65	178	1516
225692		Matthias	Bader	RB	Germany	24	73	176	31
226130		Florian	Miguel	LB	France	24	70	179	224
226403		Federico	Crivelli	GK	Argentina	39	82	185	111715
226646		Felipe	Banguero	LB	Colombia	32	74	184	101105
227549		Ramón	Arias	CB	Uruguay	29	72	180	112096
227656		David	Milinković	LW	France	27	70	178	1952
227794		Calvin	Verdonk	LB	Holland	24	70	174	246
227978		Marvin	Mehlem	CAM	Germany	23	67	174	110502
228205		Daniel	Cardoso	CB	South Africa	32	78	184	110929
228388		Mamadou	Thiam	ST	Senegal	26	82	180	1932
228873		Ludcinio	Marengo	LW	Holland	29	70	175	919
229154		Jan	Kliment	ST	Czech Republic	27	78	185	36
229319		Jhonder	Cádiz	ST	Venezuela	26	74	191	665
229694	Moon Seon Min	Seon Min	Moon	LW	Korea Republic	29	68	172	110765
229721	Jajá	Hugo	Gomes dos S. Silva	CM	Brazil	26	70	178	1439
229911		Myles	Kenlock	LB	England	24	67	185	94
230568		Nathaël	Julan	ST	France	25	83	196	62
230817	José Machín	José Ndong	Machín Dicombo	CM	Equatorial Guinea	24	74	184	200
230991		Fafà	Picault	LM	United States	30	64	173	112134
231108		Silvan	Hefti	CB	Switzerland	23	78	184	898
231366		Philipp	Lienhart	CB	Austria	25	80	189	25
231841		Maxence	Prévot	GK	France	24	70	184	226
231885		Kosuke	Ota	LB	Japan	34	78	178	101150
232082		Andrew	Tarbell	GK	United States	27	88	191	111928
232595	Ko Seung Beom	Seung Beom	Ko	RM	Korea Republic	27	72	175	2056
232599		Yuta	Nakayama	CB	Japan	24	76	181	101145
232697		Lautaro	Geminiani	RB	Argentina	30	74	178	110581
232875		Daigo	Nishi	RB	Japan	33	73	176	101147
233226		Tatsuki	Nara	CB	Japan	27	77	180	111730
233290		Rifat	Zhemaletdinov	ST	Russia	24	80	184	100765
233763		Pontus	Dahlberg	GK	Sweden	22	90	195	1795
233897		Mamadou	Fall	RM	Senegal	29	72	184	670
234197		Indy	Groothuizen	GK	Holland	25	88	190	650
234383		Markus	Schubert	GK	Germany	23	83	186	503
234741		Gustavo	Hamer	CM	Holland	24	61	168	1914
234833		Florian	Müller	GK	Germany	23	85	192	169
235126		Francesco	Orlando	RW	Italy	24	65	168	110373
235458		Cédric	Kipré	CB	France	24	95	193	1917
235579		Milan	Massop	LB	Holland	27	75	184	110913
235973		Sebastian	Szymański	CAM	Poland	22	58	174	1871
236273		Karlo	Bartolec	RWB	Croatia	26	78	176	1788
236508	Adrián Diéguez	Adrián	Diéguez Grande	CB	Spain	25	69	187	463
67328500		Fabián	Manzano	CDM	Chile	27	71	173	112535
84068176	Zheng Long	Long	Zheng	LW	China PR	33	70	178	112378
11381		Matt	Gilks	GK	Scotland	39	81	185	1949
45574		Rafael	van der Vaart	CM	Holland	38	74	176	1445
53593		Gary	O'Neil	CDM	England	38	61	173	4
104702		Daniel	Braaten	RW	Norway	39	94	184	919
122541		Tommy	Naurin	GK	Sweden	37	86	187	1596
134828		Kirk	Broadfoot	CB	Scotland	36	89	191	82
138181		Michael	Turner	CB	England	37	90	193	1954
139609		Craig	Conway	LM	Scotland	36	67	171	3
141111		Zlatko	Dedič	ST	Slovenia	36	77	183	2045
144160		Tolgahan	Acar	GK	Turkey	35	78	187	101041
149825		Daryl	Murphy	ST	Republic of Ireland	38	88	191	14
152870	Felipe Saad	Felipe	Patavino Saad	CB	Brazil	37	83	187	217
156894		Darren	Pratley	CM	England	36	69	185	89
157321		Keiji	Tamada	ST	Japan	41	67	173	112092
159375		Shane	Supple	GK	Republic of Ireland	34	76	183	305
162314		Peter	Whittingham	CM	England	36	63	178	3
163865		Craig	Morgan	CB	Wales	36	89	187	112260
165449		Gary	Dicker	CDM	Republic of Ireland	35	81	183	82
165908	Oh Beom Seok	Beom Seok	Oh	RB	Korea Republic	37	77	181	112115
169422	André Bahia	André Luiz	Bahia dos Santos	CB	Brazil	37	85	182	113161
170879		Shaun	MacDonald	CDM	Wales	33	72	185	1917
171682		Roy	Miller	CB	Costa Rica	36	75	187	111140
172041		Tobias	Mikkelsen	LM	Denmark	34	73	178	111395
173155		Antonino	Barillà	CM	Italy	33	78	180	50
173834		Neal	Eardley	RB	Wales	32	74	180	149
175818		Tom	De Sutter	ST	Belgium	36	87	192	2007
176575		Scott	Sutter	RB	Switzerland	35	81	180	112606
177099		Toni	Wachsmuth	CB	Germany	34	80	182	110592
177598		Sascha	Traut	RB	Germany	36	80	183	550
178187		Chris	Kum	RB	Germany	35	71	183	100651
178589		Scott	Jamieson	LB	Australia	32	71	177	112224
179685		Chris	Seitz	GK	United States	34	107	191	698
181013		Nordin	Gerzić	CM	Sweden	37	79	175	705
181976	Yang Zhi	Zhi	Yang	GK	China PR	38	79	186	111768
182464	Zhao Mingjian	Mingjian	Zhao	RB	China PR	33	75	183	112978
182897		Sébastien	Bruzzese	GK	Belgium	32	80	185	100081
183377		Jonatan Tollås	Nation	CB	Norway	31	86	188	920
183527		Jay	Spearing	CM	England	32	70	168	1926
223117		Jeffry	Fortes	RB	Cape Verde Islands	32	75	183	1971
223268		Tony	Andreu	CAM	France	33	73	178	1800
223339	Zé Manuel	José Manuel	da Silva Oliveira	LW	Portugal	30	71	178	1438
223671		Stefan	Posch	CB	Austria	24	76	188	10029
223877		Darnell	Furlong	RB	England	25	76	180	15
224021		Sheyi	Ojo	RW	England	24	82	179	379
224140		Juan Pablo	Miño	CDM	Argentina	33	83	181	112531
224389		Jordan	Larsson	ST	Sweden	24	69	175	702
224509		Ulises	Rivas	CM	Mexico	25	71	179	110144
224604	Wang Shenchao	Shenchao	Wang	RB	China PR	32	72	180	112540
224761		Tomasz	Loska	GK	Poland	25	79	189	420
224962		Mohammed	Al Kuwaykibi	RM	Saudi Arabia	26	61	168	112096
225050		Abdoul	Ba	CB	Mauritania	27	96	200	57
225316		Jack	Hendry	CB	Scotland	26	76	188	78
225636		Lukas	Boeder	RB	Germany	24	81	184	10030
226103	Akieme	Sergio	Akieme Rodríguez	LB	Spain	23	65	175	480
226285		Raúl	Gudiño	GK	Mexico	25	84	195	1880
226431		Leonardo	da Silva Lopes	RM	Portugal	22	61	168	1917
227370		Michael	Zetterer	GK	Germany	26	79	187	38
227746		Alexander	Jakobsen	CM	Egypt	27	73	180	702
227982	Jang Yun Ho	Yun Ho	Jang	CM	Korea Republic	24	68	178	1477
228120		Kenneth	Paal	LB	Holland	24	70	177	1914
228290		Julien	Laporte	CB	France	27	82	185	1815
228768	Xande Silva	Alexandre	Costa Silva	ST	Portugal	24	68	177	19
228961		Mauro	Pittón	CDM	Argentina	26	70	174	111716
229248	Alan Schons	Alan Eduardo	Schons	CM	Brazil	28	74	180	1900
229619		Felipe	Carvalho	CB	Uruguay	27	96	188	920
229637		Gökhan	Akkan	GK	Turkey	26	80	186	101037
229728		Florian	Kamberi	ST	Switzerland	26	86	189	81
229912		Joshua	Emmanuel	RB	England	23	70	180	94
230758		Matej	Pučko	ST	Slovenia	27	68	176	111083
230800		Rey	Manaj	ST	Albania	24	76	182	1854
230975		Duván	Vergara	RM	Colombia	24	72	172	112526
231098		Charles	Traoré	LB	Mali	29	74	180	294
231587		Luis Alberto	Caicedo	CM	Colombia	25	67	172	691
231815		Iván	Ochoa	CDM	Mexico	24	72	182	112584
231878		Tyler	Miller	GK	United States	28	93	193	112996
232049		Brandon	Vincent	LB	United States	27	79	180	693
232380		Yūki	Mutō	CF	Japan	32	68	170	111575
232620		Kotaro	Omori	RM	Japan	29	70	170	101150
232698		Matías	Garrido	LM	Argentina	35	67	170	110581
233034		Juan	Andrada	CDM	Argentina	26	77	183	111706
233436		Asavela	Mbekile	RB	South Africa	34	72	172	110930
233809		Alessandro	Rossi	ST	Italy	24	80	184	46
234163		Keanu	Staude	LM	Germany	24	70	176	159
234284		Cebio	Soukou	LM	Germany	28	82	186	27
234433	Ícaro	Ícaro	do Carmo Silva	CB	Brazil	32	74	181	112516
234814		Jean	Ruiz	CB	France	23	80	188	226
235152		Ferdi	Kadioglu	CAM	Holland	21	64	173	326
235466	Quim Araujo	Joaquin	Araujo Delgado	CAM	Spain	33	81	189	1867
236246		Ovie	Ejaria	CM	England	23	75	183	86
236304	Josema	José Manuel	Sánchez Guillén	CB	Spain	25	81	184	226
236669		Emiliano	Purita	RB	Argentina	24	69	179	111714
236752		Daouda Karamoko	Bamba	ST	Côte d'Ivoire	26	75	184	919
236918		Anders	Dreyer	RM	Denmark	23	70	172	1808
237257		Jackson	Yueill	CM	United States	24	75	178	111928
657		David	Vaughan	CDM	Wales	38	70	168	1937
46857		Morten Gamst	Pedersen	CM	Norway	39	74	183	418
49966		Philippe	Senderos	CB	Switzerland	36	84	190	698
104442		Chris	Burke	RM	Scotland	37	68	175	82
117063		Nicolas	Douchez	GK	France	41	85	185	111273
134777		Grégory	Bourillon	CB	France	37	78	187	212
138151		John	Welsh	CDM	England	37	73	170	92
138722		Billy	Jones	RB	England	34	77	180	1797
141265		Mihael	Mikić	RM	Croatia	41	68	177	113161
144010		Yekta	Kurtuluş	CDM	Turkey	35	70	175	741
145014	Juande	Juan de Dios	Prados López	CDM	Spain	34	75	183	111399
152620		Jone	Samuelsen	CM	Norway	37	70	172	1456
156464		Richard	Wood	CB	England	36	82	191	1797
157300		Jérémy	Blayac	ST	France	38	80	187	110316
158172		Michael	Parensen	LB	Germany	35	79	180	1831
161667		Luis	Robles	CDM	Mexico	34	70	170	110152
164467		Jamie	Ward	ST	Northern Ireland	35	59	165	14
165485		Jason	Demetriou	RB	Cyprus	33	68	180	1954
167512		Shaun	Whalley	RM	England	34	67	176	127
170785		Guillaume	Faivre	GK	Switzerland	34	83	188	1715
171721		Romano	Perticone	LB	Italy	34	76	184	110373
171772	Chus Herrero	Jesús María	Herrero Gómez	CB	Spain	37	75	183	1854
173337		Yasuyuki	Konno	CDM	Japan	38	73	178	112093
173752		Chris	Gunter	RB	Wales	32	71	180	1793
175313		Erton	Fejzullahu	ST	Kosovo	33	80	180	1439
176645		Zdeněk	Zlámal	GK	Czech Republic	35	92	193	80
177340		Pierluigi	Frattali	GK	Italy	35	75	185	50
177605	Jon Erice	Jon	Erice Domínguez	CM	Spain	34	72	177	1854
178150		Karamoko	Cissé	ST	Guinea	32	78	184	206
178490		Robert	Acquafresca	ST	Italy	33	80	184	110770
179687		José Joaquín	Martínez	RB	Mexico	34	69	175	110147
181149		André	Hainault	CB	Canada	35	80	184	29
181846	Wang Yongpo	Yongpo	Wang	CM	China PR	34	71	178	112983
182422	Zhang Lu	Lu	Zhang	GK	China PR	33	85	192	112983
182883		Kieran	Agard	ST	England	31	67	176	1798
183356		Thomas	Ayasse	CDM	France	34	75	183	378
183712		Sascha	Mölders	ST	Germany	36	82	187	33
223123		Emre	Güral	RM	Turkey	32	79	187	113142
223157		Andrija	Novakovich	ST	United States	24	78	191	634
223511		Issam	Chebake	RB	Morocco	31	73	176	113259
223790		Sheraldo	Becker	RW	Holland	26	75	180	650
223870		Nabil	Aankour	CAM	Morocco	27	70	172	111082
224014		Mateusz	Szwoch	CAM	Poland	28	60	173	1569
224150		Javier	Salas	CM	Mexico	27	73	182	1878
224444		Haris	Belkebla	CM	Algeria	27	68	177	378
224494		Rico	Henry	LB	England	24	66	170	1925
224633	He Guan	Guan	He	CB	China PR	28	79	181	112540
224774		Hakan	Çinemre	CB	Turkey	27	77	183	101026
224980		Marnon	Busch	RB	Germany	26	80	182	111235
225013		Miroslav	Čovilo	CDM	Serbia	35	87	193	110747
225121	Castro	Carlos	Castro García	ST	Spain	26	68	176	453
225572		Omar	Albornoz	LB	Colombia	25	78	183	111722
225769		George	Dobson	CM	England	23	75	185	1803
226390		Renzo	Vera	CB	Argentina	38	86	183	110581
226495	Sergio Santos	Sergio Henrique	Santos Gomes	LW	Brazil	26	77	180	101097
227528		Braian	Romero	ST	Argentina	30	70	175	110093
227675		Marvin	Johnson	LM	England	30	74	178	12
227832		Eloge Koffi	Yao Guy	CB	Côte d'Ivoire	25	76	182	10032
228033	Chi Zhongguo	Zhongguo	Chi	CM	China PR	31	65	174	111768
228245		Marvin	Wanitzek	CM	Germany	28	74	179	1832
228699		Dries	Wouters	CDM	Belgium	24	81	191	673
228774		Vincent	Marchetti	CM	France	24	70	181	1823
229083		Christian	Jakobsen	LM	Denmark	28	84	189	1447
229144		Matías	Campos López	ST	Chile	27	75	178	111328
229288		Rody	de Boer	GK	Holland	23	87	188	1906
229628	Fali	Rafael	Jiménez Jarque	CDM	Spain	27	84	186	15019
229713		José	Bizama	RB	Chile	27	75	178	111327
229856		Javier	Parraguez	ST	Chile	31	86	183	111327
229917		Andrea	Gasbarro	LB	Italy	26	72	182	1844
230789	Matheus Índio	Matheus	da Cunha Gomes	RM	Brazil	25	70	170	1898
230872		Mile	Svilar	GK	Belgium	21	81	189	234
230994		Martin	Bukata	CM	Slovakia	27	69	175	112026
231318		Romain	Perraud	LB	France	23	68	173	111817
231733	Curro Sánchez	Francisco Jose	Sánchez Rodriguez	LM	Spain	25	68	176	481
231848		Quentin	Boisgard	CAM	France	24	75	174	1809
231966		Ken	Kallaste	LB	Estonia	32	80	182	111083
232374		Tomoya	Ugajin	LM	Japan	33	71	172	111575
232598		Daiki	Niwa	CB	Japan	35	72	181	101150
232643		Leon	Guwara	LB	Germany	25	83	185	1903
232699		Lautaro	Comas	RW	Argentina	26	67	172	110581
233151		Koji	Miyoshi	LM	Japan	24	64	167	112444
233279	Park Dong Jin	Dong Jin	Park	CB	Korea Republic	26	72	182	982
233588	Elgezabal	Unai	Elgezabal Udondo	CB	Spain	28	74	185	100831
233794		Simone	Edera	RW	Italy	24	67	174	54
234032	Lluis López	Lluis	López Marmol	CB	Spain	24	79	182	452
234283		Simon	Skarlatidis	RM	Germany	30	71	174	110197
234740		Mo	El Hankouri	LW	Morocco	24	70	176	246
234791	Luan Peres	Luan	Peres Petroni	CB	Brazil	27	79	190	231
234925		Kik	Pierie	LB	Holland	21	75	183	1913
235317		Jhon	Mosquera	LM	Colombia	31	78	186	101102
235515	Benito	Benito	Ramírez del Toro	LM	Spain	26	74	178	472
235996		Nicolas	Moumi Ngamaleu	ST	Cameroon	27	74	181	900
236368		Giulio	Maggiore	CM	Italy	23	69	184	110741
236696		Anastasios	Chatzigiovanis	LM	Greece	24	70	176	1884
237004	Hwang Ki Wook	Ki Wook	Hwang	CM	Korea Republic	25	77	185	982
237252		Jakob	Nerwinski	RB	United States	26	79	183	101112
20699		Kennedy	Bakırcıoğlu	CM	Sweden	40	77	181	708
47020		Kevin	Begois	GK	Belgium	39	79	185	1915
51694		Håkon	Opdal	GK	Norway	39	92	188	1524
104476		Christian	Grindheim	CAM	Norway	38	74	179	1463
105533		Łukasz	Załuska	GK	Poland	39	88	190	110746
125586		Stephan	Andersen	GK	Denmark	39	82	188	819
137267		Ricardo	Clark	CDM	United States	38	73	178	687
139489		Francisco	Torres	CM	Mexico	38	70	171	111035
142270		Johnny	Thomsen	RB	Denmark	39	76	180	1786
143133		Diego	Herner	CB	Argentina	38	83	186	101099
144282		Serdar	Özkan	LM	Turkey	34	68	172	741
152107		Philipp	Netzer	CB	Austria	35	80	188	15009
156478		Yuki	Abe	CM	Japan	39	77	178	111575
157018		Melitón	Hernández	GK	Mexico	38	82	182	110145
158167		Mario	Sonnleitner	CB	Austria	34	82	182	254
159578		Clayton	Donaldson	ST	Jamaica	37	80	185	4
163616		Jamie	Young	GK	England	35	83	180	111395
165243		Cédric	Cambon	CB	France	34	76	184	112276
165894	Yang Dong Hyen	Dong Hyen	Yang	ST	Korea Republic	35	80	186	101148
167694		Matthew	Connolly	RB	England	33	84	188	1961
207627		Hernán	Pertuz	CB	Colombia	32	78	183	101103
207763		Alan	Mendoza	LB	Mexico	27	77	173	1881
207904		Michał	Mak	LM	Poland	29	60	172	111091
208174		Mayoro	N'Doye	CM	Senegal	29	67	176	110316
208513		Alejandro	Guido	CM	United States	27	77	179	111678
208676		Nick	Fitzgerald	RW	Australia	29	70	175	112427
208898		Daniel	Łukasik	CDM	Poland	30	73	179	111091
209223		Awadh Khamis	Al Faraj	CDM	Saudi Arabia	33	68	172	112139
209402		Elton	Acolatse	RM	Holland	26	80	180	680
209761		Daniel	Steres	CB	United States	30	77	183	697
210253		Jordy	Tutuarima	LB	Holland	28	67	169	635
210477		Patrick	Möschl	RW	Austria	28	68	174	503
210941	Lee Chang Geun	Chang Geun	Lee	GK	Korea Republic	27	75	186	1478
210726	Jin Seong Wook	Seong Wook	Jin	ST	Korea Republic	27	78	183	1478
210990		Eslam	Sarraj	ST	Saudi Arabia	32	75	180	113219
211059		Rodrigo	Godínez	CB	Mexico	28	69	185	111035
211214		Fabrice	Olinga	LM	Cameroon	25	68	178	111560
211373		Nasiru	Mohammed	RW	Ghana	27	70	172	711
211227		Michał	Kopczyński	CDM	Poland	29	65	180	111766
211565	Higinio	Higinio	Marín Escavy	ST	Spain	27	79	183	477
211618		Dominik	Starkl	LM	Austria	27	70	176	111821
211791		Martin	Konczkowski	RB	Poland	27	74	181	111086
211831		Dennis	Mast	LM	Germany	29	79	186	110197
211859		Maximilian	Ahlschwede	CB	Germany	31	78	186	110197
212039		Saeed	Al Muwallad	RB	Saudi Arabia	30	79	184	112387
212040		Ulrik Yttergård	Jenssen	CB	Norway	25	82	186	1788
212161		Baba	Traoré	LB	France	28	75	177	1738
212243		Vladimir	Ranković	RB	Germany	28	73	172	27
212353		Ignacio	González	RB	Mexico	29	75	178	1028
212385		Anthony	Syhre	CB	Germany	26	83	188	110197
212718		Dillon	Powers	CM	United States	30	80	180	112606
212778	Kwon Kyung Won	Kyung Won	Kwon	CB	Korea Republic	29	83	188	112983
213147		Jamie	Allen	CDM	England	26	72	180	15015
213338		Jonathan	Ring	RM	Sweden	29	74	182	710
213376		Jamie	Hanson	CDM	England	25	79	178	1951
213377		Hazaa Ibrahim	Al Hazaa	ST	Saudi Arabia	29	64	176	112096
213528		Jakob	Blåbjerg	CB	Denmark	26	75	180	820
213557	João Pedro	João Pedro	Almeida Machado	CM	Portugal	28	69	175	697
213642		James	Wilson	ST	England	25	78	183	77
244259		Sadegh	Moharrami	RB	Iran	25	71	174	211
244305		Rubén	Ramírez	CB	Venezuela	25	79	181	634
244363	Daniel Fuzato	Daniel	Cerântula Fuzato	GK	Brazil	24	81	190	52
244786		Tomáš	Hájek	CB	Czech Republic	29	78	187	110468
245058		Otar	Kiteishvili	CM	Georgia	25	65	173	209
245350		Carlos	Feraud	CDM	Ecuador	30	62	171	113222
50493452		Óscar	Rojas	RB	Mexico	40	67	172	110152
50494036		Kazuhiko	Chiba	CB	Japan	36	77	183	112092
50497536	Kwak Tae Hwi	Tae Hwi	Kwak	CB	Korea Republic	40	85	188	111588
50503827		Tommy	Spurr	LB	England	33	72	186	1801
50515085		Matteo	Rubin	LB	Italy	34	75	183	1847
50515192		Graham	Burke	CAM	Republic of Ireland	27	72	175	1802
50518841		Erik	Pimentel	CB	Mexico	31	77	176	1879
50521303		Zdeněk	Ondrášek	ST	Czech Republic	32	79	185	695
50522236		Rodney	Wallace	LM	Costa Rica	33	75	182	696
50522137		Daniel	Gustavsson	RM	Sweden	30	73	178	299
50522370		Marvin	Sordell	RM	England	30	81	177	1930
50524119		Adam	Matuszczyk	CDM	Poland	32	73	183	167
50524814		Luis	Madrigal	ST	Mexico	28	90	191	1880
50524899		Christoph	Schösswendter	CB	Austria	33	78	193	111821
50525228		Musa	Nizam	LB	Turkey	30	74	182	111340
50524771		Ash	Taylor	CB	Wales	30	76	193	77
50525446		Joe	Mason	ST	Republic of Ireland	30	73	178	1790
50525604		Ben	Pringle	LM	England	33	74	173	92
50528796		Marcus	Piossek	RM	Poland	32	73	176	110597
50530658		Andy	Boyle	CB	Republic of Ireland	30	77	178	180
50530459		Fredrik Oldrup	Jensen	CM	Norway	28	73	183	15005
50530388		Alberto	Acosta	LB	Mexico	33	71	169	1028
50532579	Fran Cruz	Francisco Pablo	Cruz Torres	CB	Spain	30	73	184	469
50531268		Stefan	Payne	ST	England	29	74	180	127
50533606		Ethan	Ebanks-Landell	CB	England	28	88	188	1955
50532629		Nicolao	Dumitru	LM	Italy	29	77	184	1844
50533559		Will	Keane	ST	England	28	72	187	94
50533907		Magnar	Ødegaard	CB	Norway	28	80	186	433
50534436		Mateusz	Szczepaniak	ST	Poland	30	73	184	112505
50534467		Chris	Forrester	CDM	Republic of Ireland	28	68	180	423
170078		Mark	Little	RB	England	32	78	185	4
171574	Santamaría	Roberto	Santamaría Ciprián	GK	Spain	36	75	183	110839
171743	Marco Pinto	Marco António	Garcia Pinto	GK	Portugal	33	76	181	666
172928		Chris	Lines	CM	England	35	79	188	1962
173695		Mark	Reynolds	CB	Scotland	34	68	180	77
174670		Patryk	Małecki	LM	Poland	33	70	170	1873
176023	Nano	Mariano	González Maroto	LB	Spain	36	73	182	1861
176895		Miguel	Pinto	GK	Chile	38	79	183	112116
177442		Robert	Åhman Persson	CDM	Sweden	34	84	188	113458
177793		Greg	Tansey	CDM	England	32	78	185	77
178221		Michael	Orozco	RB	United States	35	76	176	111035
179543		Amin	Nouri	RB	Norway	31	77	180	920
179856		David	Perkins	CM	England	39	76	168	1955
181733		Andreas	Lukse	GK	Austria	33	82	187	15009
182023	Deng Xiaofei	Xiaofei	Deng	GK	China PR	38	80	186	112165
182694		Joe	Mattock	LB	England	31	78	181	1797
183066		Mathieu	Baudry	CB	France	33	80	188	1798
183412		Christopher	Schorch	CB	Germany	32	80	189	167
183819		Rolf	Feltscher	RB	Venezuela	30	90	184	697
223135		Mustafa	Akbaş	CB	Turkey	31	81	188	436
223282		Alliou	Dembélé	CM	France	33	65	168	614
223566		Wessel	Dammers	CB	Holland	26	81	185	634
223857		Oscar	Salinas	LW	Chile	33	71	173	112584
224010	José Suárez	José Aurelio	Suárez García	GK	Spain	25	80	187	110062
224045	Juan Muñoz	Juan	Muñoz Muñoz	ST	Spain	25	76	182	100831
224169		Sebastián	Zúñiga	RM	Chile	31	75	167	112655
224470	He Chao	Chao	He	CDM	China PR	26	77	178	111769
224511		Ezequiel	Bonifacio	RB	Argentina	27	70	170	101084
224665		Kamil	Wojtkowski	CAM	Poland	23	66	173	1873
224798		Romain	Gall	RW	United States	26	70	176	320
224995		Walmer	Pacheco	RB	Colombia	26	60	173	112523
225115		Marco	Pinato	CM	Italy	26	66	175	205
225445		Damjan	Bohar	RM	Slovenia	29	69	172	110749
225733	Cesinha	Cesar Fernando	Silva Melo	LW	Brazil	31	74	177	2056
226266		Jeisson	Vargas	CF	Chile	23	70	170	111139
226416		Rodrigo	Noya	CB	Argentina	31	88	194	110145
227170		Juan Camilo	Roa	CDM	Colombia	26	65	178	112903
227600		Joel	Andersson	RWB	Sweden	24	68	178	1516
227766		Lasha	Dvali	CB	Georgia	26	80	191	110746
228017	Zhang Yuning	Yuning	Zhang	ST	China PR	24	69	184	650
228221	Bernabé	Bernabé	Barragán Maestre	GK	Spain	28	76	189	15019
228509		Jeff	Reine-Adelaïde	RM	France	23	75	183	1530
229055		Sakıb	Aytaç	LB	Turkey	29	85	187	101020
229129		Luvuyo	Memela	LW	South Africa	33	64	167	110930
229215		Youssef	El Jebli	CAM	Holland	28	74	177	635
229446		Daniel	Vicencio	CB	Chile	29	80	178	112668
229704		Jérémy	Vachoux	GK	France	27	78	183	64
229851		Ali	Al Bulayhi	CB	Saudi Arabia	31	83	182	605
230147		Falaye	Sacko	RB	Mali	26	64	179	1887
230768		Luca	Clemenza	CAM	Italy	24	77	175	110912
230849	Nacho	Ignacio Agustín	Sánchez Romo	RM	Spain	28	70	177	477
231022		Cristian	Dell'Orco	LB	Italy	27	75	183	111974
231236		Mathieu	Cafaro	CAM	France	24	65	172	379
231628	Rafa Mir	Rafael	Mir Vicente	ST	Spain	24	75	189	472
231856	Álvaro Tejero	Álvaro	Tejero Sacristán	RB	Spain	25	69	174	1854
231913		Fredrik	Aursnes	CM	Norway	25	71	179	417
232377		Takahiro	Sekine	RM	Japan	26	61	167	680
232597		Hiroki	Fujiharu	LB	Japan	32	60	175	112093
232622		Shun	Nagasawa	ST	Japan	32	82	192	101146
232843		Dominik	Prokop	CAM	Austria	24	68	171	256
233182		Kaoru	Takayama	CF	Japan	33	67	174	113161
233493		Jorge	Sánchez	RB	Mexico	23	71	175	1879
233767		Sofiane	Alakouch	RB	France	23	66	175	224
233957		Sam	Field	CM	England	23	65	185	109
234239		Gauthier	Hein	RW	France	25	65	170	68
234418		Peter	Kurzweg	LB	Germany	27	77	180	1831
234779	Caro	José Antonio	Caro Díaz	GK	Spain	27	88	194	1854
234898		Syarhey	Chernik	GK	Belarus	33	84	187	1823
235253		Patrick	Kammerbauer	CDM	Germany	24	74	174	25
235507	Iban Salvador	Ibán	Salvador Edú	CAM	Equatorial Guinea	25	72	173	450
235899		Deyovaisio	Zeefuik	RB	Holland	23	76	177	1915
236265		Ray	Sandoval	RW	Peru	26	72	171	1028
236615		Dante	Rigo	CM	Belgium	22	75	180	247
236817		Habib	Maïga	CDM	Côte d'Ivoire	25	80	181	68
237024		Gian-Luca	Itter	LB	Germany	22	72	185	175
237293	Jhonnattann	Jhonnattann	Benites	LM	Brazil	32	65	165	112393
237407		Chris	Durkin	CDM	United States	21	75	183	688
237469	Nouhou	Nouhou	Tolo	LB	Cameroon	24	79	178	111144
237544		Luca	Vido	ST	Italy	24	75	182	199
237646		Daniel	Muñoz	RB	Colombia	25	76	183	112578
237890		Aldo	Arellano	CDM	Mexico	26	64	174	110150
238222		Felix	Beijmo	RB	Sweden	23	77	185	38
238537		Gary	Tello	LW	Chile	28	65	169	110977
238642		Jonas	Nietfeld	ST	Germany	27	83	186	543
238882	Dani Ojeda	Daniel	Ojeda Saranova	LM	Spain	26	75	180	100888
239025		Ibrahima	Niane	ST	Senegal	22	73	187	68
239437		Philani	Zulu	LM	South Africa	28	70	178	110929
239671	Tete Morente	José Antonio	Morente Oliva	RM	Spain	24	77	184	15019
239763		Edon	Zhegrova	RM	Kosovo	22	69	174	673
240099		Kevin	Rüegg	RB	Switzerland	23	77	173	894
240206		Torgil	Gjertsen	LM	Norway	29	74	175	113459
240753		Amine	Gouiri	ST	France	21	80	183	66
241179	Cristian Rivero	Cristian	Rivero Sabater	GK	Spain	23	75	188	461
241586	Iñigo Muñoz	Iñigo	Muñoz Cuevas	RW	Spain	24	60	167	448
241999		Jean-Claude	Billong	CB	France	27	88	192	112026
236831		Aaron	Seydel	ST	Germany	25	91	199	576
237040		Dimitris	Nikolaou	CB	Greece	22	78	189	280
237310		Demetri	Mitchell	LB	England	24	71	176	80
237424	Paik Seung Ho	Seung Ho	Paik	CM	Korea Republic	24	68	180	110062
237508	Rafael Broetto	Rafael	Broetto Henrique	GK	Brazil	30	87	195	1893
237560		Moussa	Djenepo	LM	Mali	23	65	177	232
237780		Kazuya	Yamamura	CAM	Japan	31	80	186	101148
238015		Johnatan	Opoku	CAM	Holland	31	82	185	100651
238489		Tim	Boss	GK	Germany	28	82	186	503
238619		Jannis	Nikolaou	CDM	Germany	28	83	183	503
238779		Jesper	Verlaat	CB	Holland	25	91	192	110178
238970		Nils	Butzen	RM	Germany	28	68	179	110588
239104		Ángelo	Pizzorno	CB	Uruguay	28	82	185	110977
239513		Josh	Earl	LB	England	22	78	191	1801
239696		Florent	Muslija	LM	Germany	23	65	172	1832
239768		Alan	Czerwiński	RB	Poland	28	74	181	110749
240196		Fidel	Escobar	CB	Panama	26	86	181	689
240290	João Pedro	João Pedro	Pereira dos Santos	ST	Brazil	28	88	180	112390
241130		Ignatius	Ganago	ST	Cameroon	22	78	176	72
241595		Santy	Ngom	ST	Senegal	28	85	181	71
242341		Ondřej	Mihálik	ST	Czech Republic	24	71	188	1906
243617		Fabian	Serrarens	ST	Holland	30	83	188	635
243716		Silvester	van der Water	RW	Holland	24	70	181	100634
244274		Adrian	Šemper	GK	Croatia	23	91	194	192
50383342		Håkon	Opdal	GK	Norway	39	92	188	919
50495219		Matt	Jarvis	LM	England	35	72	170	1803
50503420	Chus Herrero	Jesús María	Herrero Gómez	CB	Spain	37	75	183	1867
50508223		Scott	Sutter	RB	Switzerland	35	81	180	101112
50511191		Amin	Nouri	RB	Norway	31	77	180	682
50513742	Qin Sheng	Sheng	Qin	CDM	China PR	34	76	183	110955
50518404		Danny	Swanson	RM	Scotland	34	59	168	100804
50522731		Patrick	Mortensen	ST	Denmark	31	81	188	271
50524144		Paul	Downing	CB	England	29	79	188	142
50530701		Riccardo	Bocalon	ST	Italy	32	76	186	205
50534113		Richie	Towell	CM	Republic of Ireland	30	66	173	1797
50535784		Michael	de Leeuw	CAM	Holland	34	67	178	100628
50537701		Davide	Marsura	ST	Italy	27	78	187	112409
50539270		Martin	Bjørnbak	CB	Norway	29	90	193	417
50539952	Moon Chang Jin	Chang Jin	Moon	RM	Korea Republic	28	63	170	110765
50541132		Hadi	Sacko	RM	Mali	27	79	183	101007
50542283		Kortney	Hause	CB	England	26	93	191	2
50544141		Sullay	Kaikai	LM	England	25	70	182	1904
50545178		Nicolai	Poulsen	CM	Denmark	27	70	176	271
50545772		Éder	Castañeda	CB	Colombia	28	81	182	111723
50546083		Esteban	Carvajal	CDM	Chile	32	67	172	101114
50546332		Sebastián	Jaime	ST	Argentina	34	71	179	112655
50546401		José Luis	Muñoz	LW	Chile	34	72	178	110975
50546843		Sander	Svendsen	ST	Norway	24	67	172	1456
50547893		Luis	Cárdenas	GK	Mexico	27	84	183	1032
50551243		Déinner	Quiñónes	LM	Colombia	25	72	172	101103
50552698		Waylon	Francis	LB	Costa Rica	30	72	175	687
50552899		Gboly	Ariyibi	RM	United States	26	72	183	83
50553802		Bryan	Carvallo	CAM	Chile	24	61	164	101121
50554446	Jeong Woo Jae	Woo Jae	Jeong	LM	Korea Republic	29	70	179	1478
50554916		Tony	Andreu	CAM	France	33	73	178	184
50556118	He Chao	Chao	He	CM	China PR	26	77	178	111839
50559323		Marvin	Johnson	LM	England	30	74	178	1794
50561560		Joshua	Emmanuel	RB	England	23	70	180	127
50562746		Charles	Traoré	LB	Mali	29	74	180	71
50564270		Shun	Nagasawa	ST	Japan	32	82	192	112093
50566388		Mo	El Hankouri	LW	Morocco	24	70	176	1915
50568156	Adrián Diéguez	Adrián	Diéguez Grande	CB	Spain	25	69	187	110839
50568941	Jhonnattann	Jhonnattann	Benites	LM	Brazil	32	65	165	112990
53655		Jay	Bothroyd	ST	England	39	89	190	112444
110680	Xisco Campos	Francisco	Campos Coll	RB	Spain	39	74	180	453
128529		Ufuk	Ceylan	GK	Turkey	35	85	194	113142
137510		Arnold	Kruiswijk	LB	Holland	36	77	188	1909
139927	Du Wei	Wei	Du	CB	China PR	39	81	187	112977
148720		Henning	Hauger	CDM	Norway	36	71	179	922
155541		Kenneth Emil	Petersen	CB	Denmark	36	83	187	272
156025		Hannu	Patronen	CB	Finland	37	80	183	100325
161804		Óscar	Rojas	RB	Mexico	40	67	172	111035
162901		Colin	Doyle	GK	Republic of Ireland	36	92	196	80
163955		Steven	Anderson	CB	Scotland	35	72	180	100804
165509		Billy	Clarke	ST	Republic of Ireland	33	64	170	89
166853		Darius	Charles	CB	England	33	85	185	1933
169112		Lee	Martin	LM	England	34	80	180	143
170027		Rory	McArdle	CB	Northern Ireland	34	73	185	1949
171083		Roy	O'Donovan	ST	Republic of Ireland	35	64	179	111398
172322		Réginal	Goreux	RB	Haiti	33	73	175	232
173256		Thomas	Charles	CB	Argentina	36	79	184	112709
173654		Paul	McGowan	CM	Scotland	33	65	170	180
176207		Rafał	Boguski	RM	Poland	37	69	173	1873
176928		Jesper	Arvidsson	LB	Sweden	36	79	181	113458
177544		Kai	Bülow	CDM	Germany	35	81	188	27
178006		Jean-Baptiste	Pierazzi	CDM	France	36	75	185	110316
178713		Liam	Trotter	CM	England	32	77	188	112259
179855		Jermaine	Beckford	ST	Jamaica	37	83	188	1945
180759		Hiroyuki	Taniguchi	CB	Japan	36	73	182	113160
182844		Rafał	Grzyb	CDM	Poland	38	75	175	110745
183347		Jayson	Leutwiler	GK	Canada	32	80	192	3
183517		Abu	Ogogo	CM	England	31	78	177	1800
183646		Martin	Kobras	GK	Austria	35	80	182	15009
184331		Michelangelo	Albertazzi	LB	Italy	30	73	185	1844
184515		Nick	Blackman	RM	England	31	74	186	459
237339		Ryuta	Koike	RB	Japan	25	63	169	101145
237429		Genta	Miura	CB	Japan	26	77	183	112093
237513		Omar	Eddahri	CF	Sweden	30	77	185	710
237554		Merveille	Bokadi	CDM	Congo DR	29	80	186	232
237662		Brooks	Lennon	RB	United States	23	70	177	111065
238062		Beni	Baningime	CDM	Congo DR	22	70	178	7
238370		Marin	Pongračić	CB	Croatia	23	85	189	191
238557		Lion	Schweers	CB	Germany	25	81	188	531
238873		Pietro	Pellegri	ST	Italy	20	80	188	69
238984		Manuel	Farrona Pulido	LM	Germany	28	70	175	487
239250	Abel Ruiz	Abel	Ruiz Ortega	ST	Spain	21	76	182	241
239627		Adam	Zreľák	ST	Slovakia	27	79	183	171
239747		Sergio	Córdova	ST	Venezuela	23	87	188	100409
240023		Patrik	Eler	ST	Slovenia	30	73	185	2045
240114	Cleylton	José Cleylton	Morais dos Santos	CB	Brazil	28	90	190	1889
240243	Matheus Cunha	Matheus Santos	Carneiro Da Cunha	ST	Brazil	22	75	184	112172
240916		Dejan	Ljubicic	CDM	Austria	23	74	186	254
241261	Ilhamjan Iminjan	Iminjan	Ilhamjan	RM	China PR	35	70	175	112977
241994		Yuta	Toyokawa	ST	Japan	26	64	171	2013
242209		Angel	Rodriguez	CM	Uruguay	28	72	176	112535
243591	Fernando Andrade	Fernando	Andrade dos Santos	ST	Brazil	28	75	183	236
243834		Luka	Ilić	CAM	Serbia	22	73	182	1904
244960	Bruno Costa	Bruno Xavier	Almeida Costa	CM	Portugal	24	66	174	236
50436350		Daniel	Braaten	RM	Norway	39	94	184	917
50496115		Jamie	Ward	ST	Northern Ireland	35	59	165	89
50506740		Maynor	Figueroa	LB	Honduras	38	85	181	698
50509798		Karamoko	Cissé	ST	Guinea	32	78	184	112409
50511333		Chris	Seitz	GK	United States	34	107	191	688
50515936		Dorian	Dervite	CB	France	33	85	192	1904
50521826		Niklas	Gunnarsson	RB	Norway	30	80	188	1843
50523628	Yun Suk Young	Suk Young	Yun	LB	Korea Republic	31	76	183	112115
50524835		Kyle	Bennett	LM	England	30	61	165	1934
50533139		Daniel	Lafferty	LWB	Northern Ireland	32	76	180	1938
50534456		Nicholas	Yennaris	CM	England	28	70	170	111768
50535472		Remi	Matthews	GK	England	27	78	184	1792
50537722		Michele	Fornasier	CB	Italy	27	80	186	205
50539364		Abdullah	Al Hafith	CB	Saudi Arabia	28	77	186	112096
50540622		Hattan	Bahebri	LM	Saudi Arabia	29	67	171	605
50542184		Anatole	Ngamukol	ST	Equatorial Guinea	33	70	178	110169
50542346		Matti	Steinmann	CDM	Germany	26	79	189	111660
50543441		James	Donachie	CB	Australia	28	87	195	111397
50545076		Clint	Irwin	GK	United States	32	88	191	694
50545343		Sean	Goss	CM	Germany	25	71	178	100804
50545978		Maicol	Balanta	RM	Colombia	31	77	178	111722
50546157		Nicolás	Palacios	CDM	Colombia	29	72	190	101103
50546378		Ignacio	González	GK	Chile	31	81	187	111328
50546808		Fabrizio	Angileri	LB	Argentina	27	84	184	1876
50547466		Emerson	Hyndman	CM	United States	25	61	170	1943
50548439		Matthew	Pennington	CB	England	26	77	185	94
50551271		Leonardo	Rolón	RM	Argentina	26	70	171	101097
50552743	Dani Romera	Daniel	Romera Andújar	ST	Spain	25	69	173	110066
50552894		Diego	Gómez	RM	Colombia	32	65	172	112527
50553967		Jeison	Ángulo	LB	Colombia	25	74	182	1881
50554783		Mustafa	Akbaş	CB	Turkey	31	81	188	113259
50556661		Miroslav	Čovilo	CDM	Serbia	35	87	193	10032
50558143	Sergio Santos	Sergio Henrique	Santos Gomes	ST	Brazil	26	77	180	112134
50561276	Fali	Rafael	Jiménez Jarque	CB	Spain	27	84	186	1968
50561504		Javier	Parraguez	ST	Chile	31	86	183	110980
50562623		Duván	Vergara	RM	Colombia	24	72	172	110580
50564243	Ko Seung Beom	Seung Beom	Ko	RM	Korea Republic	27	72	175	983
50564799		Koji	Miyoshi	LM	Japan	24	64	167	111730
50565457		Alessandro	Rossi	ST	Italy	24	80	184	205
50566901		Patrick	Kammerbauer	CDM	Germany	24	74	174	576
50567952	Josema	José Manuel	Sánchez Guillén	CB	Spain	25	81	184	1867
49589		Jon	Jönsson	CB	Sweden	38	75	183	700
53741		Lee	Holmes	LM	England	34	66	175	143
119233		Tyrone	Mears	RB	England	38	74	180	109
138390		David	Fox	CDM	England	37	77	176	1929
140618		Enar	Jääger	CB	Estonia	36	73	176	920
149270		Carl	Valeri	CDM	Australia	36	75	183	111397
155980		David	Bičík	GK	Czech Republic	40	91	193	267
156321		Adebayo	Akinfenwa	ST	England	39	110	178	1933
158716		David	Edwards	CM	Wales	35	78	183	1793
162388		Kazuhiko	Chiba	CB	Japan	36	77	183	113157
163445		Lee	Frecklington	CM	Republic of Ireland	35	75	180	149
163757		Joe	Walsh	CB	Wales	29	70	180	1798
165667		Łukasz	Janoszka	LM	Poland	34	76	181	110749
166539		Derrick	Etienne Jr.	RW	Haiti	24	77	178	689
169000		Kristoffer	Andersen	CAM	Belgium	35	73	183	110169
169539		Mark	Hughes	CB	England	34	83	188	110313
171019		David	Forde	GK	Republic of Ireland	41	90	188	1944
172423		Ahmed	Kantari	CB	Morocco	36	78	185	110456
173165		Nicola	Ravaglia	GK	Italy	32	84	184	111434
173666		Nicky	Law	LM	England	33	73	178	143
176368	Kim Chang Soo	Chang Soo	Kim	RB	Korea Republic	35	69	178	1473
176568		Anthony	Marin	CB	France	31	78	187	614
177495		Chris	Taylor	LM	England	34	73	183	1926
178043		Francesco	Della Rocca	CM	Italy	33	77	182	110912
179055		Adam	Marciniak	LB	Poland	32	78	186	111082
180400	Isidoro	José Isidoro	Gómez Torres	RB	Spain	35	71	180	918
182228		Jérémy	Huyghebaert	LB	Belgium	32	74	180	435
183007	Zhang Wenzhao	Wenzhao	Zhang	LM	China PR	34	70	178	111839
183437		Matteo	Rubin	LB	Italy	34	75	183	110911
183559		Konstantin	Engel	LB	Kazakhstan	33	79	179	487
237383		Alessandro	Bastoni	CB	Italy	22	75	190	50
237461		Cristian	Colmán	ST	Paraguay	27	79	183	695
237540		Philipp	Förster	CAM	Germany	26	82	188	110178
237594		Lorenco	Šimić	CB	Croatia	25	89	195	112791
237647		Ajdin	Hrustić	CM	Australia	25	70	178	1915
237973		Konstantin	Kuchaev	CAM	Russia	23	72	178	315
238084	Choi Jae Hyeon	Jae Hyeon	Choi	RW	Korea Republic	27	77	184	1475
238450		Sean	Raggett	CB	England	27	89	196	1797
238685		Patrick	Herrmann	RB	Germany	33	80	180	576
238942		Nemanja	Mitrović	CB	Slovenia	28	88	193	110745
239085		Erling Braut	Haaland	ST	Norway	21	87	193	417
239483		Abenego	Tembeng	CDM	Cameroon	29	85	189	112516
239728		Łukasz	Wolsztyński	ST	Poland	26	73	183	420
240035	Néstor Albiach	Néstor	Albiach Roger	CAM	Spain	28	84	187	267
240134	David Batanero	David	Batanero Puigbó	CM	Spain	32	80	185	1596
240646		Soufyan	Ahannach	LM	Holland	25	66	173	1808
241032		Souleymane	Diarra	CM	Mali	26	62	173	64
241301		Justin	Shonga	ST	Zambia	24	70	178	110930
241984		Cory	Burke	ST	Jamaica	29	82	191	112134
242327		Xola	Mlambo	CM	South Africa	30	70	170	110930
242663		Sebastiaan	Bornauw	CB	Belgium	22	88	188	229
243641		Luka	Adžić	LM	Serbia	22	78	184	229
244271		Ivan	Šunjić	CDM	Croatia	24	75	184	211
244963	Ivanildo Fernandes	Ivanildo Jorge	Mendes Fernandes	CB	Portugal	25	85	193	1900
50488969		Keiji	Tamada	LM	Japan	41	67	173	112448
50498495		Chris	McCann	LB	Republic of Ireland	34	75	185	688
50507466		Tom	De Sutter	ST	Belgium	36	87	192	682
50509441		Greg	Tansey	CDM	England	32	78	185	100805
50511504		David	Perkins	CM	England	39	76	168	15048
50518652		Moussa	Maâzou	RM	Niger	32	80	187	113219
50521828		Ryan	McGowan	CB	Australia	31	78	191	180
50524129		Danny	Rowe	RW	England	29	76	183	149
50530338		Roger	Torres	CAM	Colombia	30	67	169	101101
50533588		Zac	MacMath	GK	United States	30	88	188	101112
50536002		Jak	Alnwick	GK	England	28	82	188	1949
50537108		Clemens	Schoppenhauer	CB	Germany	29	77	185	550
50539075		Matt	Lampson	GK	United States	31	91	191	697
50540237		Kolja	Pusch	CAM	Germany	28	76	181	111821
50540649		Mukhtar Omar	Fallatah	ST	Saudi Arabia	33	66	179	112391
50541385	Éverton Luiz	Éverton Luiz	Guimarães Bilher	CDM	Brazil	33	70	173	111065
50542743		Nicolai	Brock-Madsen	ST	Denmark	28	80	190	88
50543468		Phil	Ofosu-Ayeh	RB	Ghana	29	87	181	27
50545302		Glen	Kamara	CM	Finland	25	73	183	86
50545902		Bastián	San Juan	CB	Chile	27	76	177	112584
50546143		Elvis	Mosquera	LB	Colombia	30	77	182	101106
50546349		Tomás	Asta-Buruaga	CB	Chile	24	70	185	110977
50546658		Emanuel	Brítez	RB	Argentina	29	78	180	111716
50547665		Héctor	Berríos	RB	Chile	34	67	174	112531
50550392		Jack	Byrne	CM	Republic of Ireland	25	73	176	82
50551596		Jason	Cummings	ST	Scotland	26	63	178	1923
50552768		Rai	Vloet	CAM	Holland	26	75	188	680
50553006		Jordan	Rossiter	CDM	England	24	64	178	1945
50554293		Leonel	López	CM	Mexico	27	65	174	1882
50554752		Marc	McNulty	ST	Scotland	28	70	178	81
50555817		Sebastián	Zúñiga	RM	Chile	31	75	167	112535
50559665	Zhang Yuning	Yuning	Zhang	ST	China PR	24	69	184	111768
50562216		Nathaël	Julan	ST	France	25	83	196	110456
50563463		Iván	Ochoa	CDM	Mexico	24	72	182	110781
50564247		Yuta	Nakayama	CB	Japan	24	76	181	1914
50565442		Simone	Edera	RW	Italy	24	67	174	189
50566066		Peter	Kurzweg	LB	Germany	27	77	180	110197
50567163	Benito	Benito	Ramírez del Toro	LM	Spain	26	74	178	110066
50568566		Anders	Dreyer	RM	Denmark	23	70	172	100805
51159	Nelson Ferreira	Nelson	Ferreira Coelho	LM	Portugal	39	72	175	1715
101488		Daniel	Haas	GK	Germany	38	89	187	506
118646		Ian	Henderson	ST	England	36	67	178	1955
137686		Anouar	Hadouir	CAM	Holland	38	68	173	1971
140180		Mitsuo	Ogasawara	CDM	Japan	42	72	173	101147
144415		Sedat	Ağçay	CDM	Turkey	39	72	176	101007
155551		Jonas	Borring	LM	Denmark	36	81	193	1446
156012	Collantes	Juan José	Collantes Guerrero	RM	Spain	38	70	170	468
157168	Manu	Jose Manuel	Rodriguez Morgade	LB	Switzerland	37	70	176	468
161921		Piotr	Leciejewski	GK	Poland	36	88	194	110749
162980		Andrew	Taylor	LB	England	35	69	178	4
163621		Ben	Alnwick	GK	England	34	80	183	4
164465		Tony	McMahon	RB	England	35	72	180	1951
165176		Sebastian	Freis	LM	Germany	36	78	183	543
165888	Kwak Tae Hwi	Tae Hwi	Kwak	CB	Korea Republic	40	85	188	982
167926		Anthony	Grant	CM	England	34	71	180	127
169243		Alf	Mintzel	LB	Germany	39	79	180	492
170095		Daniel	Jones	LB	England	34	89	188	1937
171971		Liam	Craig	CM	Scotland	34	82	183	100804
172952		Toumani	Diagouraga	CM	France	34	72	188	1934
173480		Andreas	Lienhart	RB	Austria	35	78	183	15009
175941		Jørgen	Horn	CB	Norway	34	80	189	112199
176540		Bréiner	Castillo	GK	Colombia	43	86	185	112528
177315		Gary	Roberts	CAM	England	37	74	178	1917
177657		Andreas	Nordvik	CB	Norway	34	81	187	1456
178014		Nicola	Madonna	RB	Italy	34	72	182	110912
179646		Jesper	Juelsgård	CB	Denmark	32	81	182	271
180726		Matt	McKay	CM	Australia	38	65	171	111395
182180		Mirko	Drudi	CB	Italy	34	80	182	111993
182905		Vegard	Skjerve	CB	Norway	33	78	187	1463
183425		Tom	Elliott	ST	England	30	76	193	97
183596		Erik	Domaschke	GK	Germany	35	86	188	110597
184001		Donny	Gorter	CM	Holland	33	70	175	650
242651		Florian	Valot	RM	France	28	75	175	689
242776		Koki	Anzai	LB	Japan	26	64	172	101147
244266		Luka	Menalo	LW	Bosnia and Herzegovina	25	73	181	211
244685		Marius	Mouandilmadji	ST	Chad	23	78	182	236
50343029		Matt	Gilks	GK	Scotland	39	81	185	149
50490688		Gianni	Munari	CM	Italy	38	84	190	206
50501106		Alex	Bruce	CB	Northern Ireland	36	81	180	82
50509253	Jon Erice	Jon	Erice Domínguez	CM	Spain	34	72	177	101112
50509869		Michael	Orozco	CB	United States	35	76	176	111678
50514112	Zhao Mingjian	Mingjian	Zhao	RB	China PR	33	75	183	112378
50521610		Wilfred	Moke	CB	Congo DR	33	78	183	101007
50523572	Lee Bum Young	Bum Young	Lee	GK	Korea Republic	32	90	194	1477
50529589		Kennedy	Igboananike	ST	Nigeria	32	70	175	113222
50533536		Veton	Berisha	LM	Norway	27	71	175	919
50534979		Lloyd	Isgrove	RM	Wales	28	72	178	1790
50536070		Dylan	McGowan	CB	Australia	30	80	186	111660
50538056		Terrence	Boyd	ST	United States	30	82	188	111651
50540565		Khalid Ahmed	Al Ghamdi	RB	Saudi Arabia	33	62	167	112392
50541365		Giovani	Hernández	CM	Mexico	28	73	173	1880
50544949		Sascha	Horvath	RM	Austria	24	67	165	2045
50545136		Daniel	De Silva	CAM	Australia	24	60	170	111396
50545667		Daniel	Giraldo	RB	Colombia	29	70	178	111723
50545981		Dilan	Zúñiga	LB	Chile	25	73	170	110781
50546309		Gaspar	Iñíguez	CM	Argentina	27	76	172	1847
50546358		Juan Carlos	Espinoza	RB	Chile	30	77	170	110975
50546485		Matías	Donoso	ST	Chile	35	87	185	112531
50547885		Karim	Azamoum	CDM	France	31	74	178	468
50550306		Dominic	Iorfa	RB	England	26	78	193	1807
50551284		Fabián	Manzano	CDM	Chile	27	71	173	110975
50552845		Fred	Onyedinma	RM	Nigeria	24	80	185	1933
50553109		Armando	Vargas	CAM	Colombia	32	70	170	112523
50554570		Jake	Hesketh	CAM	England	25	63	168	15015
50555505		Oscar	Salinas	LW	Chile	33	71	173	112531
50558079		Leonardo	da Silva Lopes	RM	Portugal	22	61	168	1802
50560792		Matías	Campos López	ST	Chile	27	75	178	15029
50561342	Moon Seon Min	Seon Min	Moon	LW	Korea Republic	29	68	172	1477
50562465	José Machín	José Ndong	Machín Dicombo	CM	Equatorial Guinea	24	74	184	50
50562670		Cristian	Dell'Orco	LB	Italy	27	75	183	1746
50564523		Daigo	Nishi	RB	Japan	33	73	176	101146
50565545		Mamadou	Fall	RM	Senegal	29	72	184	2013
50567921		Karlo	Bartolec	RWB	Croatia	26	78	176	819
50568688		Dimitris	Nikolaou	CB	Greece	22	78	189	1746
52491		Espen	Bugge Pettersen	GK	Norway	41	87	189	922
53736		Lee	Camp	GK	Northern Ireland	36	74	183	88
116314		David	Martin	GK	England	35	86	188	97
136601	Kim Yong Dae	Yong Dae	Kim	GK	Korea Republic	41	81	189	1473
139213		Luis	Michel	GK	Mexico	42	74	182	111678
143107		Marcos	Gelabert	CM	Argentina	39	72	176	111713
150657		Sekou	Baradji	CDM	France	37	77	185	1816
155998		Tomáš	Černý	GK	Czech Republic	36	83	184	77
158676		William	Kvist	CM	Denmark	36	80	184	819
162265		Radosław	Cierzniak	GK	Poland	38	81	187	1871
162828		Brendon	Santalab	ST	Australia	38	72	173	111399
163634		Francesco	Cosenza	CB	Italy	35	87	187	347
164581		Marcel	de Jong	LB	Canada	34	73	174	101112
165870	Cho Yong Hyung	Yong Hyung	Cho	CB	Korea Republic	37	72	182	1478
165911	Hwang Jin Sung	Jin Sung	Hwang	CM	Korea Republic	37	70	177	112115
168879		Mohammed	Al Shalhoub	CAM	Saudi Arabia	40	66	163	605
169461		Michael	O'Connor	CM	Northern Ireland	33	79	180	149
170636		Alan	Lithgow	CB	Scotland	33	85	185	621
172179		Tommy	Spurr	LB	England	33	72	186	112260
172555		Ronnie	Schwartz	ST	Denmark	31	80	183	112199
173484	Aitor	Aitor	Fernández López	RB	Spain	34	74	181	469
173895		Simon	Eastwood	GK	England	32	90	188	1951
176383		Tim	Danneberg	CM	Germany	35	73	187	487
177310		Frédéric	Nimani	ST	France	32	87	191	435
177597		Ryan	Taylor	ST	England	33	68	188	1929
178508		Andrea	Cocco	ST	Italy	35	75	182	200
179903		Oliver	Bozanic	CM	Australia	32	75	177	80
181787	Mao Jianqing	Jianqing	Mao	LW	China PR	34	75	185	110955
182822		Aldo	Angoula	CB	France	40	82	184	212
183138		Krystian	Pearce	CB	England	31	95	188	1940
183544		Graham	Burke	CAM	Republic of Ireland	27	72	175	1801
183645		Christian	Ramsebner	CB	Austria	32	83	191	252
184376		Lukáš	Vácha	CDM	Czech Republic	32	72	175	267
184482		Jem	Karacan	CM	Turkey	32	67	176	97
185380		Taijo	Teniste	RB	Estonia	33	65	172	919
186529		Tony	Beltran	RB	United States	33	68	173	111065
186715		Shea	Salinas	LM	United States	35	68	178	111928
187176	Lee Yun Pyo	Yun Pyo	Lee	CB	Korea Republic	36	79	184	110765
188185		Furdjel	Narsingh	RM	Holland	33	75	176	635
188381		Junior	Dalé	ST	France	36	81	186	1823
188405		Zlatko	Janjić	CAM	Bosnia and Herzegovina	35	83	187	111083
189013		Michał	Buchalik	GK	Poland	32	83	190	1873
189343		Matteo	Bruscagin	CB	Italy	32	70	182	205
189865		David	Templeton	LM	Scotland	32	63	176	15015
190235		Jordan	Clarke	RB	England	29	71	183	1949
190489		Daniel	Gustavsson	RM	Sweden	30	73	178	700
190722		Marvin	Sordell	ST	England	30	81	177	15015
191157		Mikael	Dyrestam	CB	Sweden	29	84	187	1439
191409		Naif Ahmed	Hazazi	ST	Saudi Arabia	33	76	182	113219
191679	Kwak Kwang Sun	Kwang Sun	Kwak	CB	Korea Republic	35	77	187	983
192624		Shane	Ferguson	LM	Northern Ireland	30	66	175	97
192912		Giorgi	Merebashvili	LM	Georgia	34	75	179	1569
192660		Sebastian	Polter	ST	Germany	30	88	190	1831
193276		Philipp	Klingmann	RB	Germany	33	79	180	110178
193535		Sebastián	Prediger	CDM	Argentina	34	84	184	111715
194089		Christoph	Moritz	CM	Germany	31	80	186	28
196916		Marlon	Pack	CM	England	30	74	188	1919
198810		Bailey	Wright	CB	Australia	29	79	184	1919
199288		Anthony	Losilla	CDM	France	35	80	185	160
199490	Joselu	José Luís	Moreno Barroso	ST	Spain	30	73	177	110827
199726		Marco	Torsiglieri	CB	Argentina	33	77	190	110395
200108		Nicolai	Boilesen	LB	Denmark	29	75	186	819
200818	Bruno Uvini	Bruno	Uvini Bortolança	CB	Brazil	30	84	186	112139
201145		Mickaël	Le Bihan	ST	France	31	80	184	72
201379	Samu García	Samuel	García Sánchez	RM	Spain	31	73	179	1853
202223		Justin	Meram	LM	Iraq	32	75	185	687
202541	Jota	Jose Ignacio	Peleteiro Ramallo	RM	Spain	30	70	180	88
202986	Sin Jin Ho	Jin Ho	Sin	CM	Korea Republic	32	72	177	982
203239	Caio	Caio	Gobbo Secco	GK	Brazil	30	88	192	10019
203782		Ahmad	Benali	CM	Libya	29	69	173	110734
204060		Tjaronn	Chery	CAM	Holland	33	74	170	101020
204308		Hendrik	Van Crombrugge	GK	Belgium	28	88	188	2013
204549		Davy	Roef	GK	Belgium	27	86	187	110913
204936		John	Egan	CB	Republic of Ireland	28	72	188	1794
205451		Benedikt	Röcker	CB	Germany	31	92	197	269
205985		Isaac	Kiese Thelin	ST	Sweden	29	82	188	32
206085		Jacob	Murphy	RM	England	26	74	179	13
207465	Felipe	Felipe	Martins	CM	Brazil	30	68	171	101112
207858		Dom	Dwyer	ST	United States	31	79	175	112606
208159		Michael	Frey	ST	Switzerland	27	89	189	326
208977		Fahad	Al Muwallad	RM	Saudi Arabia	26	68	170	607
209504		Branimir	Hrgota	ST	Sweden	28	75	185	1824
209756		Leiton	Jiménez	CB	Colombia	32	77	186	101114
210016	Diego Lopes	Diego Hipólito	da Silva Lopes	LW	Brazil	27	64	171	744
210602		Salem	Al Dawsari	RM	Saudi Arabia	29	68	174	605
210879		Aljaž	Struna	CB	Slovenia	31	86	191	1843
211022	Rubén García	Rubén	García Santos	CAM	Spain	28	72	171	479
211738		Mark	Flekken	GK	Holland	28	85	193	25
212253		Alexander	Scholz	CB	Denmark	28	84	188	1516
212680		Jordan	Jones	LM	Northern Ireland	26	61	174	82
213209		Kellyn	Acosta	CM	United States	26	68	178	694
213498		Serge-Junior	Martinsson Ngouali	CM	Gabon	29	75	174	708
213937	Aketxe	Ager	Aketxe Barrutia	CAM	Spain	27	67	175	1968
214323		Guillermo	Celis	CDM	Colombia	28	73	178	1887
214436		Paulo	Díaz	RB	Chile	26	70	180	112387
183894		Matías	Sánchez	CDM	Argentina	33	71	173	111713
184461		Ľubomír	Guldan	CB	Slovakia	38	82	183	110749
185249		Demar	Phillips	LB	Jamaica	37	60	168	111065
186422		Sean	Scannell	RM	Republic of Ireland	30	73	175	1804
186645		Sean	Franklin	RB	United States	36	73	178	101112
187014		César	Cercado	CB	Mexico	32	68	169	111035
187797		Shaun	Brisley	CB	England	31	77	188	1937
188257		Brian	Easton	LB	Scotland	33	76	183	100804
188580		Ken	Ilsø	ST	Denmark	34	77	183	111393
189325		Christopher	Telo	LB	Sweden	31	72	172	417
189839		Nicolás	Crovetto	LB	Chile	35	70	175	101097
190184		Chris	Tierney	LB	United States	35	81	183	691
190425		Mustafa	Abdellaoue	ST	Norway	33	74	181	922
190592		Michael	Sollbauer	CB	Austria	31	80	186	111822
190981		Mushaga	Bakenga	ST	Norway	28	77	181	418
191218		Dejan	Jaković	CB	Canada	36	80	188	112996
191657	Lim Sang Hyub	Sang Hyub	Lim	LW	Korea Republic	33	73	180	983
192471		Adam	Matuszczyk	CM	Poland	32	73	183	110749
192695		Nathan	Thompson	RB	England	30	71	172	1790
193123		Ash	Taylor	CB	Wales	30	76	193	1930
193442		Lerin	Duarte	CM	Holland	30	71	169	100634
193896		Patrick	Funk	CDM	Germany	31	77	177	550
194060		Francesco	Signori	CM	Italy	32	74	179	205
194785		Tom	Flanagan	LB	Northern Ireland	29	76	188	106
197241		Kevin	Pannewitz	CM	Germany	29	81	185	110591
198144		Alexander	Bannink	RM	Holland	31	75	185	100628
198740		Alberto	Acosta	LB	Mexico	33	71	169	1970
199046		Kevin	Dawson	RM	Republic of Ireland	31	80	179	1936
199598	Jony Ñíguez	Jonathan	Ñíguez Esclápez	CDM	Spain	36	72	174	468
199769		Marvin	Potzmann	LM	Austria	27	70	180	254
199909		Pavao	Pervan	GK	Austria	33	92	194	175
200319		Ben	Coker	LB	England	32	74	180	1954
200931	Fran Cruz	Francisco Pablo	Cruz Torres	CB	Spain	30	73	184	112505
201132		Rafał	Janicki	CB	Poland	29	79	188	873
201911		Will	Keane	ST	England	28	72	187	1952
202123		Chuks	Aneke	ST	England	28	83	191	1798
202215		Joe	Willis	GK	United States	32	84	196	698
202532		Michael	Doughty	CM	Wales	28	81	185	1934
202799		Jordan	Graham	LM	England	26	73	182	94
202819		Chris	Forrester	CDM	Republic of Ireland	28	68	180	77
202952	Park Jin Po	Jin Po	Park	RM	Korea Republic	33	72	173	1478
203264		Scott	Wootton	CB	England	29	78	188	1929
203500		Danny	Rose	ST	England	27	72	173	1940
204164		Alexander	Ludwig	CB	Denmark	28	85	184	272
204689		Issiaka	Ouédraogo	ST	Burkina Faso	32	78	179	112075
205054		Kal	Naismith	LM	Scotland	29	78	186	1917
205378		Baptiste	Valette	GK	France	28	78	185	224
205584		Michael	Ihiekwe	CB	England	28	81	186	110313
205926		Caner	Çavlan	LB	Holland	29	70	175	100628
206040		Bryan	Verboom	LB	Belgium	29	74	177	15005
206249		Nicolas	Hasler	RM	Liechtenstein	30	78	175	693
206492		Abdoulaye	Sané	ST	Senegal	28	73	184	226
50534447		Jordan	Graham	LM	England	26	73	182	1951
50537782		Devante	Cole	ST	England	26	73	185	15015
50539360		Nigel	Bertrams	GK	Holland	28	81	185	635
50540916		Danny	Rose	CM	England	33	66	170	1934
50542875		Michał	Kopczyński	CB	Poland	29	65	180	1871
50544033		Anthony	Syhre	CB	Germany	26	83	188	634
50546034		Camilo	Ayala	CDM	Colombia	35	74	179	111723
50546887		Jacobo	Mansilla	LM	Argentina	34	74	179	110581
50547671		Michael	Lepe	CM	Chile	30	77	179	112534
50552971		Jérôme Junior	Onguéné	CB	France	23	77	186	191
50553449	Liao Lisheng	Lisheng	Liao	CDM	China PR	28	68	177	112983
50555667	Pedro Chirivella	Pedro	Chirivella Burgos	CDM	Spain	24	66	178	9
50557604		Babajide	David	RM	Nigeria	25	69	178	1516
50559223		Misael	Riascos	RM	Colombia	30	73	172	101099
50561393		Bright	Enobakhare	RW	Nigeria	23	77	179	82
50563621		Danilo	Acosta	LB	United States	23	77	180	112606
50564408		Elhadji Pape	Diaw	CB	Senegal	26	85	193	1530
50565105	Jang Ho Ik	Ho Ik	Jang	RM	Korea Republic	27	62	173	2055
50566721		Gregor	Kobel	GK	Switzerland	23	90	194	100409
50567515		Luca	Strizzolo	ST	Italy	29	83	188	111434
50569930		Mamadou	Coulibaly	CM	Senegal	22	77	183	112409
50574321		Valeriane	Gvilia	CAM	Georgia	27	79	182	420
67310822		Ethan	Ebanks-Landell	CB	England	28	88	188	127
67338609		Bright	Enobakhare	RW	Nigeria	23	77	179	1800
67343690	Toni Martínez	Antonio	Martínez López	ST	Spain	24	70	180	110831
213957		Luca	Crecco	CM	Italy	25	76	183	200
214185		Sergio	Romero	ST	Colombia	32	70	173	112992
214315		Luis	Narváez	CDM	Colombia	37	82	179	101101
214360		Víctor	Castillo	CDM	Colombia	34	74	172	112992
214669		Marcos	Figueroa	ST	Argentina	31	72	172	111714
214719		Gabriel	Sandoval	CDM	Chile	37	68	170	112533
214964		Leandro	Velázquez	CAM	Argentina	32	62	167	112578
215279		Tim	Albutat	CDM	Germany	28	79	184	1825
215384		Alhassane	Keita	ST	Guinea	29	79	183	1889
215756		Sam	McQueen	LB	England	26	70	181	17
215993		Dardo	Miloc	CDM	Argentina	30	74	177	111707
216184		Stefan	Nutz	CAM	Austria	29	67	178	15009
216666		Alejandro	González	RB	Uruguay	33	79	184	111328
217313		Jinty	Caenepeel	RM	Belgium	25	69	175	1971
218216		Farouk	Ben Mustapha	GK	Tunisia	32	82	194	111674
219689		Santiago	Lizana	CAM	Chile	28	68	167	111328
220028		Sam	Adekugbe	LB	Canada	26	75	176	920
220528		Gennaro	Tutino	RW	Italy	24	76	177	112168
220934		Carlos	Rivas	ST	Colombia	27	91	173	101100
221286	Ricardo Vaz	Ricardo Alvares	Guedes Vaz	RM	Portugal	26	68	172	110854
221481		Jhony	Cano	ST	Colombia	32	77	177	112903
221567	Sim Sang Min	Sang Min	Sim	LB	Korea Republic	28	70	172	982
221696		Thomas	McNamara	LW	United States	30	77	175	112828
221934		Stefan	Scougall	CM	Scotland	28	57	170	100804
222215		Petter	Strand	LW	Norway	26	71	175	417
222328		Jonas	Bager	CB	Denmark	25	84	182	1786
222912		Moshtagh	Yaghoubi	CDM	Finland	26	84	178	100325
223115		Paul	Gladon	ST	Holland	29	83	188	110
223306		Jarosław	Jach	CB	Poland	27	81	192	101037
223438		Thomas	Renault	GK	France	37	80	184	112276
223779		Damian	Szymański	CDM	Poland	26	70	181	1569
224121		Alessandro	Capello	ST	Italy	25	75	183	110912
224267		Fabio	Strauss	CB	Austria	27	84	195	111821
224437		Maximiliano	González	CDM	Argentina	27	71	178	111715
224624	Fu Huan	Huan	Fu	RB	China PR	28	70	182	112540
224875		Bonke	Innocent	CDM	Nigeria	25	70	180	320
225261	Sergio Gil	Sergio	Gil Latorre	CDM	Spain	25	68	183	110831
225531		Dario	Van den Buijs	CB	Belgium	25	78	188	100634
225793		Ben	Godfrey	CDM	England	23	74	183	1792
226098		Ferdinando	Del Sole	RW	Italy	23	68	179	200
226723		Leonardo	Saldaña	LB	Colombia	31	66	170	112579
227477		Facundo	Altamirano	GK	Argentina	25	85	186	110404
228058		Lukas	Gugganig	CDM	Austria	26	83	191	165
228261		Valtteri	Moren	CB	Finland	30	76	188	110913
228627		Abdulrahman	Al Obaid	LB	Saudi Arabia	28	64	171	112139
228892		Ignacio	Rivero	RWB	Uruguay	29	60	166	111678
229152		Jeremy	Helmer	LW	Holland	24	72	180	1906
229362		Alim	Öztürk	CB	Turkey	28	80	191	106
229650		Cristian	Gutiérrez	LB	Canada	24	70	181	111327
229797		Hamdou	Elhouni	RW	Libya	27	67	175	666
229910		Svante	Ingelsson	CM	Sweden	23	83	189	55
229993		Halil Ibrahim	Sönmez	ST	Turkey	30	75	180	101033
230561		Jay-Roy	Grot	ST	Holland	23	98	193	100651
230676		Roberto	Pirrello	CB	Italy	25	76	190	1843
231344		Moussa	Koné	ST	Senegal	24	70	174	503
231502		Jamie	Hopcutt	CF	England	29	74	180	113173
231973		Danilo	Acosta	LB	United States	23	77	180	111065
232122	Everton	Everton	Nascim. de Mendonça	ST	Brazil	28	81	186	1893
232191	Lee Ho Seung	Ho Seung	Lee	GK	Korea Republic	31	74	188	1475
232439		Luca	Vignali	RB	Italy	25	75	183	110741
232581	Eduardo	Carlos Eduardo	Bendini Giusti	CB	Brazil	28	84	184	111730
232612		Koki	Yonekura	RB	Japan	33	68	176	112093
232753		Kosuke	Nakamachi	CDM	Japan	35	74	174	101151
232790		Hiroki	Iikura	GK	Japan	35	75	181	101151
232946		Kosuke	Taketomi	LM	Japan	30	69	173	111575
233114		Joe	Riley	RB	England	24	71	183	1804
233168		Daisuke	Kikuchi	LM	Japan	30	68	172	111575
233260		Alexis	Vega	ST	Mexico	23	77	173	1882
233484		Allan	Campbell	CDM	Scotland	23	74	175	83
234174		Diamond	Thopola	RB	South Africa	31	72	178	110930
234399		Johannes	Eggestein	ST	Germany	23	75	183	38
50534552		Joonas	Tamm	CB	Estonia	29	97	192	111083
50536147		Ryan	Inniss	CB	England	26	84	196	180
50540161		Alejandro	Guido	CM	United States	27	77	179	112996
50541061		Mateusz	Matras	CDM	Poland	30	88	193	420
50542780	Andrés Prieto	Andrés Tomás	Prieto Albert	GK	Spain	27	91	194	100888
50543809		Baba	Traoré	LB	France	28	75	177	378
50545664		Hárrison	Mojica	CAM	Colombia	28	67	168	112903
50546328		Gauthier	Gallon	GK	France	28	79	186	294
50547404		Sam	McQueen	LB	England	26	70	181	12
50552253		Joao	Rodríguez	ST	Colombia	25	69	180	5
50553305		Tesho	Akindele	ST	Canada	29	79	185	112606
50554763		Paul	Gladon	ST	Holland	29	83	188	680
50556817		Tony	Mauricio	RM	France	27	67	169	64
50558154		Karol	Mets	CB	Estonia	28	80	191	433
50560216		Patrick	Joosten	ST	Holland	25	66	180	100651
50561619		Fabien	Centonze	RB	France	25	75	182	68
50563814		Fabian	Herbers	RW	Germany	27	75	183	693
50564110		Hiroaki	Okuno	CM	Japan	31	67	171	101148
50564796		Yoshihiro	Nakano	LM	Japan	28	66	176	112444
50566144		Omar	Bogle	ST	England	28	80	191	1790
50567238		Pablo	Sisniega	GK	Mexico	26	79	192	112996
50567908		Anderson	Santamaría	CB	Peru	29	75	182	101114
50569416		Ryohei	Shirasaki	LM	Japan	28	70	181	101147
50573676		Ricardo Darío	Blanco	CAM	Argentina	31	64	163	112533
67332883	Pedro Chirivella	Pedro	Chirivella Burgos	CM	Spain	24	66	178	469
67336946		Dženis	Burnić	CDM	Germany	23	70	181	503
67344338		Gabriele	Rolando	RM	Italy	26	71	182	112409
213835		Jens-Martin	Gammelby	RB	Denmark	26	80	192	269
214131		Ramiro	Sánchez	GK	Colombia	37	80	186	101105
214250		Manuel	Palacios	RM	Colombia	28	83	180	112579
214354		Dairon	Asprilla	RM	Colombia	29	75	180	111140
214386		Camilo	Ayala	CDM	Colombia	35	74	179	112578
214680		Gauthier	Gallon	GK	France	28	79	186	112276
214914		Michael	Ríos	RM	Chile	37	68	173	112531
215132		Sebastián	Moyano	GK	Argentina	30	79	188	101084
215363		Lorenzo	Montipó	GK	Italy	25	82	191	112026
215708		Adrien	Monfray	RB	France	30	76	186	112276
215969		Laurent	Dos Santos	RB	France	28	70	177	110456
216154		Jordan	Elsey	CB	Australia	27	80	187	111393
216483		Tariqe	Fosu	LM	England	25	67	170	89
216790		Conor	Grant	CM	England	26	76	176	1929
218182		Gustavo	Mencia	CB	Paraguay	33	78	179	112534
219461		Erik	Palmer-Brown	CB	United States	24	79	185	1904
219756		Filip	Marković	RM	Serbia	29	78	181	64
220185		Brandon	Barker	LM	England	24	67	180	1801
220832		Nicolás	Rubio	CAM	Colombia	26	66	168	112526
221024		Asger	Sørensen	CB	Denmark	25	79	191	543
221475	Lee Chan Dong	Chan Dong	Lee	CM	Korea Republic	28	83	183	1478
221521		Rick	Dekker	CM	Holland	26	65	174	1914
221713		Daniel	Lovitz	LB	United States	29	75	178	111139
221857	Jin Jingdao	Jingdao	Jin	RM	China PR	29	64	170	111724
222052	Lee Myung Jae	Myung Jae	Lee	LB	Korea Republic	27	75	181	1473
222466	José Carlos	José Carlos	Ramírez Suárez	CB	Spain	25	75	182	110831
222955		Michele	Russo	CB	Italy	34	74	185	110912
223125		Javier	Vet	CDM	Holland	27	85	190	635
223330		Marco	Moscati	CM	Italy	28	75	178	199
223424		İlhan	Depe	RM	Turkey	28	66	172	111339
223673		Markus	Wostry	CB	Austria	29	74	184	252
224108		Viv	Solomon-Otabor	LM	Nigeria	25	77	175	88
224217		Robin	van der Meer	LB	Holland	26	86	196	1971
224455		Andrea	Arrighini	ST	Italy	31	75	180	112409
224611	Lu Wenjun	Wenjun	Lu	ST	China PR	32	71	185	112540
225071		Ben	Whiteman	CM	England	25	68	185	142
225387		Lewis	Page	LB	England	25	72	178	89
225654		Julius	Düker	CF	Germany	25	80	188	10030
225849		Maximilian	Dittgen	LM	Germany	26	77	182	492
226012		Ryan	Manning	CM	Republic of Ireland	25	66	172	1797
226506		Karol	Mets	CB	Estonia	28	80	191	1904
227446		Kevin	van Veen	ST	Holland	30	90	185	1930
227810		Stian Semb	Aasmundsen	CM	Norway	31	74	175	113459
228310		Thomas	Deng	CB	Australia	24	74	182	111397
228715		Benjamin	Van Durmen	CDM	Belgium	24	79	185	111560
228971	Jano	Alejandro	Velasco Fariñas	CDM	Spain	34	78	188	1785
229286		Tim	Skarke	RM	Germany	24	71	179	111235
229509		Michael	Perlak	CAM	Austria	35	60	171	1785
229701		Philipp	Ochs	LM	Germany	24	75	175	820
229868		Daniele	Mignanelli	LB	Italy	28	75	179	1847
229971		Fabien	Centonze	RB	France	25	75	182	64
230125		Alan	Acosta	RM	Mexico	24	73	173	1881
230866		Kabelo	Mahlasela	CAM	South Africa	30	65	175	110929
231244		Edson	Reséndez	GK	Mexico	25	72	185	1032
231664		James	Aguirre	GK	Colombia	29	70	180	112992
232083		Joshua	Yaro	CB	Ghana	27	74	180	112134
232195		Juan David	Ríos	CDM	Colombia	29	67	174	112579
232462		Hiroaki	Okuno	CM	Japan	31	67	171	112836
232586		Kei	Koizumi	RB	Japan	26	69	173	101145
232711		Jens	Stage	RM	Denmark	24	83	187	271
232756		Fikayo	Tomori	RB	England	23	75	185	91
232847		Yota	Akimoto	GK	Japan	34	84	183	113161
232887		Atsutaka	Nakamura	LM	Japan	30	67	174	101147
233105		Kenny	Dougall	CDM	Australia	28	79	182	1932
233148		Yoshihiro	Nakano	LM	Japan	28	66	176	112836
233397		Agyemang	Diawusie	RM	Germany	23	75	180	111239
233467		Deyver	Vega	RW	Costa Rica	28	71	178	919
234093		Tamás	Szántó	CAM	Hungary	25	73	179	254
234372		Cristhian	Machado	CDM	Bolivia	31	70	173	691
234534		Serge	N'Guessan	CM	Côte d'Ivoire	27	65	165	1823
50534622	Sin Se Gye	Se Gye	Sin	RB	Korea Republic	30	73	178	983
50537897		Nicolas	Hasler	RM	Liechtenstein	30	78	175	696
50540505		Frédéric	Bong	CB	Cameroon	34	91	187	110456
50541694		Kieran	Sadlier	LM	Republic of Ireland	26	66	182	142
50543507		Maximilian	Ahlschwede	RB	Germany	31	78	186	27
50545205	João Pedro	João Pedro	Almeida Machado	CM	Portugal	28	69	175	112516
50545859		Ray	Vanegas	LM	Colombia	28	72	176	111723
50546410		Nicolás	Avellaneda	GK	Argentina	28	83	191	110395
50549406		Conor	Washington	ST	Northern Ireland	29	85	178	1794
50553215	Sim Sang Min	Sang Min	Sim	LB	Korea Republic	28	70	172	1474
50553582		Stefan	Scougall	CM	Scotland	28	57	170	1480
50556085		Maximiliano	González	CDM	Argentina	27	71	178	110580
50559655	Lee Yeong Jae	Yeong Jae	Lee	CM	Korea Republic	26	60	174	111588
50560418		Jorge	Segura	CB	Colombia	24	80	187	101114
50561773		Alan	Acosta	RM	Mexico	24	73	173	110152
50563718		Roque	Caballero	ST	Paraguay	30	80	183	112992
50564257		Gakuto	Notsuda	CM	Japan	27	71	176	113157
50564793		Kentaro	Moriya	CDM	Japan	32	65	173	101144
50565045		Agyemang	Diawusie	RM	Germany	23	75	180	492
50566166		Sebastian	Diaz	CDM	Chile	25	78	175	112709
50567267		Marcus	Edwards	RM	England	22	61	176	1971
50568525	Bruno Leite	Bruno Miguel	Santos Leite	CM	Portugal	26	75	184	1463
50570033	Lim Chan Wool	Chan Wool	Lim	RW	Korea Republic	27	71	176	1478
50573113	Chuca	Víctor	Moya Martínez	CM	Spain	24	75	181	483
67331979		Paul	Gladon	ST	Holland	29	83	188	1915
67334876		Ryan	Manning	CM	Republic of Ireland	25	66	172	15
213670		Isak	Ssewankambo	RB	Sweden	25	80	179	417
213922		Dennis	Erdmann	CDM	Germany	30	86	188	110588
214177		Luis	Paz	CDM	Colombia	32	70	175	111722
214339		Deivy	Balanta	CB	Colombia	27	81	186	101101
214419		Juan Ignacio	Duma	RW	Argentina	27	74	175	112533
214762		Nicolás	Avellaneda	GK	Argentina	28	83	191	111710
215028		Fausto	Montero	CM	Argentina	32	71	167	111019
215239		Jacobo	Mansilla	CM	Argentina	34	74	179	112668
215533		Sonny	Stevens	GK	Holland	29	93	194	1971
215758		Jason	McCarthy	RB	England	25	80	186	1933
216023		Michael	Lepe	CM	Chile	30	77	179	112533
216269		Sebastian	Hertner	LB	Germany	30	75	180	110502
216709		Adam	Sušac	CB	Croatia	32	80	185	487
217391	Mica Pinto	Michael	Gonçalves Pinto	LB	Portugal	28	77	176	634
218464		Eliser	Quiñones	LM	Colombia	32	78	174	101105
219584		Luca	Lezzerini	GK	Italy	26	86	195	205
220058		Dillon	Phillips	GK	England	26	76	188	89
220605		Joao	Rodríguez	ST	Colombia	25	69	180	260
220937		Matías	Pérez Acuña	RB	Argentina	27	72	176	111715
221356		Denis	Mahmudov	LM	FYR Macedonia	31	62	171	1971
221482		Kevin	Hidalgo	CB	Chile	26	73	177	111327
221657		Tesho	Akindele	ST	Canada	29	79	185	695
221853	Mi Haolun	Haolun	Mi	LB	China PR	28	60	175	112983
221985		Niko	Datković	CB	Croatia	28	84	190	110747
222216		Kristian Fardal	Opseth	ST	Norway	31	90	189	918
222661	Yoon Seung Won	Seung Won	Yoon	LW	Korea Republic	26	74	186	982
222959		Stefano	Moreo	ST	Italy	28	75	191	1843
223222		Benjamin	Delacourt	CB	France	35	77	177	1750
223369		Markus	Ballmert	RB	Germany	27	68	173	110597
223665		Flavio	Ciampichetti	ST	Argentina	33	85	186	112533
223873		Anthony	Walongwa	CB	Congo	27	81	182	71
224134		Alejandro	Márquez	CM	Chile	29	77	173	112116
224395		Bentley Baxter	Bahn	CAM	Germany	28	69	180	110482
224490		Mehmet Zeki	Çelik	RB	Turkey	24	67	180	65
224842		Greg	Docherty	CM	Scotland	24	72	177	127
225169		Tony	Mauricio	RM	France	27	67	169	110456
225435		José Luis	Moreno	CB	Colombia	24	78	187	101106
225755	Olavide	Miguel	Olavide Montes	RM	Spain	25	70	178	479
225983		Siyabonga	Mpontshane	GK	South Africa	35	79	183	110930
226179		Maximilian	Sauer	RB	Germany	27	70	177	165
226928		Berkan	Emir	LB	Turkey	33	73	178	101026
227599		Djibril	Dianessy	CAM	France	25	73	182	634
228225		Wesley	Harding	RB	England	24	79	181	88
228568		Patrick	Joosten	ST	Holland	25	66	180	1903
228883		Benedikt	Gimber	CDM	Germany	24	83	185	111239
229179		Christian	Tabó	LM	Uruguay	27	70	174	110152
229460		Andrea	Nalini	LW	Italy	31	72	180	110734
229793		Benjamin	Tetteh	ST	Ghana	24	92	193	267
229831		Osvaldo	Rodríguez	LB	Mexico	24	73	175	110781
229923		Sebastian	Stolze	RM	Germany	26	70	182	543
230074		Enock	Kwateng	RB	France	24	75	181	71
230623		Sinan	Bakış	ST	Turkey	27	72	188	111821
231044		Joe	Aribo	CM	England	25	76	183	89
231197		Marcel	Hilßner	LM	Germany	26	80	183	27
231821		Ziyad	Al Sahafi	CB	Saudi Arabia	27	73	188	607
232090		Giorgi	Aburjania	CDM	Georgia	26	78	185	110831
232375		Tsukasa	Umesaki	RM	Japan	34	68	169	113161
232451		Hirofumi	Watanabe	CB	Japan	34	80	186	101146
232609		Gakuto	Notsuda	CAM	Japan	27	71	176	112836
232714		Yohei	Toyoda	ST	Japan	36	79	185	113160
232760		Elhadji Pape	Diaw	CB	Senegal	26	85	193	111083
232874		Shuto	Yamamoto	LB	Japan	36	69	180	101147
233017	Park Han Bin	Han Bin	Park	CM	Korea Republic	23	75	182	2056
233139		Cedric	Itten	ST	Switzerland	24	81	189	898
233145		Kentaro	Moriya	CDM	Japan	32	65	173	111730
233254		Shuhei	Akasaki	ST	Japan	29	70	174	111730
233457	Jang Ho Ik	Ho Ik	Jang	RM	Korea Republic	27	62	173	983
233500		Luis	Sinisterra	RW	Colombia	22	70	177	246
234222	Cho Young Wook	Young Wook	Cho	ST	Korea Republic	22	71	177	982
50535429		Donny	Toia	LB	United States	29	75	173	111065
50537805		Lawrence	Olum	CB	Kenya	37	83	188	111138
50540810		Erik	Correa	ST	Colombia	29	70	184	112579
50542040		Ryan	McLaughlin	RM	Northern Ireland	26	69	174	1955
50543043		Abdullah	Al Salem	CAM	Saudi Arabia	28	74	184	112139
50545318		Isak	Ssewankambo	RB	Sweden	25	80	179	113173
50545898		Manuel	Palacios	RM	Colombia	28	83	180	112528
50546407		Ronald	de la Fuente	LB	Chile	30	75	175	110980
50548384	Wang Shangyuan	Shangyuan	Wang	CM	China PR	28	70	185	111839
50553123	Lee Chan Dong	Chan Dong	Lee	CM	Korea Republic	28	83	183	2055
50553863		Petter	Strand	LW	Norway	26	71	175	919
50555756		Viv	Solomon-Otabor	LM	Nigeria	25	77	175	1790
50559094		Kevin	van Veen	ST	Holland	30	90	185	1949
50561298		Cristian	Gutiérrez	LB	Canada	24	70	181	110980
50563148		Dennis	Widgren	LB	Sweden	27	75	180	708
50564416		Takuya	Wada	RB	Japan	31	63	170	101151
50564902		Shuhei	Akasaki	ST	Japan	29	70	174	112092
50565115		Deyver	Vega	RW	Costa Rica	28	71	178	920
50567230		Loïc	Badiashile	GK	France	23	80	186	74
50567318		Ramon Pascal	Lundqvist	CAM	Sweden	24	74	178	1904
50569058		Vasyl	Kravets	LB	Ukraine	23	78	185	100888
50570291		Marcel	Bär	RM	Germany	29	80	184	110500
67307675		Fredrik Oldrup	Jensen	CM	Norway	28	73	183	1456
67334518		Julius	Düker	CF	Germany	25	80	188	110500
67341053		Nicolás	Ramírez	CB	Chile	24	77	182	111327
213822		Luis	Cabrera	CDM	Chile	27	73	167	101097
214016		Hárrison	Mojica	CAM	Colombia	28	67	168	112992
214200		Juan	Zuluaga	RB	Colombia	28	67	176	112903
214351		Diego	Novoa	GK	Colombia	32	88	186	112523
214608		Alejandro	Bernal	CDM	Colombia	33	80	183	101099
214759		Ronald	de la Fuente	LB	Chile	30	75	175	112534
215036		Fernando	Cornejo	CM	Chile	25	69	174	101097
215370		Maximilian	Hofmann	CB	Austria	28	70	183	254
215668		Rasmus	Festersen	ST	Denmark	34	75	176	272
215990		Óliver	Benítez	CB	Argentina	30	79	186	111328
216051		Antonio	Medina	ST	Argentina	36	65	170	111707
216535		Jannik	Bandowski	LB	Germany	27	81	189	160
216802		Juan	Kaprof	ST	Argentina	26	70	169	111708
217696		Azzeddine	Doukha	GK	Algeria	35	85	186	112392
219471		Christophe	Diedhiou	CB	Senegal	33	76	191	111560
219717		Yony	González	CAM	Colombia	27	81	184	101101
220127	João Silva	João Pedro	Pereira Silva	ST	Portugal	31	77	187	10019
220872		Greg	Kiltie	LM	Scotland	24	70	173	82
221018		Torben	Rehfeldt	CB	Germany	28	85	193	550
221456		Reece	Burke	CB	England	24	81	189	1952
221488		Ryan	Hollingshead	LB	United States	30	82	185	695
221666		Luke	Mulholland	CM	England	33	68	175	111065
221819	Song Boxuan	Boxuan	Song	LM	China PR	31	73	180	112983
222027		Jared	Watts	CB	United States	29	70	185	698
222263		Nordin	Jackers	GK	Belgium	23	80	187	673
222889		Lucas	Acevedo	CB	Argentina	29	97	194	111714
223009		Edoardo	Lancini	CB	Italy	27	79	188	190
223147		Julius	Biada	ST	Germany	28	76	178	29
223357		Wilfrid	Kaptoum	CM	Cameroon	25	72	170	449
223652		Sebastian	Ernst	LM	Germany	26	68	179	165
223819	Juan Cámara	Juan del Carmen	Cámara Mesa	CM	Spain	27	66	180	112505
224149		Rubio	Rubin	ST	United States	25	73	180	111678
224327		Serge	Leuko	RB	Cameroon	28	70	174	110831
224566	Carlos Blanco	Carlos	Blanco Moreno	CB	Spain	25	70	188	483
224669	Yin Hongbo	Hongbo	Yin	RM	China PR	31	69	180	112978
225258	Borja	Borja	San Emeterio Díaz	RB	Spain	24	67	175	110831
225482		Timur	Zhamaletdinov	ST	Russia	24	73	181	315
225710		Seydou	Sy	GK	Senegal	25	80	192	69
225956		Babajide	David	RM	Nigeria	25	69	178	1463
226249		Moses	Odjer	CM	Ghana	24	69	170	110373
227398		Eduar	Caicedo	CB	Colombia	26	79	186	101102
227678		Ezri	Konsa	CB	England	23	77	183	1925
228197		Hussein	El Sayed	LB	Egypt	29	68	170	112096
228591		Carlens	Arcus	RB	Haiti	25	76	180	57
228870		Bart	Straalman	CB	Holland	24	74	193	635
229259	Dani Suárez	Daniel	Suárez Garcia	CB	Spain	31	86	189	420
229445		Guillermo	Pacheco	RB	Chile	32	76	181	112534
229658		Cristian	Dajome	LM	Colombia	27	69	172	101099
229815		Nico	Antonitsch	CB	Austria	29	81	185	110592
229948		Jack	Harper	ST	Scotland	25	75	185	573
230038		Anthony	Maisonnial	GK	France	23	74	188	110770
230644		Vajebah	Sakor	CM	Norway	25	83	185	319
231132		Martin	Spelmann	RM	Denmark	34	72	175	271
231408		Jonathan	Leko	RW	England	22	64	182	109
231749	Miguelón	Miguel	Juan Llambrich	RB	Spain	25	70	175	483
232070		Roque	Caballero	ST	Paraguay	30	80	183	112578
232189		Nicolás	Ramírez	CB	Chile	24	77	182	112709
232382		Toshiyuki	Takagi	LM	Japan	30	64	170	101148
232573		Ken	Matsubara	RB	Japan	28	73	180	101151
232685		Kentaro	Oi	CB	Japan	37	75	181	101144
232718		Yoshiki	Takahashi	CDM	Japan	36	67	170	113160
232768		Takuya	Wada	RB	Japan	31	63	170	113157
232853		Hiroki	Kawano	RM	Japan	31	65	168	113160
233098		Sherel	Floranus	LB	Holland	22	74	181	1913
233140		Riki	Harakawa	CM	Japan	27	72	175	113160
233207		Sei	Muroya	RB	Japan	27	68	176	101150
233463		Steffen Lie	Skålevik	ST	Norway	28	75	180	919
233849		Anthony	D'Alberto	RB	Belgium	26	74	178	1900
234231		Mohamed	Djetei	CB	Cameroon	26	73	185	15019
234515		Jordan	Lefort	LB	France	27	83	184	1816
234727		Timo	Hübers	CB	Germany	25	82	190	485
234983		Qazim	Laçi	CAM	Albania	25	80	180	614
50537232		Michael	Ihiekwe	CB	England	28	81	186	1797
50540324		Nick	Fitzgerald	LM	Australia	29	70	175	111398
50541677		Joe	Rafferty	RB	Republic of Ireland	27	75	184	1801
50542374	Jin Seong Wook	Seong Wook	Jin	ST	Korea Republic	27	78	183	2055
50543785		Andreas	Vindheim	RWB	Norway	26	79	184	267
50545825		Luis	Paz	CDM	Colombia	32	70	175	101099
50546256		Alejandro	Bernal	CDM	Colombia	33	80	183	112992
50547638		Óliver	Benítez	CB	Argentina	30	79	186	111714
50552591		Kyle	Vassell	ST	England	28	78	183	1797
50553344		Thomas	McNamara	LW	United States	30	77	175	698
50553864		Kristian Fardal	Opseth	ST	Norway	31	90	189	749
50557130		Timur	Zhamaletdinov	ST	Russia	24	73	181	873
50559730		Dženis	Burnić	CDM	Germany	23	70	181	22
50561479		Osvaldo	Rodríguez	LB	Mexico	24	73	175	110147
50562780		Martin	Spelmann	RM	Denmark	34	72	175	922
50563837		Nicolás	Ramírez	CB	Chile	24	77	182	15029
50564594		Kosuke	Taketomi	LM	Japan	30	69	173	113161
50564816		Daisuke	Kikuchi	LM	Japan	30	68	172	101145
50565111		Steffen Lie	Skålevik	ST	Norway	28	75	180	112199
50566972		Reuven	Niemeijer	CAM	Holland	26	71	178	100628
50567693	Reinildo	Reinildo Isnard	Mandava	LB	Mozambique	27	74	180	65
50568746	Han Seung Gyu	Seung Gyu	Han	CM	Korea Republic	24	63	171	1477
50570434		Ole	Käuper	CM	Germany	24	77	187	506
67302820		Ben	Pringle	LM	England	33	74	173	15048
67334820		Babajide	David	RW	Nigeria	25	69	178	298
67342351		Riley	McGree	CM	Australia	22	72	178	231
213719		Alec	Kann	GK	United States	30	86	193	112885
214081		David	Murillo	RB	Colombia	27	75	178	101101
214211		Ray	Vanegas	LM	Colombia	28	72	176	101106
214270		Carlos	Escobar	ST	Chile	31	75	183	112668
214489		Mauricio	Restrepo	CDM	Colombia	40	70	174	101106
214704		Cristián	Guerra	GK	Chile	26	83	183	110977
214915		Claudio	Sepúlveda	CDM	Chile	29	73	175	111327
215148		Mariano	Bíttolo	LB	Argentina	31	66	174	110396
215443		Philip	Zinckernagel	CAM	Denmark	26	70	175	918
215864		Joe	Dodoo	ST	Ghana	26	70	183	1926
216047		Pedro	Muñoz	RW	Chile	35	69	173	112116
216484		Craig	Tanner	RM	England	26	66	174	83
216736	Wang Shangyuan	Shangyuan	Wang	CM	China PR	28	70	185	111779
217758		Conor	Washington	ST	Northern Ireland	29	85	178	15
219546		Jesús	Murillo	CB	Colombia	27	72	183	101103
219990		Vebjørn	Hoff	CM	Norway	25	74	181	1456
220348	Isaac Carcelén	Isaac	Carcelén Valencia	RB	Spain	28	75	178	110066
220786		Moussa	Njie	LM	Norway	25	75	185	917
220944		Joe	Wildsmith	GK	England	25	65	183	1807
221468	Son Jeong Hyeon	Jeong Hyeon	Son	GK	Korea Republic	29	88	191	111588
221503		Harry	Shipp	LM	United States	29	66	175	111144
221605		Alexander	Jeremejeff	ST	Sweden	27	85	192	711
221801	Liao Lisheng	Lisheng	Liao	CDM	China PR	28	68	177	111839
221986		Jeff	Hardeveld	CB	Holland	26	75	184	100634
222286		Gautier	Lloris	CB	France	26	83	191	72
222540		Nikos	Vergos	ST	Greece	25	77	183	1884
223082		Will	Norris	GK	England	27	81	191	110
223137		Federico	Bonazzoli	ST	Italy	24	77	182	110912
223354		Bogdan	Vătăjelu	LB	Romania	28	70	171	267
223638		Deian	Boldor	CB	Romania	26	80	189	110911
223813		Damian	van Bruggen	CB	Holland	25	81	184	100651
224163		Arno	Verschueren	CDM	Belgium	24	73	186	1904
224386		Mauricio	Tévez	RW	Argentina	25	69	170	111710
224487		Eamonn	Brophy	ST	Scotland	25	68	174	82
224826		Grégory	Berthier	RM	France	25	65	177	111273
225270		Ignacio	Jeraldino	ST	Chile	25	79	181	101097
225550	Gaspar	Gaspar	Panadero Zamora	LM	Spain	23	62	170	1861
225798		Burak	Çamoğlu	RM	Turkey	24	67	173	1832
226541		Uygar	Zeybek	CDM	Turkey	26	72	178	326
227575		Misael	Riascos	RM	Colombia	30	73	172	112990
228007	Lee Yeong Jae	Yeong Jae	Lee	CM	Korea Republic	26	60	174	1473
228426		Leonardo	Escorcia	CB	Colombia	24	77	183	112903
228770		Jorge	Segura	CB	Colombia	24	80	187	101103
229091		Bailey	Peacock-Farrell	GK	Northern Ireland	24	73	192	8
229277		Jonas	Föhrenbach	LB	Germany	25	81	184	543
229416	Morillas	David	Morillas Jiménez	LB	Spain	34	75	186	110066
229745		Bright	Enobakhare	RW	Nigeria	23	77	179	110
229892	Álex López	Álex	López de Groot	ST	Spain	27	75	187	453
229968		Thomas	Agyepong	LM	Ghana	25	73	170	81
230084		Lukas	Nmecha	ST	England	22	70	185	1801
230774		Jake	Clarke-Salter	CB	England	23	70	188	1909
231292		Jamal	Lewis	LB	Northern Ireland	23	70	178	1792
231500		Dennis	Widgren	LB	Sweden	27	75	180	113173
231948		Brendan	Hines-Ike	CB	United States	26	77	185	100081
232005		Ezequiel	Palomeque	CB	Colombia	28	83	193	101102
232166		Fabian	Herbers	RM	Germany	27	75	183	112134
232405		Yhorman	Hurtado	RB	Colombia	24	67	170	112579
232580	Gabriel	Gabriel	dos S. Magalhães	CB	Brazil	23	78	190	65
232655		Simen	Juklerød	LB	Norway	27	80	187	230
232750	Fabio	Fabio	Aguiar da Silva	CB	Brazil	32	78	186	112093
232786		Keita	Endo	RM	Japan	23	66	175	101151
232848		Yuichi	Maruyama	CB	Japan	32	76	184	112092
232929		Masatoshi	Mihara	CM	Japan	33	67	175	101146
233109		Finn	Stokkers	ST	Holland	25	79	186	634
233141		Tatsuya	Hasegawa	CAM	Japan	27	58	164	111730
233222		Kamil	Jóźwiak	LM	Poland	23	70	176	873
233401		Aron	Sigurðarson	LW	Iceland	27	70	177	1524
233564		Andrés	Schetino	CDM	Uruguay	27	73	183	112168
234293		Atomu	Tanaka	CAM	Japan	33	68	167	101148
234496		Omar	Bogle	ST	England	28	80	191	88
234577	Diogo Costa	Diogo	Meireles Costa	GK	Portugal	21	81	187	236
234748	Gu Sung Yun	Sung Yun	Gu	GK	Korea Republic	27	82	195	112444
235172	Rúben Vinagre	Rúben	Nascimento Vinagre	LWB	Portugal	22	64	174	110
235582		Loïc	Badiashile	GK	France	23	80	186	69
235855		Joel	Asoro	ST	Sweden	22	75	175	1960
236260		Anderson	Santamaría	CB	Peru	29	75	182	110152
236477		Alexis	Claude-Maurice	CAM	France	23	62	174	217
236703		David	Raum	LM	Germany	23	75	180	165
237403		Joseph	Cox	ST	Panama	27	75	194	101099
237769		Koya	Kitagawa	ST	Japan	25	74	180	101149
238004		Albert	Guðmundsson	RW	Iceland	24	80	177	1906
238346		Hamza	Mendyl	LB	Morocco	23	73	179	34
238647		Morris	Schröter	RB	Germany	25	75	183	110592
238693		Martin	Röser	LM	Germany	30	75	181	1832
238988		Maximilian	Ullmann	LB	Austria	25	65	180	252
239357		Christian	Gebauer	RM	Austria	27	75	187	15009
239479		Stefano	Scappini	ST	Italy	33	74	181	111993
239755		Saba	Lobjanidze	LM	Georgia	26	62	176	1786
239956		Myron	Boadu	ST	Holland	20	65	180	1906
240282		Aleš	Matějů	RB	Czech Republic	25	79	184	190
240685		Tom	van de Looi	CM	Holland	22	75	180	1915
240915	Miranda	Juan	Miranda González	LB	Spain	21	76	185	241
241275		Driss	Khalid	ST	Morocco	22	78	180	1809
241743		Ulises	Segura	CM	Costa Rica	28	70	183	688
242270		Nikolas	Spalek	RW	Slovakia	24	63	170	190
243197		Christopher	Knett	GK	Austria	31	81	184	2045
49511		Frode	Kippe	CB	Norway	43	97	194	299
110606		Alan	Mannus	GK	Northern Ireland	39	92	188	306
118794		Andy	Lonergan	GK	England	37	87	192	12
138830		Dean	Lewington	CB	England	37	86	183	1798
148564		Sławomir	Peszko	LM	Poland	36	70	173	111091
151270		James	Coppinger	CAM	England	40	65	170	142
155422		Jakub	Szmatuła	GK	Poland	40	81	188	111086
162397		Håkon	Skogseid	RB	Norway	33	77	186	917
163342		Simon	Cox	ST	Republic of Ireland	34	70	181	1954
165185		Craig	Davies	ST	Wales	35	85	188	1940
167697		Stephen	O'Donnell	CM	Republic of Ireland	35	77	177	837
168730		Diego	Guastavino	CAM	Uruguay	37	68	168	101104
170229		Luke	Prosser	CB	England	33	79	191	1935
175141		Didier	Ovono	GK	Gabon	38	86	186	111817
176406	Lee Sang Ho	Sang Ho	Lee	CM	Korea Republic	34	65	173	982
178143		Eray	Birniçan	GK	Turkey	33	89	188	111339
179579		Tomasz	Nowak	CAM	Poland	35	72	171	111089
180740		Nikolai	Topor-Stanley	CB	Australia	36	90	191	111398
181339		Kebba	Ceesay	CB	Gambia	33	74	180	113876
182045	Rong Hao	Hao	Rong	LB	China PR	34	72	177	110955
183023	Sui Donglu	Donglu	Sui	CB	China PR	38	88	194	112165
183597		Alexander	Stolz	GK	Germany	37	89	189	10029
184334	Song Jin Hyung	Jin Hyung	Song	CM	Korea Republic	33	65	175	982
186172		Gavin	Gunning	CB	Republic of Ireland	30	80	188	561
186508		Arild	Østbø	GK	Norway	30	75	183	298
186922		Daniel	Christensen	LB	Denmark	32	76	173	111660
187634		Richard	Ruiz	RB	Mexico	35	72	175	1882
188278		Mark	Birighitti	GK	Australia	30	84	189	1904
188968		Gonzalo	Marinelli	GK	Argentina	32	76	180	111715
189439		Luca	Castiglia	CM	Italy	32	76	185	110373
189780		Enrico	Pezzi	LB	Italy	31	75	181	112409
190058		Dejan	Sorgić	ST	Serbia	31	70	177	1715
190545		Christian	Dorda	LB	Germany	32	80	182	167
191257		Sören	Brandy	ST	Germany	36	79	183	159
191669	Jeong Hyuk	Hyuk	Jeong	CM	Korea Republic	35	70	175	1477
192315	Henrique	Henrique	de Andrade Silva	LW	Brazil	36	60	165	111395
192500		Even	Barli	GK	Norway	30	81	187	112200
193358	Romário	Romário	Pereira Sipião	CM	Brazil	35	72	173	1439
193715		Aymen	Tahar	CDM	Algeria	31	70	176	1898
193875		Jack	Hingert	RB	Australia	30	68	170	111395
195356		Matej	Delač	GK	Croatia	28	80	190	1446
198134		Frank	Olijve	CM	Holland	32	73	176	635
199002		Mustafa	Amini	CM	Australia	28	75	175	271
199301	Hwang Il Soo	Il Soo	Hwang	ST	Korea Republic	33	68	173	1473
199815		Sam	Mantom	CM	England	29	70	175	1954
200601	Yoon Bit Garam	Bit Garam	Yoon	CM	Korea Republic	31	75	178	2055
200812		Max	Ehmer	CB	Germany	29	75	188	1802
200877		Manuel	Scavone	CM	Italy	34	74	187	347
200989		Maximilian	Schulze Niehues	GK	Germany	32	90	192	531
202053		Ryō	Miyaichi	RM	Japan	28	71	183	110329
202301	Kim Ho Nam	Ho Nam	Kim	LM	Korea Republic	32	72	178	2055
202654		Đorđe	Čotra	LB	Serbia	36	81	184	111092
203015	Lee Woong Hee	Woong Hee	Lee	CB	Korea Republic	33	78	182	982
203347		Erik	Tønne	LW	Norway	30	78	180	112200
203849		Cody	Cropper	GK	United States	28	91	193	691
204095		Ryan	Jackson	RB	England	31	65	175	1935
204637		Julian	Derstroff	LM	Germany	29	75	182	543
204817		Marco	Ospitalieri	LB	Belgium	29	71	180	634
205202		Wojciech	Golla	CB	Poland	29	80	186	111092
205423		Herolind	Shala	CM	Kosovo	29	71	178	1524
237490		Patrick	Sontheimer	CM	Germany	23	65	168	165
237574		Samuel	Tetteh	ST	Ghana	25	74	180	252
237758		Ko	Matsubara	LB	Japan	24	72	182	101149
237784		Yusuke	Maruhashi	LB	Japan	30	73	178	101148
238114		Carlos	Vargas	LB	Mexico	22	76	176	1879
238589		Matthias	Rahn	CB	Germany	31	92	195	110700
238637		Sebastian	Vasiliadis	CAM	Germany	23	75	175	10030
238820		Quentin	Maceiras	RB	Switzerland	25	75	181	110770
238989		Rajko	Rep	LM	Slovenia	31	72	177	2017
239350		Siriki	Dembele	RM	Scotland	24	67	173	1938
234518		Sebastian	Diaz	CDM	Chile	25	78	175	101097
234667	Nadjack	Eliseu Mendja	Nadjack Cassamá	RB	Guinea-Bissau	27	74	184	744
234826	Toni Martínez	Antonio	Martínez López	ST	Spain	24	70	180	110066
235474		Gabriele	Rolando	RM	Italy	26	71	182	1837
235670		Ramon Pascal	Lundqvist	CAM	Sweden	24	74	178	247
236302		Marko	Mirić	ST	Serbia	34	81	192	2007
236635	Juan Rodríguez	Juan	Rodríguez Martínez	CB	Spain	26	83	184	459
236823		Isak	Pettersson	GK	Sweden	24	80	180	702
237546		Jovan	Stojanović	CAM	Serbia	29	80	188	100081
237779		Tatsuya	Yamashita	CB	Japan	33	73	182	101148
237942		Pervis	Estupiñán	LB	Ecuador	23	69	175	453
238069		Gabriel	Carrasco	RB	Argentina	24	74	175	110395
238643		Marcel	Bär	RM	Germany	29	80	184	550
238678		Kai	Gehring	CB	Germany	33	85	193	111379
238867	Theo Ryuki	Theodoros Ryuki	Panagopoulos	CAM	Japan	26	73	179	10031
239021		Theodor	Bergmann	CDM	Germany	24	75	181	29
239361		Dani	de Wit	CM	Holland	23	75	183	245
239550		Andrew	Gravillon	CB	France	23	80	185	200
239738		Jesús	Angulo	LB	Mexico	23	73	175	110144
240046	João Victor	João Victor	Santos Sá	LW	Brazil	27	72	178	252
240507		Angel	Gomes	CAM	England	20	61	168	11
240689		Jonathan	Sandoval	RB	Uruguay	34	77	179	111019
240859	Berrocal	Juan	Berrocal González	CB	Spain	21	72	184	481
241252	Tang Xin	Xin	Tang	LB	China PR	30	74	177	112977
241781		Mohamed	Awad	GK	Egypt	29	63	182	112408
242050		Eduardo	Sosa	CAM	Venezuela	25	75	170	687
243581		Sindrit	Guri	ST	Albania	27	86	189	682
17725		Aaron	Hughes	CB	Northern Ireland	41	70	183	80
111328		Luke	McCormick	GK	England	37	88	183	1934
122066		Ronny	König	ST	Germany	38	93	190	110592
138729		Kasper	Risgård	CM	Denmark	38	79	182	820
145758	Freire	Leandro	Freire de Araújo	CB	Brazil	31	82	187	101149
152454		Gareth	Evans	RM	England	33	80	183	1790
155264		Vadim	Demidov	CB	Norway	34	80	185	917
159168	Thiago Xavier	Thiago Xavier	Rodrigues Corrêa	CDM	Brazil	37	76	180	110456
163203		Darren	O'Dea	CB	Republic of Ireland	34	82	185	180
164542		Alan	Gordon	ST	United States	39	86	191	693
165502		Josh	Lillis	GK	England	34	79	183	1955
169619		Gary	Liddle	CB	England	35	79	185	1480
173815		Michael	Bostwick	CDM	England	33	89	193	149
176592		Markus	Palionis	CB	Lithuania	34	90	194	543
177568		Alexandre	Raineau	LB	France	35	75	178	212
178312		Davide	Bassi	GK	Italy	36	82	190	110741
179822		Happy	Jele	CB	South Africa	34	70	181	110930
180749		Tarek	Elrich	RB	Australia	34	75	180	112427
181468		Dean	Bouzanis	GK	Australia	30	84	185	112224
182365		Jamie	Jones	GK	England	32	91	191	1917
183024	Fan Xiaodong	Xiaodong	Fan	LB	China PR	34	73	178	111769
184222		Jesper	Rask	GK	Denmark	33	88	196	112425
185205	Evandro	Evandro	Silva do Nascimento	ST	Brazil	33	79	186	982
186502		Gianluca	Nijholt	CDM	Holland	31	79	183	1904
186845		Luca	Di Matteo	LB	Italy	33	74	180	347
187157		Matt	Godden	ST	England	30	78	185	1938
188417		Álvaro	Fernández	CM	Uruguay	35	72	185	111714
189171		Adam	Chicksen	LB	England	29	74	173	1804
189492		Stuart	O'Keefe	CM	England	30	64	173	1929
189721		Arnór	Smárason	RM	Iceland	32	76	184	299
189910		Curtis	Main	ST	England	29	86	184	83
190454		Stian	Ringstad	LB	Norway	29	80	188	1757
190720		Tosaint	Ricketts	ST	Canada	34	77	183	111651
191260		Abdullah	Al Zori	LB	Saudi Arabia	33	69	180	112408
191861	Dong Xuesheng	Xuesheng	Dong	ST	China PR	32	76	190	112978
192317		Jed	Steer	GK	England	28	80	182	89
193246		Lamar	Neagle	LM	United States	34	75	180	111144
193422		Torgeir	Børven	ST	Norway	29	72	185	1456
193851		David	Blacha	CF	Poland	30	72	174	487
195124		David	Amoo	RM	England	30	77	178	1944
197983		Martin	Lorentzson	CB	Sweden	37	72	179	705
199021		Keith	Ward	CAM	Republic of Ireland	30	65	168	305
199245		Guillermo	Allison	GK	Mexico	30	90	191	1878
199801		Felix	Burmeister	CB	Germany	31	82	186	110500
200255		Jules	Reimerink	LM	Holland	31	79	185	110700
200703		Rafał	Siemaszko	ST	Poland	34	68	170	111082
200876		Guillaume	Gigliotti	CB	France	31	72	180	110373
201208		Doneil	Henry	CB	Canada	28	82	188	101112
202243		Servando	Carrasco	CDM	United States	32	75	180	697
202518		Christopher	Wernitznig	RM	Austria	31	79	179	111822
202866		Nicolás	Mezquida	CAM	Uruguay	29	68	168	101112
203215		Alex	Cairns	GK	England	28	72	183	112260
203815		Paul	Delecroix	GK	France	32	76	185	68
204101		Christian	Bickel	LM	Germany	30	70	178	110592
204349		Ibrahim	Šehić	GK	Bosnia and Herzegovina	32	79	190	749
204763		Phillipp	Steinhart	LB	Germany	29	70	182	33
205072		Daniel	Pedersen	CDM	Denmark	29	74	185	299
205419	De Los Reyes	Samuel	Reyes Domínguez	LB	Spain	29	79	183	1861
205596		James	Husband	LB	England	27	65	179	112260
237512		Gastón	Togni	LW	Argentina	23	76	180	111710
237667		Abdullah	Al Joui	RW	Saudi Arabia	26	66	167	1893
237765		Kazuya	Murata	RM	Japan	32	64	169	101149
238050		Chidera	Ejuke	LW	Nigeria	23	72	176	920
238126	Guridi	Jon	Guridi Aldalur	CM	Spain	26	64	179	457
238599		Nico	Granatowski	LM	Germany	30	69	172	110597
238805		Florian	Hansch	RM	Germany	25	64	175	110178
238900		Ermedin	Demirović	ST	Bosnia and Herzegovina	23	76	184	226
239045		Emre	Kılınç	LM	Turkey	26	68	174	101041
239268		Neftali	Manzambi	ST	Switzerland	24	82	179	459
234640		Bakery	Jatta	RM	Gambia	23	79	184	28
234874		Maximilian	Jansen	CDM	Germany	28	74	179	110178
235093	Fran Rodríguez	Francisco José	Rodríguez Gaitán	RB	Spain	26	68	175	1861
235590		Pablo	Sisniega	GK	Mexico	26	79	192	457
235755		Auston	Trusty	CB	United States	22	84	191	112134
235971	Pablo Larrea	Pablo	Larrea Gambara	CDM	Spain	27	65	175	477
236378		Alessandro	Plizzari	GK	Italy	21	73	187	47
236518		Arnaud	Nordin	LW	France	23	66	170	1819
237410		Vasyl	Kravets	LB	Ukraine	23	78	185	110831
237768		Ryohei	Shirasaki	LM	Japan	28	70	181	101149
238005		Jakub	Żubrowski	CDM	Poland	29	73	181	111083
238282		Mamadou	Coulibaly	CM	Senegal	22	77	183	55
238385	Lim Chan Wool	Chan Wool	Lim	RW	Korea Republic	27	71	176	112115
238649		Davy	Frick	CDM	Germany	31	84	188	110592
238796		Nicolas	Rajsel	LM	Slovenia	28	78	178	682
238924		Daniel	Keita-Ruel	ST	Germany	31	79	185	165
239135		Massih	Wassey	CM	Canada	33	79	187	10030
239384		Nicolás	Gauna	LM	Argentina	29	70	172	112655
239894		Rominigue	Kouamé	LB	Mali	24	68	177	111817
240081		Ivan	Lapshov	CB	Russia	22	76	188	100765
240215		Christian	Capone	LW	Italy	22	75	183	200
240658		Sofian	Kiyine	CM	Morocco	23	75	182	192
240914		Emeka Friday	Eze	ST	Nigeria	24	80	185	209
241119	Dani Martín	Daniel	Martín Fernández	GK	Spain	23	76	186	459
241910		Christian Eggen	Rismark	CB	Norway	30	87	193	919
242672		Lazar	Ćirković	CB	Serbia	28	80	192	897
242792		Merveil	Ndockyt	CAM	Congo	23	63	178	453
243733		Dries	Saddiki	CDM	Holland	24	77	179	1907
107305		Mickaël	Tacalfred	CB	France	40	78	175	57
118868		Christoffer	Källqvist	GK	Sweden	37	96	193	711
140183		Seigo	Narazaki	GK	Japan	45	80	187	112092
148634		Brian	Vandenbussche	GK	Belgium	39	92	196	1750
152456		Scott	Brown	GK	England	36	87	188	1928
153148		Łukasz	Garguła	CAM	Poland	40	71	177	112505
157978		Kalifa	Cissé	CB	Mali	37	85	187	111396
158937		René	Gartler	ST	Austria	35	78	184	112075
163581		Tony	Craig	CB	England	36	79	185	1962
167437		Dominik	Stroh-Engel	ST	Germany	35	94	197	1832
169495		Raffaele	De Vita	LM	Italy	33	77	180	621
173305		Cristiano	Del Grosso	LM	Italy	38	66	171	200
176154		Anthony	Van Loo	RB	Belgium	32	73	176	100081
177668		Amaury	Bischoff	CM	Portugal	34	73	177	27
179636		David	Worrall	RM	England	31	67	170	1928
179909		Anthony	Annan	CDM	Ghana	35	64	174	100325
181095		Jakub	Řezníček	ST	Czech Republic	33	82	184	110468
181491		Nathan	Burns	ST	Australia	33	70	173	111766
182387	Zhang Xiaofei	Xiaofei	Zhang	LB	China PR	39	74	179	111769
182761		Adam	Legzdins	GK	England	34	90	190	1796
183499		Yaw	Amankwah	CB	Norway	33	94	195	112425
184587		Tomasz	Kupisz	RM	Poland	31	72	180	1847
186198		Jacob	Mellis	CM	England	30	69	181	1940
186823	Pedrinho	Pedro Miguel	Silva Rocha	RB	Portugal	36	73	177	666
186939		Christopher	Nöthe	LM	Germany	33	81	184	159
188131		Nemanja	Rnić	CB	Serbia	36	73	179	111822
188807		Kevin	Conboy	LB	Denmark	33	77	185	1786
189352		Maic	Sema	LW	Sweden	32	68	172	1596
189691		David	Ball	CAM	England	31	75	183	1797
189836		Joseph	Mills	LB	England	31	70	175	561
190152	César Ortiz	César	Ortiz Puentenueva	CB	Spain	32	72	182	1785
190457		Kristoffer	Tokstad	RM	Norway	30	84	185	922
191050		François	Affolter	CB	Switzerland	30	76	186	111928
191911	Park Jun Tae	Jun Tae	Park	ST	Korea Republic	31	63	172	1475
192163		Emil	Wahlström	CB	Sweden	34	82	183	711
192661		Michael	Schulze	RB	Germany	32	80	185	110700
193302		Filip	Kurto	GK	Poland	30	90	190	111766
193557		Frank	Nouble	ST	England	29	82	190	1935
194937		Tom	Parkes	CB	England	29	79	188	1480
197170		Kadeem	Harris	LM	England	28	68	175	1961
198534		Marcel	Rømer	CM	Denmark	29	81	181	1447
199146		Andy	Halliday	CDM	Scotland	29	67	173	86
199323		Jaroslav	Zelený	LB	Czech Republic	28	81	190	266
199890		Numa	Lavanchy	RB	Switzerland	27	73	174	322
200471		Daniel	Chima Chukwu	ST	Nigeria	30	74	180	417
200780		Gael	Bigirimana	CM	England	27	71	173	83
200980		Steven	Lawless	LM	Scotland	30	65	170	621
201353		Jon	Kempin	GK	United States	28	77	185	687
202204		Kristoffer	Haraldseid	RB	Norway	27	74	180	1463
202727		Joseph	Mendes	ST	France	30	80	186	614
203048		Joe	Riley	RB	England	29	71	183	1929
203426		Kristoffer	Løkberg	CM	Norway	29	69	174	112200
204033		Nicky	Devlin	RB	Scotland	27	73	183	1803
204324		Matty	Kennedy	LM	Scotland	26	65	175	100804
204397		Nick	Bakker	CB	Holland	29	81	189	100628
205038		Frederik	Helstrup	CB	Denmark	28	82	188	111082
205382		Enzio	Boldewijn	RM	Holland	28	76	185	1937
205586		Isaac	Vassell	ST	England	27	71	175	88
237538		Filip	Rogic	CM	Sweden	28	77	180	705
237698		Callum	Gribbin	CAM	England	22	72	182	11
237893		Tristan	Dekker	RB	Holland	23	78	184	100651
238263		Fredrik	Knudsen	CB	Norway	24	83	190	1463
238780		Dominic	Volkmer	CB	Germany	25	88	194	543
238961		Max	Dombrowka	LB	Germany	29	77	180	172
239093		Jonathan	Clauss	RB	France	28	72	185	159
239368		Mitchell	Bakker	LB	Holland	21	72	184	245
239417		Marcel	Gebers	CB	Germany	35	76	189	110597
239611		Mohamed	Eisa	ST	Sudan	27	70	183	1919
239795		Caleb	Ekuban	ST	Italy	27	80	180	8
234735		Aleksandar	Jovanović	GK	Serbia	28	85	192	110839
235073		Gregor	Kobel	GK	Switzerland	23	90	194	10029
235324		Reuven	Niemeijer	CAM	Holland	26	71	178	100634
235642		Ryan	Yates	CM	England	23	77	190	14
235955		Rafik	Guitane	CAM	France	22	60	164	74
236045	Reinildo	Reinildo Isnard	Mandava	LW	Mozambique	27	74	180	1889
236399		Léon	Bergsma	CB	Holland	24	72	185	1906
236668		Gabriel	Rojas	LB	Argentina	24	68	172	1013
237340	Carlinhos	Carlos Antonio	De Souza Junior	LW	Brazil	26	71	174	10032
237640		Nedim	Bajrami	CM	Switzerland	22	68	179	322
237823		Hiroki	Abe	LM	Japan	22	65	171	101147
238008		Jack	Elliott	CB	England	25	82	196	112134
238137		Riku	Matsuda	RB	Japan	30	69	171	101148
238595		Kevin	Rodrigues Pires	CM	Portugal	29	62	170	531
238694		Lucas	Röser	ST	Germany	27	77	184	503
238860	Jadson	Jadson	Silva de Morais	CB	Brazil	29	80	186	10031
239097		Dennis	Srbeny	ST	Germany	27	83	190	1792
239373		Zian	Flemming	CAM	Holland	23	84	183	1914
239577		Yacouba	Coulibaly	LB	Burkina Faso	26	62	170	1738
239957		Sebastian	Jakubiak	CDM	Germany	28	67	175	100634
240454		Franklin	Wadja	CDM	Cameroon	26	83	185	217
240683		Ludovit	Reis	CM	Holland	21	75	178	1915
240860	José Lara	José	Alonso Lara	RM	Spain	21	60	167	481
241462		Ramiro	Guerra	CM	Uruguay	24	75	183	15019
241947		Francis	Amuzu	LM	Belgium	21	65	170	229
242722		Alejandro	Fuenmayor	CB	Venezuela	24	80	184	698
243662	Kalindi	Kalindi	Alves de Souza	RB	Brazil	27	62	170	1891
107084		Michael	Langer	GK	Austria	36	93	195	34
112373		Arnaud	Balijon	GK	France	38	80	183	1738
125132		Bora	Körk	GK	Turkey	41	73	187	111340
144021		Christian	Schwegler	RB	Switzerland	37	74	174	897
152463		Daniel Fredheim	Holm	RW	Norway	36	79	180	920
154696		Grzegorz	Bartczak	RB	Poland	36	75	182	112505
158867		Anthony	Gerrard	CB	Republic of Ireland	35	83	188	1480
163143		Alan	McCormack	CDM	Republic of Ireland	37	64	180	1923
163754		David	Mirfin	CB	England	36	94	188	1940
166841		Nicky	Adams	LM	Wales	34	70	175	1945
169578		Calum	Woods	RB	England	34	73	180	1801
173498		Lloyd	James	CM	Wales	33	74	178	561
176075		Marc	Burch	LB	United States	37	82	185	111138
177107		Robert	Müller	CB	Germany	34	82	187	167
178310		Simone	Iacoponi	CB	Italy	34	73	180	50
178590		Tomasz	Cywka	CDM	Poland	33	76	180	873
179860		Reuben	Reid	ST	England	33	77	183	561
181001		Brad	Knighton	GK	United States	36	82	187	691
181725		Gary	Deegan	CDM	Republic of Ireland	33	75	176	1944
182689		Alan	Power	CDM	Republic of Ireland	33	72	170	82
183160	Cris	Bruno Cristiano	Carvalho Santos	CDM	Portugal	37	70	179	10019
184254		Josué	Ayala	GK	Argentina	33	85	184	110580
185119		Alex	Dyer	CM	Montserrat	31	74	177	700
186241		Henrik	Ojamaa	LM	Estonia	30	75	176	112505
186536		Brek	Shea	LM	United States	31	86	191	101112
187334		Linus	Hallenius	ST	Sweden	32	75	185	1596
188181		Dean	Moxey	LB	England	35	70	180	143
188959		Christer	Gustafsson	CM	Sweden	34	76	181	113458
189237		Emanuel	Schreiner	LB	Austria	32	74	181	15009
189734		Manuel	Pascali	CB	Italy	39	83	188	112168
189905		Marcin	Budziński	CDM	Poland	31	80	184	110747
190160		Rodolph	Austin	CB	Jamaica	36	78	180	1445
190620		Danny	Andrew	LB	England	30	72	180	142
190937		Quincy	Amarikwa	ST	United States	33	81	175	111139
191548		Chikashi	Masuda	CDM	Japan	36	75	179	101149
192063	Ricardinho	Ricardo	Cavalcante Mendes	ST	Brazil	31	73	175	1569
192970		Danny	Mayor	LM	England	30	76	183	1945
193260		Markus	Pink	ST	Austria	30	87	188	209
193608		Ollie	Clarke	CM	England	29	77	180	1962
194035		Nils	Miatke	LM	Germany	31	76	178	110592
197932		Kwesi	Appiah	ST	Ghana	30	80	180	112259
198269		Jake	Jervis	ST	England	29	82	191	1923
199049		Richárd	Magyar	CB	Sweden	30	85	192	165
199470		Marco	Meilinger	RM	Austria	30	77	180	15009
200134		Robbie	Benson	CM	Republic of Ireland	29	77	175	837
200701		Giacomo	Beretta	ST	Italy	29	74	183	1847
200793		Clark	Robertson	CB	Scotland	27	76	188	1797
200917		Mario	Erb	CB	Germany	31	74	184	167
201932	Kim Dong Woo	Dong Woo	Kim	CB	Korea Republic	33	87	189	982
202464		Jordan	Clark	RM	England	27	73	183	110313
202769		Benjamin	Stokke	ST	Norway	30	90	191	1786
202970	Jung Seung Yong	Seung Yong	Jung	LB	Korea Republic	30	83	182	112115
203139		Anthony	Stewart	CB	England	28	76	183	1933
203450		Jan	Washausen	CDM	Germany	32	79	186	110482
203930		Ousseynou	Cissé	CDM	Mali	30	85	195	1798
204184		Doke	Schmidt	RB	Holland	29	73	177	1913
204727		Hamdi	Dahmani	CAM	Germany	33	78	179	110169
204860		Kane	Hemmings	ST	England	29	78	186	1937
205225		Murat	Akça	CB	Turkey	31	75	182	113259
205533		Alexander	Juel Andersen	CB	Denmark	30	84	189	111660
237438	Erik Expósito	Erik	Expósito Hernández	ST	Spain	25	78	184	472
237635		Florian	Pick	RM	Germany	25	67	176	29
237763		Mitsunari	Musaka	CM	Japan	30	66	176	101149
237997		Uriel	Antuna	RM	Mexico	23	59	174	1915
238562		Philipp	Hoffmann	RM	Germany	29	76	186	531
238674		Kevin	Broll	GK	Germany	25	77	186	111379
238923		Robin	Scheu	RM	Germany	26	74	178	110169
239224		Amine	Benchaib	CAM	Belgium	23	71	181	2007
239403	Loureiro	Miguel	Loureiro Ameijenda	RB	Spain	24	76	180	1867
235548		Manuel	Cabit	LB	France	28	75	180	614
235619		Marcus	Edwards	RM	England	22	61	176	18
235867		Luca	Strizzolo	ST	Italy	29	83	188	111993
235983	Alex Pozo	Alejandro	Pozo Pozo	RM	Spain	22	62	173	110832
236572		Owen	Wijndal	LB	Holland	21	65	176	1906
237098	Han Seung Gyu	Seung Gyu	Han	LM	Korea Republic	24	63	171	1473
237655		Brayner	De Alba	CAM	Colombia	28	65	168	112523
237892		Ralf	Seuntjens	CM	Holland	32	93	194	100651
238068		Marco	Richter	RM	Germany	23	74	176	100409
238354	Ha Chang Rae	Chang Rae	Ha	CB	Korea Republic	26	83	188	1474
238392		Elisha	Owusu	CDM	France	23	72	182	226
238657		Marc	Heider	ST	Germany	35	78	187	487
238786		Ole	Käuper	CM	Germany	24	77	187	38
238951		René	Eckardt	CAM	Germany	31	70	179	110591
239342		Hervé	Koffi	GK	Burkina Faso	24	81	186	65
239572		Bhongolwethu	Jayiya	RW	South Africa	31	65	176	110929
239921	Joca	Jorge Samuel	Fernandes	CAM	Portugal	25	63	168	744
240132		Redouane	Kerrouche	CM	France	27	75	183	111817
240625		Giancarlo	Malcore	ST	Italy	27	79	183	111993
240846		Emmanuel	Apeh	ST	Nigeria	24	70	180	450
241096		Sandro	Tonali	CDM	Italy	21	70	181	190
241465	Chuca	Víctor	Moya Martínez	CM	Spain	24	75	181	468
242028		Ricardo Darío	Blanco	CAM	Argentina	31	64	163	112655
242673		Valeriane	Gvilia	CAM	Georgia	27	79	182	897
243732		Gavin	Vlijter	LW	Suriname	24	72	177	634
53412		Anton	Ferdinand	CB	England	36	71	183	1954
118359		Lee	Miller	ST	Scotland	38	77	188	621
137699		Martin	Stoll	CB	Germany	38	80	188	1832
140442		Andy	Butler	CB	England	37	83	183	142
149721		Gary	Rogers	GK	Republic of Ireland	39	87	188	837
152950		Grzegorz	Wojtkowiak	RB	Poland	37	75	184	111091
153269		Hervé	Guy	CM	Côte d'Ivoire	37	65	169	112391
158595		Alejandro	Castro	CDM	Mexico	34	67	176	110144
162952		Mauricio	Caranta	GK	Argentina	43	77	184	112670
164339		Michal	Papadopulos	ST	Czech Republic	36	79	183	111086
165269		Razak	Boukari	RW	Togo	34	70	187	212
168629		Imad	Khalili	CAM	Palestine	34	75	182	708
169909		Junior	Brown	LB	England	32	68	175	1800
170591		Marc	Stein	CB	Germany	36	75	184	162
175963		Timo	Röttger	ST	Germany	36	76	176	111379
177036		Karim	Guédé	ST	Slovakia	36	87	184	110178
178218		Stephen	Darby	RB	England	32	64	175	4
179808		Osmar	Mares	LB	Mexico	34	69	169	110145
180293	Park Won Jae	Won Jae	Park	LB	Korea Republic	37	69	175	1477
181298		Michael	Almebäck	CB	Sweden	33	83	184	705
181852	Han Peng	Peng	Han	ST	China PR	37	85	188	112537
182442		Mitch	Nichols	CAM	Australia	32	75	181	111766
183228		Błażej	Augustyn	CB	Poland	33	85	191	111091
183768		Peter Orry	Larsen	CM	Norway	32	80	184	919
184753		Simon	Madden	RB	Republic of Ireland	33	77	178	423
186112		John	Akinde	ST	England	32	87	188	149
186513		Daniel	Arreola	CB	Mexico	35	72	181	110152
186937		Andrés	Lamas	CB	Uruguay	37	81	189	111708
187782		Seámus	Conneely	CDM	Republic of Ireland	33	68	175	110313
188724		Marcin	Pietrowski	LB	Poland	33	79	184	111086
189387		Tom	Mickel	GK	Germany	32	84	185	28
189563		Simone	Salviato	RB	Italy	34	84	187	110912
189802		Damien	McCrory	LB	Republic of Ireland	31	81	185	15015
189942		Alessandro	Ligi	CB	Italy	31	83	191	112409
190474		Björn Daniel	Sverrisson	CDM	Iceland	31	75	182	271
190983		Rob	Kiernan	CB	Republic of Ireland	30	77	186	1954
191637	Jung Da Hwon	Da Hwon	Jung	RB	Korea Republic	33	82	180	1478
192264		Zoran	Jovanovic	CAM	Sweden	34	58	171	703
193073		Leon	Legge	CB	England	36	80	193	1928
193252		Thomas	Schrammel	LB	Austria	33	75	176	209
193771		Aaron	Wildig	CAM	England	29	73	175	357
194998		Jamie	Ness	CM	Scotland	30	70	177	1929
198007		Eric	Alexander	CDM	United States	33	75	185	698
198733		Oguzhan	Kefkir	LM	Germany	29	72	173	167
199197		Patrick	Salomon	CM	Austria	33	70	179	1785
199636		Medhy	Guezoui	ST	France	32	80	188	110456
200217		Héctor	Acosta	RB	Mexico	29	76	178	1882
200779		Jonson	Clarke-Harris	ST	England	27	71	183	1800
200840		Curtis	Nelson	CB	England	28	74	183	1951
201212		Adam	Thompson	CB	Northern Ireland	28	78	183	1945
202169		Joshua	Gatt	LM	United States	29	73	177	15009
202721		Abdul	Razak	CM	Côte d'Ivoire	28	80	184	113458
202989	Lee Jong Ho	Jong Ho	Lee	ST	Korea Republic	29	78	180	1473
203287		Ellis	Harrison	ST	Wales	27	79	180	94
203454		Julius	Reinhardt	CDM	Germany	33	75	182	110592
204091	Omar Santana	Omar	Santana Cabrera	CAM	Spain	30	65	174	112505
204492		Pascal	Breier	ST	Germany	29	77	185	27
204790		Stephan	Auer	RB	Austria	30	74	176	254
205049		Nick	Ansell	CB	Australia	27	83	185	111397
205481		Mason	Bennett	ST	England	25	64	178	91
237507	Park Yi-Young	Yi-Young	Park	RB	Korea Republic	27	71	186	110329
237708		Moussa	Sylla	ST	France	21	70	181	69
238014		Roel	Janssen	LB	Holland	31	70	179	100651
238475		Olivier	Verdon	CB	Benin	25	85	190	226
238686		Pascal	Sohm	ST	Germany	29	77	186	110482
238936		Marius	Kleinsorge	RM	Germany	25	73	170	110597
239128		Tracy	Mpati	RB	Belgium	29	70	175	2007
239402		Michael	Lüftner	CB	Czech Republic	27	86	190	819
239431		Innocent	Maela	LB	South Africa	28	68	170	110930
239567		Jan	Löhmannsröben	CDM	Germany	30	85	186	29
239936		Nicolás	Guerra	ST	Chile	22	64	174	15029
239380		Noa	Lang	LW	Holland	22	69	179	245
239545		Jesús	Godínez	ST	Mexico	24	79	183	1880
239686		Anthony	Barylla	RB	Germany	24	75	179	110592
240064		Ousseynou	Ba	CB	Senegal	25	84	192	110316
240751		Gaëtan	Poussin	GK	France	22	82	184	59
241089		Cyrille	Bayala	LW	Burkina Faso	25	68	181	64
241689		Roberto	Massimo	RM	Germany	20	75	185	159
241967		Marcel	Costly	RW	Germany	25	75	183	110588
242392		Giangiacomo	Magnani	CB	Italy	25	80	190	111974
243105		Nizamdin	Ependi	LB	China PR	30	69	173	112537
243571		Bambo	Diaby	CB	Spain	23	88	187	2007
243793	Alan Sousa	Allan	Gonçalves Sousa	ST	Brazil	24	70	174	822
243983		Mohamed	Naamani	CB	Algeria	30	94	196	112390
244375		Oleksandr	Andrievskyi	CDM	Ukraine	27	73	179	101047
244684		Vitalie	Damascan	ST	Moldova	22	69	180	54
244968		Carlos	Ohene	CDM	Ghana	28	74	170	113219
50477406	Freire	Leandro	Freire de Araújo	CB	Brazil	31	82	187	113161
50511456		Osmar	Mares	LB	Mexico	34	69	169	101121
50513693	Rong Hao	Hao	Rong	LB	China PR	34	72	177	111839
50519926		Mark	Birighitti	GK	Australia	30	84	189	112224
50522585		Quincy	Amarikwa	ST	United States	33	81	175	688
50532428		Gael	Bigirimana	CM	England	27	71	173	81
50535074		Kristoffer	Løkberg	CM	Norway	29	69	174	919
50537368		Alessandro	Longhi	LB	Italy	32	77	181	110912
50540480		Fabien	Boyer	LB	France	30	80	187	1805
50542888		Julien	Lopez	LM	France	29	63	173	111817
50543111		Caolan	Lavery	ST	Northern Ireland	28	76	180	1945
50545630		Camilo	Mancilla	CB	Colombia	28	72	184	112992
50547829		Peter	Tschernegg	CM	Austria	29	75	181	2017
50548347		Gedion	Zelalem	CM	United States	24	70	180	696
50552217		Edgar	Babayan	LM	Denmark	25	73	180	112425
50553210		Maodo Malick	Mbaye	CM	Senegal	25	80	185	111434
50553359		Chris	Duvall	RB	United States	29	72	178	698
50554345	Han Seok Jong	Seok Jong	Han	CM	Korea Republic	29	78	186	2055
50556009		Andy	Cannon	CM	England	25	74	176	1790
50557016		Babacar	Gueye	ST	Senegal	26	84	192	10030
50558415		Nick	Kuipers	CB	Holland	28	93	190	100628
50560287		Ryan	Mmaee	ST	Belgium	24	79	183	271
50561191		David	Kiki	LB	Benin	27	76	180	111273
50563624		Jonathan	Campbell	CB	United States	28	85	188	111144
50564564		Keijiro	Ogawa	RM	Japan	29	65	170	101146
50567685		Pelle	Clement	CAM	Holland	25	67	177	1914
50569016		Bryan	Passi	CB	France	24	78	189	1813
50570428		Dominic	Volkmer	CB	Germany	25	88	194	110591
50571352		Kai	Wagner	LB	Germany	24	78	182	112134
50574277	João Moutinho	João Gervásio	Bragança Moutinho	LB	Portugal	23	70	182	112606
67290909	Rong Hao	Hao	Rong	LB	China PR	34	72	177	111774
67323700		Joao	Ortiz	LM	Chile	30	73	171	112535
67347764		Ermedin	Demirović	ST	Bosnia and Herzegovina	23	76	184	1861
100855746		Andy	Cook	ST	England	30	72	185	1940
206086		Harry	Toffolo	LB	England	25	71	183	149
206562		Louis	Thompson	CM	Wales	26	75	180	1792
207613		Enzo	Martinez	CM	Uruguay	30	66	170	694
207895		Tim	Wendel	CDM	Germany	32	79	191	110700
208303	Bae Seul Gi	Seul Gi	Bae	CB	Korea Republic	36	79	183	1474
208801		Rédà	Jaadi	LW	Belgium	26	69	183	230
208958		Khaled	Sharahili	GK	Saudi Arabia	34	88	189	112389
209177		Tawfiq	Bu Haymid	LB	Saudi Arabia	33	68	169	113057
209625		Luca	Verna	CM	Italy	28	78	181	112168
209873		Kgotso	Moleko	RB	South Africa	31	76	181	110929
210156		Omar	Abdulaziz	CDM	Saudi Arabia	37	64	172	112389
210792		Ali Ahmed	Al Zaqan	RM	Saudi Arabia	30	71	178	607
210970		Bismark	Adjei-Boateng	CM	Ghana	27	73	180	694
211070		Tomasz	Hołota	CDM	Poland	30	84	182	110746
211323	Pol García	Pol	García Tena	CB	Spain	26	75	183	680
211785		Ben	Garuccio	LB	Australia	26	70	174	80
211987		Robin	Yalçın	CDM	Germany	27	77	183	101037
212118		Matt	Grimes	CM	England	26	70	178	1960
212431	Kim Nam Chun	Nam Chun	Kim	CB	Korea Republic	32	78	184	2055
212709		Taylor	Kemp	LB	United States	31	69	180	688
212790		Jamal	Thiaré	ST	Senegal	28	65	180	1738
213271		Aliou	Coly	RB	Senegal	28	76	186	113459
213368		Lucas	Rougeaux	RB	France	27	85	185	100081
213717		Petteri	Forsell	LM	Finland	30	72	168	112505
214028		César	Amaya	ST	Colombia	30	75	177	101106
214065		Hans	Salinas	LW	Chile	31	74	170	112531
214280		Luis	Pavez	LB	Chile	25	75	173	110977
214362		Cristian	Palomeque	LM	Colombia	27	72	170	112579
214510		Luis	Mosquera	LB	Colombia	32	68	175	112578
214809		Sebastián	Luna	RB	Argentina	33	78	178	111022
214877		Henrik	Bjørdal	RM	Norway	24	89	188	15005
215129		Misael	Dávila	CM	Chile	30	69	172	110977
215412		Callum	Elder	LB	Australia	26	67	180	95
215695		Lasse	Nielsen	CB	Denmark	34	76	188	703
216181		Peter	Tschernegg	CDM	Austria	29	75	181	898
216303		Hugo	Cid	CM	Mexico	30	71	181	110145
216699		Gedion	Zelalem	CM	United States	24	70	180	1
218470		Gianmarco	De Feo	RW	Italy	27	65	170	1847
219254		Gonzalo	Castillejos	ST	Argentina	35	88	187	111713
219492		Manuel	De Iriondo	CDM	Argentina	28	75	179	111716
219931		Diego	Mendoza	ST	Argentina	28	86	186	111711
220139		Sammie	Szmodics	CAM	England	25	64	167	1935
220654		James	Horsfield	CDM	England	25	74	180	1949
221329		Ashley	Smith-Brown	LB	England	25	74	177	1929
221493	Woo Ju Sung	Ju Sung	Woo	RB	Korea Republic	28	75	183	111588
221576	Kwak Hae Seong	Hae Seong	Kwak	RB	Korea Republic	29	70	178	110765
239397		Braydon	Manu	LM	Germany	24	70	170	110482
239506		Sam	Hughes	CB	England	24	80	187	95
239669		Jonathan	Levi	RW	Sweden	25	75	185	298
239999	Pedro Silva	Pedro José	Moreira da Silva	GK	Portugal	24	76	189	112516
240590		Khotso	Malope	CM	South Africa	27	70	168	110929
240942	Fabio González	Fabio	González Estupiñán	CM	Spain	24	65	176	472
241173		Lyle	Foster	ST	South Africa	20	70	180	110930
241887		Christos	Giousis	CAM	Greece	22	66	176	278
242267		Jorman	Campuzano	CDM	Colombia	25	70	177	101100
242958		Paul	Jaeckel	CB	Germany	23	80	188	175
243586		Ayoub	El Kaabi	ST	Morocco	28	79	182	112978
243628		Aleksandar	Vukotić	CB	Serbia	26	95	202	110913
244135		Alexsandar	Radovanović	CB	Serbia	27	83	189	64
244391		Fashion	Sakala	ST	Zambia	24	72	178	682
244731		Nazariy	Rusyn	ST	Ukraine	22	68	177	101047
50450442		Andy	Lonergan	GK	England	37	87	192	1955
50508755		Robert	Müller	CB	Germany	34	82	187	162
50514671	Sui Donglu	Donglu	Sui	CB	China PR	38	88	194	111779
50518184		Brek	Shea	LM	United States	31	86	191	112885
50521590		Alessandro	Ligi	CB	Italy	31	83	191	110741
50529917		Jake	Jervis	ST	England	29	82	191	112259
50533580	Kim Dong Woo	Dong Woo	Kim	CB	Korea Republic	33	87	189	1478
50537244		James	Husband	LB	England	27	65	179	1792
50539942	Francisco Júnior	Francisco	Santos Silva Júnior	CM	Guinea-Bissau	29	65	172	111660
50541609		Gerrit	Wegkamp	ST	Germany	28	84	193	110700
50543635		Robin	Yalçın	CDM	Germany	27	77	183	113259
50547060		Callum	Elder	LB	Australia	26	67	180	94
50548839		Oscar	Threlkeld	RB	England	27	75	182	1929
50551394		Diego	Torres	LB	Chile	29	70	175	101097
50552302		James	Horsfield	CDM	England	25	74	180	180
50553268		Marlon	Hairston	RB	United States	27	71	183	698
50553804		James	Bree	RB	England	23	74	178	94
50554753		Nicolás	Oroz	LM	Argentina	27	73	173	101085
50556237		Guillaume	Cros	LB	France	26	69	171	27
50556958		Ben	Thompson	CM	England	25	78	175	97
50557681		Elliot	Käck	LB	Sweden	31	68	173	710
50559388		Danilo	Arboleda	CB	Colombia	26	83	190	112523
50559975		Fitim	Azemi	ST	Norway	29	81	185	920
50561088		Víctor	Morales	CB	Chile	30	88	190	112668
50563137		Aly	Keita	GK	Sweden	34	75	185	113173
50564557		Shunki	Takahashi	RB	Japan	31	68	169	101145
50565802		Cristian	Martinez	RM	Panama	24	79	170	693
50569138		Patrick	Sontheimer	CM	Germany	23	65	168	110197
50570916		Neftali	Manzambi	ST	Switzerland	24	82	179	1867
50572737		Cyrille	Bayala	RM	Burkina Faso	25	68	181	226
50574606		Paul	Jaeckel	CB	Germany	23	80	188	165
67314287		Herolind	Shala	CAM	Kosovo	29	71	178	920
67340003		Jack	Fitzwater	CB	England	23	70	188	109
84095966		Anthony	Caceres	CM	Australia	28	67	173	111400
205937		Nico	Varela	LM	Uruguay	30	70	175	1569
206139		Yannick	M'Boné	CB	Cameroon	28	82	185	212
207443		Paul	Charruau	GK	France	28	86	187	111273
207619		Warren	Creavalle	CDM	Guyana	30	70	183	112134
208000	Jesús Rubio	Jesús	Rubio Martín	CAM	Spain	34	73	179	469
208370		Erik	Zenga	CM	Germany	28	76	181	110178
208806		Morgan	Fox	LWB	Wales	27	78	185	1807
208984		Jim-Patrick	Müller	RM	Germany	32	75	182	172
209567		Rabyi Mohammed	Sufyani	LM	Saudi Arabia	34	70	181	112393
209961		Gerrit	Wegkamp	ST	Germany	28	84	193	550
210700		Mohammed	Abusabaan	CM	Saudi Arabia	31	76	180	112389
210805		Abdullah Saud	Al Mutairi	LM	Saudi Arabia	35	61	174	113057
211174		Fabian	Sporkslede	RB	Holland	28	69	177	1904
211581		Shane	O'Neill	CB	United States	27	86	188	112606
211845		Nils	Quaschner	LM	Germany	27	81	184	159
212099		Sondre	Tronstad	CM	Norway	25	70	173	1463
212247		Oliver	Schnitzler	GK	Germany	25	87	190	531
212687		Luis	Solignac	RW	Argentina	30	78	184	693
212737		Andrew	Hoole	RM	Australia	27	75	178	111396
213094		Storm	Roux	RB	New Zealand	28	71	181	111397
213314	Ham Seok Min	Seok Min	Ham	GK	Korea Republic	27	80	190	112115
213635		Tom	Lapslie	CDM	England	25	69	168	1935
213993		Francesco	Forte	ST	Italy	28	75	187	110913
214063		Eduardo	Farias	CDM	Chile	32	71	179	112531
214099		Mads	Aaquist	CAM	Denmark	26	63	171	1786
214314		Alejandro	Otero	GK	Colombia	37	75	185	112527
214492		Yessy	Mena	ST	Colombia	32	71	171	112970
214745		Francisco	Silva	CDM	Uruguay	38	74	183	112655
214884		Michał	Nalepa	CB	Poland	28	80	190	111091
215376		Elio	Capradossi	CB	Italy	25	73	181	110741
215540		Gilli	Rólantsson Sørensen	LW	Faroe Islands	28	82	187	919
216014		Esteban	Flores	LB	Chile	29	82	178	112534
216270		George	Honeyman	CM	England	26	72	173	106
216444		Mohamed	Gouaida	CAM	Tunisia	28	72	178	110178
216508		Florian	Kath	LM	Germany	26	78	185	25
217730		Stephan	Zwierschitz	RB	Austria	30	75	183	111821
219158		Miller	Mosquera	LB	Colombia	29	72	180	112527
219670		Gonzalo	Piovi	LB	Argentina	26	73	178	101084
219796	Einar Galilea	Einar	Galilea Azaceta	CB	Spain	26	70	180	226
220147		Federico	Álvarez	LB	Argentina	27	78	183	111022
220433	Óscar Whalley	Óscar Alexander	Whalley Guardado	GK	Spain	27	80	191	271
221322		Eoghan	O'Connell	CB	Republic of Ireland	25	80	185	1945
221562		Maodo Malick	Mbaye	CM	Senegal	25	80	185	112409
221647	Kim Yong Hwan	Yong Hwan	Kim	LB	Korea Republic	28	68	176	110765
221711		Chris	Duvall	RB	United States	29	72	178	111139
222104		Tosin	Adarabioyo	CB	England	23	80	196	109
239454		Brian	Figueroa	LM	Mexico	22	72	176	1881
239704		Kai	Wagner	LWB	Germany	24	78	182	110197
240067		David	Gomis	LM	France	28	68	173	110316
240694		Abou	Ba	CM	France	23	74	182	1823
240982		Júnior	Moreno	CDM	Venezuela	28	73	174	688
241103		Zinho	Vanheusden	CB	Belgium	22	82	186	232
241831		Mitch	Hildebrandt	GK	United States	32	86	185	112885
242021		Egor	Nazaryna	CM	Ukraine	24	75	183	230
242180		Luis Carlos	Cabezas	ST	Colombia	35	79	183	112523
242629	João Moutinho	João Gervásio	Bragança Moutinho	LB	Portugal	23	70	182	112996
243231		Enock	Mwepu	CM	Zambia	23	77	184	191
243592		Mégan	Laurent	CAM	Belgium	29	61	169	2013
243743		Fabio	Viteritti	LM	Germany	28	71	174	162
244230		Áron	Dobos	CAM	Hungary	21	70	174	634
244497	Marquinhos Cipriano	Marcos Robson	Cipriano	RM	Brazil	22	65	171	101059
244792		Roman	Procházka	CDM	Slovakia	32	77	183	110468
50490243		Alejandro	Castro	CDM	Mexico	34	67	176	1881
50512743		Jakub	Řezníček	ST	Czech Republic	33	82	184	2007
50513116		Dean	Bouzanis	GK	Australia	30	84	185	1914
50521140		Stuart	O'Keefe	CM	England	30	64	173	1961
50523965		Jed	Steer	GK	England	28	80	182	2
50534514		Nicolás	Mezquida	CAM	Uruguay	29	68	168	694
50538047		Daniel	Georgievski	LB	FYR Macedonia	33	75	178	112427
50540606		Khaled	Sharahili	GK	Saudi Arabia	34	88	189	113219
50542970		Joel	Untersee	RM	Switzerland	27	79	181	894
50545243		Francisco	Sánchez	LB	Chile	36	75	173	110975
50545676		César	Amaya	ST	Colombia	30	75	177	101102
50548133		Aaron	Tshibola	CM	England	26	81	190	82
50551084		Josh	Clarke	RB	England	27	70	173	15015
50551579		Diego	Mendoza	ST	Argentina	28	86	186	111022
50553029		Luis	Tipton	LB	Colombia	29	78	179	101103
50553353		Kyle	Dempsey	CM	England	25	75	178	1938
50553820	Fan Yunlong	Yunlong	Fan	CM	China PR	32	75	180	112429
50555878		Alejandro	Díaz	ST	Mexico	25	72	175	1879
50557315		Conor	Chaplin	ST	England	24	69	168	1800
50557770		Jafar	Arias	ST	Holland	26	80	191	100628
50559888		Romuald	Lacazette	CDM	France	27	73	175	33
50560771		Ryan	Broom	CAM	Wales	24	80	177	1936
50563476		Frederik	Tingager	CB	Denmark	28	94	198	271
50563917	Heo Yong Joon	Yong Joon	Heo	LW	Korea Republic	28	75	184	110765
50567194		Anton	Krešić	CB	Croatia	25	83	198	112409
50569086	Erik Expósito	Erik	Expósito Hernández	ST	Spain	25	78	184	1867
50569645		Uriel	Antuna	RM	Mexico	23	59	174	10
50571317		Jonathan	Levi	RW	Sweden	25	75	185	700
50573915		Jorman	Campuzano	CDM	Colombia	25	70	177	1877
67311068		Kristoffer	Haraldseid	RB	Norway	27	74	180	417
67331969		Nicolás	Oroz	CM	Argentina	27	73	173	15029
67342961		Renato	Tarifeño	ST	Chile	24	65	170	111328
205720		Alessandro	Longhi	LB	Italy	32	77	181	190
206107		Eray	Ataseven	CDM	Turkey	28	70	181	111340
206524		Jordan	Willis	CB	England	26	70	180	1800
207580		Johan	Blomberg	CM	Sweden	34	64	178	694
207902		Patryk	Tuszyński	ST	Poland	31	77	184	110749
208294	Francisco Júnior	Francisco	Santos Silva Júnior	CM	Guinea-Bissau	29	65	172	922
208781		Wouter	Marinus	LM	Holland	26	73	177	100628
208885		Alassane	N'Diaye	RM	France	30	67	179	1815
209253		Matty	Blair	RM	England	32	74	178	142
209662		Mikhail	Rosheuvel	RM	Holland	30	80	176	1904
209965		Orhan	Ademi	ST	Switzerland	29	85	189	110197
210772		Patrick	Drewes	GK	Germany	28	87	193	110197
210843		Hassan	Kadish	LB	Saudi Arabia	28	73	179	605
211322		Joel	Untersee	RM	Switzerland	27	79	181	1746
211463		Caolan	Lavery	ST	Northern Ireland	28	76	180	1794
211864		Daniel	Dziwniel	LB	Poland	28	72	178	110749
212066	Lee Ki Je	Ki Je	Lee	LB	Korea Republic	30	68	175	983
212248		Felix	Lohkemper	ST	Germany	26	76	180	110588
212513		Hakeeb	Adelakun	RM	England	25	75	190	1919
212753		Stefan	Mauk	CAM	Australia	25	64	174	111395
213090		Talal	Al Absi	CB	Saudi Arabia	28	72	176	112393
213327		Aleksandar	Jovanović	CB	Australia	32	83	196	1478
213595		Francisco	Sánchez	LB	Chile	36	75	173	112535
213778		Thomas	Lehne Olsen	ST	Norway	30	78	187	299
214030		Carlos	Rentería	CDM	Colombia	26	70	175	111722
214088		Cameron	Dawson	GK	England	26	69	193	1807
214197		Julián	Guillermo	CDM	Colombia	31	76	176	111723
214482		Fábio	Rodríguez	LB	Colombia	35	67	174	112992
214587		Jorge	Deschamps	GK	Chile	37	77	183	112655
214917		Gonzalo	Sepúlveda	CDM	Chile	32	75	180	112668
215211		Baily	Cargill	CB	England	26	87	189	1798
215700		Luke	O'Nien	CM	England	26	74	174	106
216227		Kayden	Jackson	ST	England	27	73	181	94
216387		Saliou	Sané	ST	Germany	29	86	187	1832
216493		Fabian	Menig	LB	Germany	27	80	187	531
217191		Oscar	Threlkeld	RB	England	27	75	182	110913
217709	Raphael Silva	Raphael	da Silva Arruda	CB	Brazil	29	83	190	1898
219104		Christian	Bravo	RW	Chile	27	70	168	112668
219458		David	Wheeler	RM	England	30	76	180	1790
219746		Diego	Torres	LB	Chile	29	70	175	111328
220038		Harrison	McGahey	CB	England	25	85	187	1955
220230		Paweł	Bochniewicz	CB	Poland	25	85	194	420
220821		Carl	Starfelt	CB	Sweden	26	81	185	319
221441		Gustavo	Villarruel	RM	Argentina	28	67	172	111713
221511		Eero	Markkanen	ST	Finland	30	97	197	113876
221599		Ntsikelelo	Nyauza	RB	South Africa	31	77	176	110930
221648		Yaseen Omar	Barnawi	RB	Saudi Arabia	27	73	177	112391
240343		Luca	Fiordilino	CM	Italy	25	68	177	1843
240872		Mthokozisi	Dube	RB	South Africa	28	70	168	110930
240997	Kike	Enrique	Gómez Hermoso	CB	Spain	30	76	190	480
241508		Mikkel	Damsgaard	LW	Denmark	21	65	180	1788
241852		Moussa	Diaby	RW	France	22	65	170	73
242195		Mark	McKenzie	CB	United States	22	84	180	112134
242997		Linton	Maina	CAM	Germany	22	65	173	485
243237		Luca	Pellegrini	LB	Italy	22	72	178	52
243624		Jordy	Thomassen	ST	Holland	28	78	189	635
243851		Vincent	Pule	LW	South Africa	29	64	169	110930
244235		Hilary	Gong	RW	Nigeria	22	72	169	1909
244433		Alexei	Coșelev	GK	Moldova	27	90	200	634
244892		Sofiane	Diop	CAM	France	21	55	165	69
50501226		Calum	Woods	RB	England	34	73	180	1804
50516235		Tomasz	Kupisz	RM	Poland	31	72	180	1844
50519282		Richard	Ruiz	RB	Mexico	35	72	175	1878
50522102		Stian	Ringstad	LB	Norway	29	80	188	922
50531538		Numa	Lavanchy	RB	Switzerland	27	73	174	10032
50533949	Kim Ho Nam	Ho Nam	Kim	LM	Korea Republic	32	72	178	1478
50537460		Pietro	Terracciano	GK	Italy	31	78	193	110374
50541534		Anthony	Caceres	CM	Australia	28	67	173	10
50543748		Max	Lowe	LB	England	24	74	175	77
50546484		Joao	Ortiz	LM	Chile	30	73	171	15029
50548443		Chris	Long	ST	England	26	77	180	1926
50551839	Marcelo Djaló	Marcelo Amado	Djaló Taritolay	CB	Spain	27	86	193	144
50553295	Kim Yong Hwan	Yong Hwan	Kim	LB	Korea Republic	28	68	176	1474
50554259		Denis	Rodríguez	CM	Argentina	25	67	171	110396
50555945		Alex	Gersbach	LB	Australia	24	73	183	1904
50556613		Christian	Doidge	ST	Wales	28	77	185	4
50557460		Brayan	Rovira	CDM	Colombia	24	78	177	101100
50558429		Khiry	Shelton	ST	United States	28	84	191	10030
50559966		Harry	Chapman	LW	England	23	70	172	3
50561521		Alexander	Munksgaard	RWB	Denmark	23	75	182	271
50563819		Mariano	Vázquez	CAM	Argentina	28	71	174	111723
50565745		Renato	Tarifeño	ST	Chile	24	65	170	112534
50568851		Cristhian	Paredes	CM	Paraguay	23	75	183	1879
50569315		Abdullah	Al Joui	RM	Saudi Arabia	26	66	167	112393
50570453		Florian	Hansch	RM	Germany	25	64	175	492
50571443		Caleb	Ekuban	ST	Italy	27	80	180	436
50573749	Lee Keun Ho	Keun Ho	Lee	RW	Korea Republic	25	77	186	1477
50575275		Yacine	Adli	CM	France	21	78	186	59
67331780		Josh	Ginnelly	LM	England	24	65	173	1801
67352101		Luca	Pellegrini	LB	Italy	22	72	178	1842
205812		Pietro	Terracciano	GK	Italy	31	78	193	1746
206399		Daniel	Georgievski	RB	FYR Macedonia	33	75	178	111398
206635		Nick	DeLeon	RB	United States	31	77	178	688
207659		Lukas	Grozurek	LM	Austria	29	83	188	209
208014		Matty	Pearson	LB	England	28	72	190	1923
208372		Gbenga	Arokoyo	CB	Nigeria	28	78	188	1439
208812		Malvind	Benning	LWB	England	27	77	178	1940
208983		Oliver	Hein	RB	Germany	31	67	174	543
209454		Mateusz	Lewandowski	LB	Poland	28	72	182	111091
209784		Jérôme	Phojo	RB	France	28	71	178	1815
210044		Christian	Burgess	CB	England	29	84	196	1790
210646		André	Ibsen Rømer	CM	Denmark	28	74	186	1786
210883		Luca	Miracoli	ST	Italy	29	85	191	190
242622	Hiago	Hiago	de Oliveira Ramiro	RM	Brazil	29	68	175	1439
242755		John	Yeboah	ST	Germany	21	70	170	175
242850		Simon	Asta	RB	Germany	20	75	178	100409
243014		Bryan	Mbeumo	LW	France	22	75	173	294
243321	Kim Gyeong Min	Gyeong Min	Kim	ST	Korea Republic	24	78	185	1475
243631		Mahdi	Camara	CM	France	23	69	178	1819
243779		Eric	Weeger	RB	Germany	24	74	179	33
243970		Moritz-Broni	Kwarteng	CAM	Germany	23	69	175	28
244086		Junior	Ebot-Etchi	RB	Germany	25	75	172	110700
244170		Dejan	Vokic	CAM	Slovenia	25	79	190	111089
244404		Jurre	Vreman	CB	Holland	23	78	189	635
244437		Vladislav	Sirotov	LM	Russia	29	69	180	110749
244496		Stefan	Perić	CB	Austria	24	80	185	2045
244676		Jasper	Schendelaar	GK	Holland	20	87	187	1906
244879		Timur	Pukhov	CAM	Russia	23	64	175	315
245005		Daniel	Kerschbaumer	RB	Austria	32	70	173	1785
50471948		Peter	Cherrie	GK	Scotland	37	76	188	445
50540464		Mitchell	Rose	CM	England	27	78	176	1937
50559454		Daniel	Barlaser	CM	England	24	62	184	110313
50561252		Josef	Yarney	CB	England	23	70	183	13
50564937		Olufela	Olomola	ST	England	23	80	180	346
50568102		Souleyman	Doumbia	LB	Côte d'Ivoire	24	73	177	74
50570494		Theo	Archibald	LM	Scotland	23	60	180	1925
50571693		Ivan	Ljubić	CM	Austria	25	75	184	209
50571921		Emile	Smith Rowe	LW	England	21	64	182	112172
50573770		Daichi	Tagami	CB	Japan	28	78	180	101145
50573777		Róger	Lemus	CM	Colombia	29	69	170	112992
50573868		Daichi	Inui	CB	Japan	31	73	184	112448
50576086		Youba	Diarra	CM	Mali	23	73	178	191
67319290		Carlos	Villanueva	RB	Mexico	27	81	185	1880
67321119		Sixten	Mohlin	GK	Sweden	25	80	189	113173
67333549	Zhang Xiaobin	Xiaobin	Zhang	CM	China PR	27	72	188	112983
67340968		Daniel	James	LM	Wales	23	76	170	11
67343649		Stephane	Omeonga	CM	Belgium	25	72	177	81
67343915		Darnell	Johnson	CB	England	22	80	185	81
67348330		Meris	Skenderović	ST	Montenegro	23	73	182	2017
84114448		Jamie	Sterry	RB	England	25	76	180	121
84119125		Iké	Ugbo	ST	England	22	73	185	5
102881		Kyriakos	Stamatopoulos	GK	Canada	41	80	188	433
53960		Sam	Russell	GK	England	38	70	183	92
120415		Scott	Shearer	GK	Scotland	40	89	191	1951
240561		Giannis	Bouzoukis	CAM	Greece	23	62	175	1884
240922	Escriche	Daniel	Escriche Romero	ST	Spain	23	75	182	110831
241202		Patson	Daka	ST	Zambia	22	71	183	191
241945		Phetso	Maphanga	LB	South Africa	27	70	176	110930
242101	Lee Keun Ho	Keun Ho	Lee	ST	Korea Republic	25	77	186	1474
242533		Julio	Cascante	CB	Costa Rica	27	77	188	111140
242686		Michael	Breij	CAM	Holland	24	72	181	1915
243232		Kristal	Abazaj	RW	Albania	25	75	182	229
243615		Lars	Nieuwpoort	CB	Holland	26	70	189	635
243627		Yacine	Adli	CM	France	21	78	186	73
243968		Alexandre	De Bruyn	CAM	Belgium	27	69	178	680
244238		Jaka	Bijol	CDM	Slovenia	22	85	190	315
244521		İlkay	Durmuş	LM	Turkey	27	73	180	2045
50385060		Anton	Ferdinand	CB	England	36	71	183	100805
50480212		Sławomir	Peszko	LM	Poland	36	70	173	1873
50512987		Kebba	Ceesay	CB	Gambia	33	74	180	113458
50516767		Alex	Dyer	CM	Montserrat	31	74	177	299
50521339		David	Ball	CAM	England	31	75	183	1804
50532427		Jonson	Clarke-Harris	ST	England	27	71	183	1962
50534637	Lee Jong Ho	Jong Ho	Lee	ST	Korea Republic	29	78	180	112448
50538283		Nick	DeLeon	RM	United States	31	77	178	111651
50542440		Ali Ahmed	Al Zaqan	RM	Saudi Arabia	30	71	178	112390
50544079	Kim Nam Chun	Nam Chun	Kim	CB	Korea Republic	32	78	184	982
50546010		Cristian	Palomeque	LM	Colombia	27	72	170	112523
50550752		Christian	Bravo	RW	Chile	27	70	168	110977
50551686		Harrison	McGahey	CB	England	25	85	187	1949
50553296		Yaseen Omar	Barnawi	RB	Saudi Arabia	27	73	177	607
50554078		Fabián	Viáfara	RB	Colombia	29	65	167	111723
50554903		Aslak Fonn	Witry	RB	Norway	25	76	178	710
50557190		Charlie	Colkett	CM	England	24	74	176	5
50558204		Jimmy	Martinez	CM	Chile	24	71	175	15029
50560056		Connor	Ronan	CM	Republic of Ireland	23	67	170	1803
50561401		Tsiy-William	Ndenge	CDM	Germany	24	81	188	897
50563521	Joni Montiel	Jonathan	Montiel Caballero	CAM	Spain	22	67	173	242
50564691		Alexis	Hinestroza	CDM	Colombia	32	81	180	112578
50568835		Anier	Figueroa	CB	Colombia	34	76	184	111723
50569413		Kazuya	Murata	RM	Japan	32	64	169	101145
50571259		Mohamed	Eisa	ST	Sudan	27	70	183	1938
50572821		Lyle	Foster	ST	South Africa	20	70	180	69
50575272		Jordy	Thomassen	ST	Holland	28	78	189	111393
67312151		Ellis	Harrison	ST	Wales	27	79	180	1790
67334406		Charlie	Colkett	CM	England	24	74	176	113173
84081507		Jayden	Stockley	ST	England	27	79	188	1801
205750		Isaac	Koné	CDM	France	30	81	181	1750
206469		Taxiarchis	Fountas	ST	Greece	25	65	170	112075
207546	Shim Dong Woon	Dong Woon	Shim	CM	Korea Republic	31	69	169	2055
207633		Jakob	Haugaard	GK	Denmark	29	87	199	1806
208001	Paulo Otávio	Paulo Otávio	Rosa da Silva	LB	Brazil	26	68	174	111239
208752		Ryan	Edwards	CB	England	27	76	188	1929
208869		Dominic	Poleon	ST	England	27	82	176	110890
209334		Simon	Grether	RB	Switzerland	29	75	179	897
209447		Elson	Hooi	LW	Curaçao	29	61	169	650
209740		Enis	Hajri	RB	Tunisia	38	74	187	1825
209886		Anthony	Caceres	CM	Australia	28	67	173	112224
210217		Connor	Chapman	CDM	Australia	26	83	188	1474
210786		Sultan Ali	Al Sawadi	LM	Saudi Arabia	28	63	172	112392
211001	Alex Vallejo	Alejandro	Vallejo Mínguez	CDM	Spain	29	74	189	1867
211166		Jack	Whatmough	CB	England	25	78	190	1790
211720		Manuel	Stiefler	CM	Germany	33	76	178	1832
211833		Toni	Lindenhahn	RM	Germany	30	72	177	110482
212100		Max	Lowe	LB	England	24	74	175	91
212346	Lee Seok Hyun	Seok Hyun	Lee	CM	Korea Republic	31	68	177	1474
212477		Jherson	Córdoba	CDM	Colombia	33	85	176	112970
212732		Dylan	Remick	LB	United States	30	75	183	698
213171	Ka Sol Heon	Sol Hyeon	Ka	CB	Korea Republic	30	86	192	1475
213355		Olmes	García	ST	Colombia	28	74	183	112903
213604		Iván	Vásquez	CM	Chile	35	70	170	101097
213982		Camilo	Mancilla	CB	Colombia	28	72	184	112526
214046		Jonny	Mosquera	CDM	Colombia	30	66	172	101099
214093		Carlos	Giraldo	CDM	Colombia	41	79	180	111723
214308		Ariel	Martínez	LM	Chile	27	69	176	101097
214445		Darwin	López	RM	Colombia	29	77	176	112903
214588		Patricio	Jerez	RB	Chile	34	80	180	112709
214836		Joao	Ortiz	LM	Chile	30	73	171	112655
215113		Nicolás	Bertocchi	CM	Argentina	32	82	192	112709
215196		Martín	Galmarini	RB	Argentina	39	78	180	111715
215419		Cameron	Kerr	RB	Scotland	25	75	175	180
215982		Matteo	Mancosu	ST	Italy	36	75	178	111139
216260		Fabio	Kaufmann	RM	Germany	28	72	181	110197
216288		Sebastian	Mrowca	CDM	Poland	27	79	177	492
216442		Daniele	Gabriele	CAM	Germany	26	75	179	2045
216795		Chris	Long	ST	England	26	77	180	112260
217525		Ofir	Davidzada	LB	Israel	30	66	178	674
218729	Euller	Elosman Euller	Silva Cavalcanti	LB	Brazil	26	73	174	111674
219436		Josh	Clarke	RB	England	27	70	173	1925
219743		Sultan	Al Duayyi	CB	Saudi Arabia	28	83	179	112390
219984		Mattia	Aramu	ST	Italy	26	69	180	54
220191	Marcelo Djaló	Marcelo Amado	Djaló Taritolay	CB	Spain	27	86	193	469
220314		Ofir	Marciano	GK	Israel	31	87	193	81
221316		Matías	Blázquez	CB	Chile	30	83	188	112531
221381		Luis	Tipton	LB	Colombia	29	78	179	112528
221502		Jordan	Hamilton	ST	Canada	25	83	183	111651
221631		Marius	Lundemo	CM	Norway	27	82	189	298
221768		Jan	Zwischenbrugger	CB	Austria	31	80	187	15009
222156		James	Bree	RB	England	23	74	178	2
221620		Marlon	Hairston	RWB	United States	27	71	183	694
221656		Eric	Miller	RB	United States	28	79	183	111138
221932		Maximilian	Oesterhelweg	LM	Germany	31	73	180	110700
221970		Paweł	Zieliński	RB	Poland	31	79	178	112505
222308	Hu Yanqiang	Yanqiang	Hu	CAM	China PR	28	60	178	111768
222620	Hu Rentian	Rentian	Hu	RW	China PR	30	70	172	112978
222836		Ryan	Ledson	CM	England	23	69	181	1801
223095		Federico	Palacios Martínez	ST	Spain	26	65	170	171
223146		Francisco	Rodríguez	CAM	Switzerland	25	78	178	897
223307		Jarosław	Kubicki	CDM	Poland	26	69	179	111091
223441		Ousmane	Sidibé	CB	Guinea	36	76	178	113948
223607	Luis Ruiz	Luis	Ruiz Sayago	LB	Spain	29	73	181	110831
223732		Alessandro	Damen	GK	Holland	31	83	185	1971
223867		Andreas	Gruber	LM	Austria	26	70	174	1785
224099		Lewie	Coyle	RB	England	25	67	173	112260
224191		Alessandro	Ciranni	RB	Belgium	25	70	175	634
224361		Andy	Cannon	CM	England	25	74	176	1955
224388		Jefferson	Gómez	CB	Colombia	25	78	183	101101
224846		Konstantinos	Kotsaris	GK	Greece	25	81	185	1884
225014		Gaetano	Castrovilli	CAM	Italy	24	72	179	111434
225105	Cristo González	Cristo	González Pérez	ST	Spain	23	69	179	243
225174		Dylan	Louiserre	CM	France	26	64	172	1813
225368		Babacar	Gueye	ST	Senegal	26	84	192	485
225529	Nathan	Nathan Raphael	Pelae Cardoso	CB	Brazil	26	78	188	322
225667		Conor	Chaplin	ST	England	24	69	168	1790
225999		Filip	Lesniak	CM	Slovakia	25	70	176	820
226170		Emiliano	Amor	CB	Argentina	26	80	183	111707
226556		Jimmy	Martinez	LM	Chile	24	71	175	111327
226772		Joaquín	Laso	CB	Argentina	31	75	187	101088
226785		Nick	Besler	CB	United States	28	75	185	111065
227503		Jacob Bruun	Larsen	LM	Denmark	22	75	183	22
227764		Jodi	Jones	RM	England	23	73	177	1800
228151		Josh	Cullen	CM	Republic of Ireland	25	70	175	89
228408		Connor	Ronan	CM	Republic of Ireland	23	67	170	110
228639		Ryan	Mmaee	ST	Belgium	24	79	183	232
228763		Georgiy	Melkadze	LM	Russia	24	84	182	100767
228815		Tyler	Roberts	ST	Wales	22	75	180	8
229073		Josh	Dacres-Cogley	RB	England	25	68	174	88
229236		Matthieu	Udol	LB	France	25	79	178	68
229383		Mauro	Savastano	LB	Holland	24	69	176	1906
229677		Franck-Yves	Bambock	CDM	France	26	78	181	1867
229873		Alexander	Munksgaard	RWB	Denmark	23	75	182	1516
230574		Gianluca	Carpani	CM	Italy	27	80	182	1847
231139		Jack	Fitzwater	CB	England	23	70	188	1803
231488		Michael	Omoh	RW	Nigeria	29	83	185	705
231743		Keinan	Davis	ST	England	23	68	188	2
231873	Joni Montiel	Jonathan	Montiel Caballero	CAM	Spain	22	67	173	480
231992		Kyle	Fisher	CB	United States	27	78	183	111139
232171		Mariano	Vázquez	CAM	Argentina	28	71	174	112523
232291		Stefan	Silva	ST	Sweden	31	74	181	433
232332		Sebastien	Ibeagha	CB	Nigeria	29	85	188	112828
232445		Salvatore	Monaco	CB	Italy	28	83	192	199
232592		Takaharu	Nishino	CB	Japan	27	73	187	112093
232831	Choi Kyu Baek	Kyu Baek	Choi	CB	Korea Republic	27	76	188	112448
232896		Takumi	Miyayoshi	ST	Japan	29	66	172	112444
232991		Sho	Inagaki	CM	Japan	29	72	175	113157
233156		Shota	Arai	GK	Japan	32	82	185	111730
233487		Riley	McGree	CM	Australia	22	72	178	112224
233880		Gino	Fechner	CDM	Germany	23	78	188	29
234198		Damil	Dankerlui	RB	Holland	24	71	172	1907
234706		Brandon	Mason	LB	England	23	70	173	1800
234899		Óscar	Franco	ST	Paraguay	28	85	186	112578
235225	Pité	Luís Pedro	Pinto Trabulo	LB	Portugal	26	78	189	112516
235328		Andrea	Beghetto	LM	Italy	26	73	182	111657
235514		Saeed	Al Rubaie	CB	Saudi Arabia	27	80	188	112096
235794		Eberechi	Eze	CAM	England	23	67	173	15
235890		Marwane	Saadane	CDM	Morocco	29	75	187	101037
235937		Alberto	Picchi	CM	Italy	23	69	185	111434
236232		Justice	Chabalala	CB	South Africa	29	77	181	110930
236678		Simone	Lo Faso	CF	Italy	23	72	180	1843
237032	Javi Jiménez	Javier	Jiménez García	CB	Spain	24	74	182	461
237177		Freddy	Flórez	CDM	Colombia	28	67	177	112579
237368		Bryan	Passi	CB	France	24	78	189	70
50531		Øyvind	Storflor	RW	Norway	41	75	181	112200
112362		François	Zoko	ST	Côte d'Ivoire	37	75	183	346
136504	Cho Sung Hwan	Sung Hwan	Cho	CB	Korea Republic	39	78	184	1477
139257		Daniel	Lopar	GK	Switzerland	36	85	187	898
152116		Johannes	Aigner	ST	Austria	40	81	185	15009
152505		John	White	CB	England	35	78	185	1954
155517		Danny	Olsen	CM	Denmark	36	78	186	112425
157590		Jan	Mauersberger	CB	Germany	36	93	194	33
157888		Quentin	Westberg	GK	United States	35	73	183	57
163570		Andrew	Crofts	CM	Wales	37	73	175	112254
165496		Gonzalo	Prósperi	RB	Argentina	36	78	179	111713
168583		Patrick	Bürger	ST	Austria	34	85	187	1785
242670		Toni	Domgjoni	CM	Switzerland	22	74	177	894
242764		Hideki	Ishige	CAM	Japan	26	69	170	101149
242914		Keito	Nakamura	RM	Japan	21	75	180	112093
243233		Dominik	Wanner	LM	Germany	22	71	179	22
243642		Warren	Tchimbembé	CM	France	23	74	180	294
243747		Jonas	Zickert	CDM	Germany	23	75	182	162
243992		Thibault	Corbaz	CDM	Switzerland	27	65	177	435
244097		Tarsis	Bonga	ST	Germany	24	89	196	110592
244162		Žarko	Udovičić	LM	Serbia	33	72	185	111089
244401		Mohamed Ali	Camara	CB	Guinea	23	85	191	900
244438		Youba	Diarra	CM	Mali	23	73	178	2017
221705		Kyle	Dempsey	CM	England	25	75	178	112260
221964	Wu Yake	Yake	Wu	GK	China PR	30	81	186	111769
222160		Youssouf	Koné	LB	Mali	26	71	174	65
222410		Keziah	Veendorp	CB	Holland	24	77	183	100628
222477		Louis	Reed	CM	England	24	60	173	1938
222697	Han Seok Jong	Seok Jong	Han	CM	Korea Republic	29	78	186	110765
223085		Luke	Berry	CAM	England	29	72	177	1923
223224		Marin	Jakoliš	ST	Croatia	24	77	182	111821
223320		Cenk Ahmet	Alkılıç	RB	Turkey	33	62	177	113142
223445		Benjaloud	Youssouf	RB	Comoros	27	71	176	57
223694		Erik	Marxen	LB	Denmark	30	80	185	1786
223767		Özgür	Özdemir	CB	Turkey	26	84	188	29
223885		Alexander	Nübel	GK	Germany	24	86	193	34
224175		Maarten	de Fockert	GK	Holland	26	73	189	1971
224230		Alejandro	Díaz	ST	Mexico	25	72	175	101114
224449		Hendrick	Ekstein	CAM	South Africa	30	65	174	110929
224589		Guillaume	Cros	LB	France	26	69	171	110591
224981	Grego Sierra	Gregorio	Sierra Pérez	CM	Spain	28	81	186	477
225075		Julian	Günther-Schmidt	ST	Germany	26	81	183	110591
225149		Jean	Butez	GK	France	26	83	191	111560
225310		Ben	Thompson	CM	England	25	78	175	1790
225511		Connal	Trueman	GK	England	25	75	186	88
225629		Théo	Valls	CM	France	25	75	180	224
225722		Pablo	Jaquez	CB	Mexico	25	75	181	1881
226033		Elliot	Käck	LB	Sweden	31	68	173	1524
226232		Jannik	Pohl	ST	Denmark	25	77	183	1915
226405		Adrián	Arregui	CDM	Argentina	28	74	176	111714
226705		David	Atanga	RM	Ghana	24	65	180	165
226775		Jay	Chapman	RM	Canada	27	71	183	111651
226924		Roman	Kerschbaum	CDM	Austria	27	75	181	2045
227509		Elías Már	Ómarsson	ST	Iceland	26	73	183	1971
227909		John	McCarthy	GK	United States	29	82	191	112134
228327		Fitim	Azemi	ST	Norway	29	81	185	1757
228592		Aloïs	Confais	CDM	France	24	61	174	294
228759		Kenji-Van	Boto	LB	France	25	71	180	57
228974	Damià	Damià	Sabater Tous	CDM	Spain	25	74	177	452
229138		Fabien	Antunes	LB	France	29	77	180	680
229402		Daniel	Castillo	GK	Chile	30	78	181	112534
229741	Mauro Cerqueira	Mauro Rafael	Geral Cerqueira	LB	Portugal	28	79	178	1891
229891		Julian	Ryerson	CDM	Norway	23	82	183	1831
230019		Vital	Nsimba	LB	Congo DR	28	67	167	1815
230829		Alan	Mozo	RB	Mexico	24	68	173	1881
231392	João Nunes	João Aniceto	Grandela Nunes	CB	Portugal	25	80	188	111091
231614		Fabian	Reese	ST	Germany	23	76	187	165
231828		Frederik	Tingager	CB	Denmark	28	94	198	110500
231886		Alex	Muyl	RM	United States	25	79	180	689
232003		Miguel	Solís	GK	Colombia	38	83	185	101104
232192		Christopher	Martins Pereira	CDM	Luxembourg	24	72	188	294
232252		Anton	Walkes	RB	England	24	83	187	1790
232311		Leeroy	Owusu	LB	Holland	24	68	174	635
232438		Gevaro	Nepomuceno	LM	Curaçao	28	77	173	1920
232611		Kazuya	Miyahara	RB	Japan	25	67	172	112092
232671		Leandro	Putaro	RM	Germany	24	77	187	110500
232907		Hidekazu	Otani	CDM	Japan	36	67	174	101145
232916		Keijiro	Ogawa	RM	Japan	29	65	170	113161
233053		Amir	Hadžiahmetović	LM	Bosnia and Herzegovina	24	70	179	101033
233170		Seiya	Fujita	RM	Japan	34	70	175	113161
233510		Tahith	Chong	LW	Holland	21	70	185	11
234097		Renato	Tarifeño	ST	Chile	24	65	170	101097
234380		Giuliano	Modica	CB	Argentina	30	83	184	492
234827		Jacob	Rasmussen	CB	Denmark	24	81	190	1746
234914		Maxime	D'Arpino	CM	France	25	70	175	112276
235252		Abdiel	Arroyo	ST	Panama	27	82	183	1438
235425		Derrick	Jones	CDM	United States	24	75	193	112134
235546		Anton	Krešić	CB	Croatia	25	83	198	111434
235834		Fabio	Depaoli	RM	Italy	24	71	178	192
235916		Valerio	Mantovani	CB	Italy	25	70	180	110373
236024		Ferris	N'Goma	CM	France	28	69	175	378
236427		Simon	Olsson	CM	Sweden	23	81	185	700
236747		Luis	González	RW	Venezuela	30	66	170	111722
237152		Daleho	Irandust	CAM	Sweden	23	73	185	711
237203		Cristhian	Paredes	CM	Paraguay	23	75	183	111140
237385		Ian	Harkes	CM	United States	26	73	183	688
50632		Peter	Clarke	CB	England	39	83	188	1920
122718		Philipp	Heerwagen	GK	Germany	38	89	193	111239
138251		Richard	Foster	RB	Scotland	36	73	176	100804
142333		Mark	McNulty	GK	Republic of Ireland	40	74	185	422
152483		Gabriel	Zakuani	CB	Congo DR	35	68	185	1802
152735		Michael	Doyle	CDM	Republic of Ireland	40	71	178	1800
155352	Kim Seung Yong	Seung Yong	Kim	CAM	Korea Republic	36	75	181	112115
156438		Thomas	Gebauer	GK	Austria	39	88	193	252
158282		Claudio	Lustenberger	LB	Switzerland	34	75	183	897
163766		Leon	Barnett	CB	England	35	72	185	1930
165748		Jakub	Tosik	CDM	Poland	34	81	180	110749
168630		Mouhamadou	Dabo	LB	France	34	65	176	210
242545		Marko	Hausjell	RM	Austria	22	68	172	111821
242815		Dominik	Fitz	CAM	Austria	22	67	174	256
242974		Kevin	Sessa	CM	Germany	21	70	175	111235
243185		Przemysław	Wiśniewski	CB	Poland	23	88	195	420
243601		David	Fitzpatrick	LB	England	31	73	179	1959
243644		Bakary	Sissoko	CB	France	23	83	186	294
243882		Johannes	Dörfler	RM	Germany	24	80	186	167
244081		Noah	Plume	CDM	Germany	24	78	187	110700
244110	Jesús Jiménez	Jesús	Jiménez Núñez	ST	Spain	27	80	182	420
244255		Kacper	Michalski	RB	Poland	21	77	187	420
244419		Christian	Ilic	LB	Croatia	25	73	178	2017
244452		Uğur	Tezel	RB	Germany	24	75	181	531
222172	Fan Yunlong	Yunlong	Fan	LM	China PR	32	75	180	112977
222430		Fabián	Viáfara	RB	Colombia	29	65	167	112578
222585		Francisco	Fydriszewski	ST	Argentina	28	78	186	110396
222916		Josh	Ginnelly	LM	England	24	65	173	1803
223105		Nicolás	Oroz	LM	Argentina	27	73	173	112116
223265		Mikey	Devlin	CB	Scotland	27	79	188	77
223378		Aykut	Çeviker	CDM	Turkey	31	70	177	111340
223677		Florian	Jamnig	RM	Austria	30	70	183	252
223792		Tobias	Knoflach	GK	Austria	27	82	183	254
224067		Jeppe	Tverskov	CB	Denmark	28	85	185	272
224297		Alex	Gersbach	LB	Australia	24	73	183	298
224378		Mattia	Bani	CB	Italy	27	78	188	192
224556	Rao Weihui	Weihui	Rao	LB	China PR	32	71	178	112537
224702	Liu Dianzuo	Dianzuo	Liu	GK	China PR	31	81	190	111839
224965		Christian	Doidge	ST	Wales	28	77	185	561
225072		Zak	Vyner	CB	England	24	68	187	1797
225128		Gennaro	Acampora	CM	Italy	27	78	177	110741
225282		José	Devecchi	GK	Argentina	26	83	188	1013
225381		Jacopo	Petriccione	CM	Italy	26	75	180	347
225625		Kane	Vincent-Young	LB	England	25	70	180	1935
225812		Brayan	Rovira	CDM	Colombia	24	78	177	112992
226057		Deklan	Wynne	CB	New Zealand	26	75	178	694
226265		Carlos	Lobos	CDM	Chile	24	70	173	110975
226628		Enes	Šipović	CB	Bosnia and Herzegovina	30	91	198	113219
226724		Courtney	Senior	RM	England	24	64	176	1935
226866	Dálcio	Euciodálcio	Gomes	RW	Portugal	25	67	180	1889
227217		Kamil	Mazek	RM	Poland	27	64	174	110749
227859	Jeong Hyun Cheol	Hyun Cheol	Jeong	CM	Korea Republic	28	74	187	982
228240		Romuald	Lacazette	CDM	France	27	73	175	110502
228518		Andreas	Hanche-Olsen	CB	Norway	24	74	185	917
228645		Lukas	Görtler	ST	Germany	27	82	185	1903
228810		Joseph	Amoah	CM	Ghana	26	71	178	1887
229065		Branislav	Niňaj	CB	Slovakia	27	85	191	634
229118		Jorrit	Smeets	CM	Holland	26	71	182	634
229440		Víctor	Morales	CB	Chile	30	88	190	112535
229543		David	Kiki	LB	Benin	27	76	180	378
229753		Tsiy-William	Ndenge	CDM	Germany	24	81	188	23
230532		Ahmed Yousef	Al Zain	RM	Saudi Arabia	30	65	182	112391
230918		Trevoh	Chalobah	CB	England	22	75	190	94
231406		Kyle	Edwards	LM	England	23	64	172	109
231514		Robert	Gojani	CM	Sweden	28	71	174	700
231720		Quentin	Braat	GK	France	24	90	194	71
231972		Masato	Kudo	ST	Japan	31	74	177	113157
232177		Moses	Ogbu	ST	Nigeria	30	78	185	113458
232269	Heo Yong Joon	Yong Joon	Heo	LW	Korea Republic	28	75	184	1475
232316		Gaddi	Aguirre	CB	Mexico	25	73	181	101114
232379		Naoki	Ishihara	ST	Japan	36	62	173	112836
232626	Oh Jae Suk	Jae Suk	Oh	RB	Korea Republic	31	74	178	112093
232755		Jay	Dasilva	LB	England	23	64	170	1919
232859		Kento	Hashimoto	CM	Japan	27	74	181	101150
233040		Jonathan	Augustinsson	LB	Sweden	25	81	185	710
233057		Franco	Troyansky	ST	Argentina	24	77	178	111716
233163		Shunsuke	Kikuchi	CM	Japan	29	75	180	113161
233730		Yakou	Meité	RM	Côte d'Ivoire	25	82	184	1793
234154		Cristian	Martinez	RM	Panama	24	79	170	687
234636		Andrija	Pavlović	ST	Serbia	27	76	189	254
234710		Didier	Lamkel Zé	LW	Cameroon	24	78	192	230
235167		Vitaly	Janelt	CM	Germany	23	79	184	160
235266		Christian	Früchtl	GK	Germany	21	71	193	21
235379		Emanuele	Ndoj	CM	Albania	24	74	187	190
235568		Loïc	Goujon	CM	France	25	68	180	57
235856		Yan	Marillat	GK	France	26	76	183	113948
235891		Matic	Fink	RB	Slovenia	31	70	175	101037
236037		Pelle	Clement	CAM	Holland	25	67	177	1793
236506		Marcos	Senesi	CB	Argentina	24	80	183	1013
236751		Andreas	Hopmark	CB	Norway	30	88	192	113459
237116		Kortne	Ford	CB	United States	25	84	188	694
237333		Louis	Verstraete	CM	Belgium	22	80	186	110913
49939		Alain	Nef	CB	Switzerland	39	88	190	894
53855		Nathan	Tyson	LW	England	39	64	183	1933
138153		Darren	Potter	CDM	Republic of Ireland	36	72	185	1797
139443	Cho Won Hee	Won Hee	Cho	CDM	Korea Republic	38	72	177	983
150894		Markus	Halsti	CB	Finland	37	84	185	1445
152690		Dimitrios	Konstantopoulos	GK	Greece	42	90	193	12
155567		Peter	Nymann	RB	Denmark	38	75	179	1446
156704		Tobias	Eriksson	RM	Sweden	36	70	178	1439
161776		Conrad	Logan	GK	Republic of Ireland	35	89	188	1940
163856		Chris	Dagnall	ST	England	35	75	173	1945
167919		Matt	Done	LWB	Wales	33	65	178	1955
242643		Liam	Fraser	CDM	Canada	23	81	185	111651
242757		Natsuhiko	Watanabe	RM	Japan	26	65	170	550
242857	Yun Ji Hyeok	Ji Hyeok	Yun	CB	Korea Republic	23	85	190	1477
243180		Yuta	Goke	RM	Japan	22	74	183	101146
243513		Gabriele	Corbo	CB	Italy	21	76	185	189
243677		Tim	Siekman	CB	Holland	31	75	187	100628
243969		Sebastian	Czajkowski	ST	Denmark	24	75	180	111660
244000		Tobias	Fleckstein	CB	Germany	22	65	188	576
244137		Reda	Kaddouri	CB	France	25	73	186	111273
244318		Loïc	Lapoussin	CAM	France	25	76	181	111273
244409		Florian	Faist	GK	Austria	32	76	181	2017
244454		Dylan	Esmel	LW	Côte d'Ivoire	23	78	181	29
244581		Arbnor	Fejzullahu	RB	Albania	28	77	185	435
244736		Steeve	Beusnard	ST	France	29	63	169	113948
245402		Percy	Prado	RB	Peru	25	70	173	71
50501373		Ishmael	Miller	ST	England	34	89	192	15048
50526661		John	Dunleavy	RB	Republic of Ireland	30	71	183	563
50556095		Gethin	Jones	RB	Wales	25	74	178	1940
222393		Jhon	Cano	RB	Colombia	38	74	175	112523
222611		Denis	Rodríguez	CM	Argentina	25	67	171	111022
222724		Benson	Manuel	RM	Belgium	24	69	166	111560
223007		Mauro	Coppolaro	RB	Italy	24	80	189	205
223255		Aslak Fonn	Witry	RB	Norway	25	76	178	112200
223427		Lukas	Jäger	CDM	Austria	27	74	184	171
223629		Saleh	Al Jaman	LM	Saudi Arabia	27	65	174	112408
223866		Sandi	Lovric	CDM	Austria	23	70	180	209
223993		Manfred	Osei Kwadwo	RM	Ghana	26	68	171	110588
224255		Cristóbal	Vergara	CB	Chile	27	70	176	112709
224438		Adam	Buksa	ST	Poland	25	79	191	110746
224570		Anthony	Jackson-Hamel	ST	Canada	28	85	185	111139
224930		Alessio	Sabbione	CM	Italy	29	79	188	112409
225016		Giovanni	Di Noia	CM	Italy	27	72	181	112409
225117		Nicolas	Haas	CM	Switzerland	25	74	178	1843
225202	Carlos Nieto	Carlos	Nieto Herrero	LB	Spain	25	74	179	244
225363	Rúben Lameiras	Rúben Barcelos	De Sousa Lameiras	RM	Portugal	26	70	175	1929
225542		Charlie	Colkett	CM	England	24	74	176	127
225759		Bruce	Kamau	RW	Australia	26	67	175	112427
226123		Hernán	Da Campo	LM	Argentina	27	70	175	111713
226382		Lucas	Villarruel	CDM	Argentina	30	74	173	111710
226767		Nick	Kuipers	CB	Holland	28	93	190	650
226781		Khiry	Shelton	ST	United States	28	84	191	696
227145		César	Carrillo	CDM	Colombia	28	65	179	101105
227740		Danilo	Arboleda	CB	Colombia	26	83	190	101099
227920		Ismail	Azzaoui	LM	Belgium	23	72	179	175
228318		Harry	Chapman	LW	England	23	70	172	12
228544		Sofiane	Daham	CAM	Algeria	25	70	180	226
228684		Ryan	Nyambe	RB	Namibia	23	76	182	3
228882		Simone	Pontisso	CM	Italy	24	75	184	55
229175		Niko	Kijewski	LB	Germany	25	74	176	110500
229300		Shawn	Barry	RB	United States	31	77	183	111065
229472		Finn	Porath	LM	Germany	24	68	179	172
229872		Arnol	Palacios	RB	Colombia	29	69	172	111723
229973		Jakub	Piotrowski	CDM	Poland	23	80	188	673
230625	Matheus Reis	Matheus	Reis de Lima	LB	Brazil	26	79	184	744
231219		Braian	Rivero	CDM	Argentina	25	74	178	110396
231448		Reiss	Nelson	RW	England	21	70	175	1
231706		Kevin	Londoño	RM	Colombia	27	72	180	101106
231842		Killian	Sanson	LM	France	24	64	173	70
231976		Jonathan	Campbell	CB	United States	28	85	188	693
232156		Mathias	Honsak	LM	Austria	24	78	188	576
232250		Luke	Amos	CM	England	24	72	179	18
232296		Fahd	Moufi	RB	Morocco	25	84	177	112516
232373		Ryota	Moriwaki	CB	Japan	35	75	177	111575
232447		Yuji	Rokutan	GK	Japan	34	80	188	101149
232658		Danilho	Doekhi	CB	Holland	23	80	190	1909
232849		Ryoya	Ogawa	LB	Japan	24	78	182	101150
232909		Shunki	Takahashi	RB	Japan	31	68	169	101146
233043		Alexis	Hinestroza	CDM	Colombia	32	81	180	112903
233157		Nikita	Medvedev	GK	Russia	26	80	192	100765
233410	Kweon Han Jin	Han Jin	Kweon	CB	Korea Republic	33	77	187	1478
233791		Alexandr	Maksimenko	GK	Russia	23	81	187	100767
234371		Rémy	Descamps	GK	France	25	79	194	1815
234668		Frederic	Ananou	RB	Germany	23	78	183	111239
234891		Nils	Seufert	CM	Germany	24	73	182	159
235241	Léo Príncipe	Leonardo	Peixoto Príncipe	RB	Brazil	24	68	174	1738
235332		Gabriele	Marchegiani	GK	Italy	25	78	183	112791
235456		Jean-Ricner	Bellegarde	CDM	France	23	66	170	64
235740		Alberto	Paleari	GK	Italy	28	88	193	111993
235887		Guévin	Tormin	RM	France	23	73	174	1750
235989		Norberto	Briasco	ST	Armenia	25	82	179	111711
236390	Pol Valentín	Pol	Valentín Sancho	RB	Spain	24	73	180	15019
236681		Manuel	Thurnwald	RB	Austria	23	68	172	254
236843		Joshua	Pérez	RW	United States	23	64	165	112996
237187		Anier	Figueroa	CB	Colombia	34	76	184	101105
237420		Vasilije	Janjičić	CDM	Switzerland	22	82	180	28
54037		Tommaso	Berni	GK	Italy	38	80	185	44
135218		Damien	Perquis	CB	Poland	37	81	185	110316
140420		Brian	Murphy	GK	Republic of Ireland	38	83	183	1961
151225		Danny	Collins	CB	Wales	41	76	183	92
152501		Scott	Brown	CM	England	36	64	170	110313
155266		Amin	Askar	RB	Ethiopia	35	62	174	112199
156017		Ville	Jalasto	RB	Finland	35	83	183	100325
157734		Anssi	Jaakkola	GK	Finland	34	88	193	1793
163049		Jonathan	Forte	ST	Barbados	35	77	183	143
164854		Johnny	Mullins	CB	England	35	80	180	1936
167925		Joey	O'Brien	RB	Republic of Ireland	35	70	180	306
169415		Edgar	Hernández	GK	Mexico	38	83	185	101114
168633		Danny	Grainger	LB	England	35	78	177	1480
169389		Alan	Sheehan	CB	Republic of Ireland	34	71	180	1923
169447		Michael	McGlinchey	CAM	New Zealand	34	68	175	111396
169591		David	Gray	RB	Scotland	33	78	183	81
169645		Andy	Barcham	LM	England	34	75	175	112259
169933		Scott	Laird	LB	England	33	83	183	561
170309		Federico	Piovaccari	ST	Italy	36	77	180	1867
170056		Joel	Grant	RM	Jamaica	33	70	183	1929
171620		Anthony	Wordsworth	CM	England	32	76	185	112259
171881		Conor	Sammon	ST	Republic of Ireland	34	93	188	83
171994	Marquitos	Marcos	García Barreno	CAM	Spain	34	73	177	112505
172568		Matti	Lund Nielsen	CM	Denmark	33	74	184	112199
172872		Murat	Yıldırım	CDM	Turkey	34	68	171	113259
173349		Lionel	Ainsworth	RM	England	33	60	165	1929
175316		Lewis	Stevenson	LB	Scotland	33	67	170	81
177270		Luis	Martínez	CM	Mexico	34	85	173	110145
177313		Andy	Williams	ST	England	34	78	188	1930
176384		Maciej	Gostomski	GK	Poland	32	90	195	110747
178164		Kim André	Madsen	CB	Norway	32	74	182	922
180351		Conan	Byrne	RW	Republic of Ireland	36	74	180	423
181845	Li Wei	Wei	Li	CDM	China PR	36	73	180	111724
182360	Cao Yang	Yang	Cao	CB	China PR	39	80	187	111774
182802	Wang Yun	Yun	Wang	CM	China PR	38	75	175	110955
183780		Oliver	Lancashire	CB	England	32	75	186	1934
184261		Alain	Wiss	CB	Switzerland	30	67	180	898
184543		Jérôme	Thiesson	RB	Switzerland	34	70	178	111138
186103		Lee	Collins	CB	England	32	83	180	561
186586		Piotr	Polczak	CB	Poland	34	75	192	111089
187035		Jared	Jeffrey	CDM	United States	31	75	178	688
187619		Caleb	Patterson-Sewell	GK	United States	34	87	191	111651
188167		Daniel	Seaborne	CB	England	34	75	190	445
188970		Johan	Mårtensson	CM	Sweden	32	75	180	705
189792		Tope	Obadeyi	LM	England	31	86	182	226
190508		Dominik	Hofbauer	CM	Austria	30	76	181	112075
190685		Mana	Dembélé	ST	Mali	32	82	184	1738
191874	Lee Ji Nam	Ji Nam	Lee	CB	Korea Republic	36	70	183	1475
192572		Scott	Neville	RB	Australia	32	75	184	111399
193411		Kevin	Fickentscher	GK	Switzerland	33	78	181	110770
194714		Michael	Karlsen	ST	Norway	31	85	195	112200
196910		Gilbert	Álvarez	ST	Bolivia	29	80	185	113222
197930		Josh	Parker	ST	Antigua and Barbuda	30	76	180	1802
198073		Aaron	Martin	CB	England	31	76	190	143
199231	Kim Tae Hwan	Tae Hwan	Kim	RB	Korea Republic	32	72	180	2055
199479		Boné	Uaferro	CB	Germany	29	88	191	110169
199780		Maurice	Exslager	ST	Germany	30	71	176	110169
234927		Raheem	Edwards	LW	Canada	26	66	175	693
235334		Bob	Straetman	LM	Belgium	23	73	182	2007
235627		Ousmane	Fane	CDM	France	27	80	193	1920
236313		Kingsley	Madu	LB	Nigeria	25	80	174	15005
236464		Julien	Ngoy	ST	Belgium	23	64	185	322
236585	You Ju An	Ju An	You	ST	Korea Republic	22	69	176	983
236850		Felipe	Ávila	CM	Colombia	27	70	179	112527
237131		José Iván	Rodríguez	CDM	Mexico	25	61	171	110781
237374		Onur	Atasayar	LB	Turkey	26	74	184	742
237499		Abdelhamid	Sabiri	LM	Morocco	24	80	186	1939
237739		Ryosuke	Shindo	CB	Japan	25	74	183	112444
238065		Kevin	Lankford	RM	Germany	22	81	186	111235
238559		Sebastian	Mai	CB	Germany	27	93	195	110482
238633		Patrick	Breitkreuz	ST	Germany	29	89	187	110197
238717		Ethan	Pinnock	CB	England	28	79	192	1932
238839		Lewis	Wing	CM	England	26	75	180	12
238963		Christoph	Greger	CB	Germany	24	82	193	172
239003		Hicham	Mahou	RW	France	22	77	180	72
239181		Marcel	Seegert	CB	Germany	27	77	186	110178
239323		Dennis	Eckert	ST	Germany	24	79	181	450
239453		Steeve	Furtado	RB	France	26	68	175	112276
239918	Allef	Allef	Andrade Rodrigues	ST	Brazil	26	72	174	665
239946		Jorge	Valadez	CB	Mexico	25	76	179	1028
240039		Vukadin	Vukadinović	RM	Serbia	30	74	181	267
240193		Elvis	Rexhbeçaj	CM	Kosovo	23	73	182	175
240442		Imad	Faraj	RM	France	22	64	177	65
240501		Alexandros	Katranis	LB	Greece	23	73	177	111560
240611		Dru	Yearwood	CM	England	21	63	175	1954
240709		Ridle	Baku	CM	Germany	23	72	176	169
241254	Jiang Liang	Liang	Jiang	RB	China PR	31	72	178	112977
241538		Shaquille	Pinas	CB	Holland	23	67	182	650
241928		Albert	Sambi Lokonga	CM	Belgium	21	70	180	229
242125		Hijiri	Onaga	LM	Japan	26	65	171	112448
242395		Willy	Semedo	LM	France	27	68	185	670
242631		Tomas	Hilliard-Arce	CB	United States	25	79	185	697
242737		Elías	Aguilar	CAM	Costa Rica	29	73	174	110765
243339		Djihad	Bizimana	CDM	Rwanda	24	77	180	110913
243705		Florian	Chabrolle	CAM	France	23	65	171	219
244202		Ricki	Lamie	CB	Scotland	28	85	188	621
244537		Mohammad	Naderi	LB	Iran	24	86	188	100081
244912		Takanori	Sugeno	GK	Japan	37	75	179	112444
50487000	Kim Seung Yong	Seung Yong	Kim	CAM	Korea Republic	36	75	181	110765
50508032		Maciej	Gostomski	GK	Poland	32	90	195	1463
50522470		Eirik Holmen	Johansen	GK	Norway	29	84	201	919
50529593		Ryan	Bowman	ST	England	29	83	185	143
50531435		Tanju	Öztürk	CDM	Germany	32	87	191	27
50534341		Matt	Crooks	CM	England	27	72	192	1797
50537139		Jorge	Espericueta	CM	Mexico	26	77	178	1970
50539158		Tadanari	Lee	CF	Japan	35	73	182	101151
50541792		Jufain	Al Bishi	CB	Saudi Arabia	34	74	179	113219
50543818		Mikkel	Desler	RB	Denmark	26	73	184	1463
50545443	Kiki	Christian Neiva	Afonso	LB	Portugal	26	74	181	1889
50551199		Conor	Shaughnessy	CB	Republic of Ireland	25	74	191	80
50553031	Ryu Seung Woo	Seung Woo	Ryu	CAM	Korea Republic	27	68	172	2055
50556617		Lamine	Ndao	ST	Senegal	26	76	178	110316
50558358		Gianluca	Scamacca	ST	Italy	22	80	195	1914
50561143		Chidiebere	Nwakali	CM	Nigeria	24	68	173	1439
50562508		Denis Will	Poha	CM	France	24	72	173	1823
50563512		Mitchell	van Bergen	RW	Holland	21	62	172	1913
50564127		Takuma	Nishimura	CF	Japan	24	72	178	315
50564600		Yusuke	Kobayashi	CDM	Japan	26	60	172	101145
50566804		Jimmy	Dunne	CB	Republic of Ireland	23	75	183	1796
50569271		Santiago	Roa	RB	Colombia	25	72	178	101099
50571240		José Juan	Macías	ST	Mexico	21	73	177	110781
50572787		Benjamin	Hansen	CB	Denmark	27	73	190	1463
67317716		Kieron	Morris	RM	England	27	71	178	15048
67330219		Nathan	Thomas	LM	England	26	80	178	1480
200086		Maciej	Jankowski	ST	Poland	31	68	181	111082
177414		Tom	Pope	ST	England	35	86	190	1928
179930		Szymon	Pawłowski	LM	Poland	34	69	175	111089
181521		Sam	Saunders	CM	England	37	70	173	1933
182206		Richard	O'Donnell	GK	England	32	85	188	1804
182944		Neal	Bishop	CM	England	40	81	186	1940
183945		Fredrik	Brustad	RW	Norway	32	87	190	417
184630		Luke	Daniels	GK	England	33	90	195	1925
186488	Li Shuai	Shuai	Li	GK	China PR	38	88	193	110955
186751		Bobby	Grant	CM	England	31	76	180	112260
187275	Hong Jung Nam	Jung Nam	Hong	GK	Korea Republic	33	84	186	1477
187796		Kristian	Dennis	ST	England	31	75	180	1937
188272	Magno Novaes	Magno Macedo	Novaes	GK	Brazil	38	85	183	113948
188818		Louis Clément	Ngwat Mahop	CM	Cameroon	33	78	183	15009
189163		Alex	MacDonald	CM	Scotland	31	72	170	1940
190169		Dennis	Telgenkamp	GK	Holland	34	103	192	100628
190504		Hope	Akpan	CM	Nigeria	29	81	183	1804
190568		Baggio	Hušidić	CM	Bosnia and Herzegovina	34	78	185	697
191437		Ali	Al Mazaidi	GK	Saudi Arabia	35	86	190	112390
192191		Markus	Gustafsson	CM	Sweden	32	72	182	111705
192738		Matthieu	Sans	CB	France	33	86	191	1813
193357		Lee	Hodson	RB	Northern Ireland	29	71	174	100805
193931		Troy	Brown	CB	Wales	30	77	185	143
196353		Chris	Hussey	LB	England	32	65	178	1936
197527		Panajotis	Dimitriadis	CM	Sweden	35	78	182	433
197990		George	Francomb	RM	England	29	73	181	110890
198497		Mark	Connolly	CB	Republic of Ireland	29	77	185	110890
198841	Jonathan De Amo	Jonathan	De Amo Pérez	CB	Spain	31	81	190	112505
199491	Fran García	Francisco	García Solsona	LB	Spain	28	65	175	1854
199812		Ryan	Allsop	GK	England	29	80	189	1933
234910		Vahid	Selimović	CB	Luxembourg	24	79	190	68
235301		Patrick	Schmidt	ST	Austria	23	73	179	111821
235702		Lorenzo	Del Pinto	CM	Italy	31	78	180	112026
236279		Ibrahima	Conté	CB	Guinea	25	82	191	1813
236458		Achilléas	Poúngouras	CB	Greece	25	77	183	1884
236573	Pablo Vázquez	Pablo	Vázquez Pérez	CB	Spain	26	82	185	110832
236772		Dominik	Szoboszlai	CAM	Hungary	20	70	185	191
237055		Oleksandr	Zubkov	CAM	Ukraine	25	78	182	101059
237141		Azmahar	Ariano	CB	Panama	30	75	175	112527
237498		Tony	Figueroa	LW	Mexico	22	55	172	110147
237679		Randal	Kolo-Muani	ST	France	22	73	187	71
238018		Delano	van Crooij	GK	Holland	30	75	185	100651
238344	Pablo Fernández	Pablo	Fernández Blanco	ST	Spain	24	85	192	459
238570	Song Bum Keun	Bum Keun	Song	GK	Korea Republic	23	88	194	1477
238680		Shqiprim	Binakaj	RM	Albania	32	72	178	111379
238831		Jeff-Denis	Fehr	LM	Germany	26	70	176	111379
238877	Bastos	Ángel	Bastos Teijeira	RB	Spain	29	70	170	110854
238978		Felix	Schiller	CB	Germany	31	80	190	487
239189		Davor	Lovren	RM	Croatia	22	70	172	110636
239365		Adrian	Petre	ST	Romania	23	78	188	1445
239412		Giuseppe	Loiacono	CB	Italy	29	77	182	110911
239551		Pedro	Arce	CAM	Mexico	29	68	175	1879
239920	Bruno Silva	Bruno	da Silva Fonseca	LB	Brazil	28	73	180	1900
239962		Ivan	Jukić	LM	Croatia	25	69	176	111083
240172	Edu Cortina	Eduardo	Cortina García	CM	Spain	24	64	174	110827
240415	André Sousa	André	Martins de Sousa	LB	Portugal	23	67	174	665
240510		Joshua	Bohui	ST	England	22	75	175	11
240662		Franco	Torgnascioli	GK	Uruguay	30	78	188	112584
241139		Benjamin	Hansen	CB	Denmark	27	73	190	1788
241238		Jessy	Deminguet	CM	France	23	74	178	210
241585	Igor	Igor Julio	dos Santos de Paulo	CB	Brazil	23	84	185	256
241924		Wilhelm	Vorsager	CDM	Austria	24	78	189	111821
242075		Josh	Sargent	ST	United States	21	79	180	38
242383		Simon	Lorenz	CB	Germany	24	85	186	33
242608		Yuzuru	Shimada	CDM	Japan	30	76	176	112448
242915		Mateusz	Cholewiak	LB	Poland	31	73	184	111092
243138		Camilo	Saldaña	LB	Chile	22	70	175	111328
243707	Brandão	Washington	Brandão Dos Santos	ST	Brazil	30	77	183	111660
244250		Prince Osei	Owusu	ST	Germany	24	87	190	159
244706		Kevin	Behrens	ST	Germany	30	80	184	110178
244753		Jules	Keita	LW	Guinea	23	56	168	110569
50484383		Michael	Doyle	CDM	Republic of Ireland	40	71	178	1937
50495504		Chris	Dagnall	ST	England	35	75	173	15048
50515593		Fredrik	Brustad	RW	Norway	32	87	190	184
50526647		Gregg	Wylde	LM	Scotland	30	72	175	621
50530662		David	McMillan	ST	Republic of Ireland	32	77	180	184
50533943	Park Gi Dong	Gi Dong	Park	ST	Korea Republic	32	83	191	111588
50536031		Barry	McNamee	CAM	Republic of Ireland	29	78	181	445
50538206		Jordan	Roberts	ST	England	27	71	181	149
50541123		John	O'Sullivan	RM	Republic of Ireland	27	83	181	180
50542359		Brian	Rowe	GK	United States	32	84	185	112606
50544964	Lee Kwang Sun	Kwang Sun	Lee	ST	Korea Republic	31	89	192	1478
50546986		Kevin	Rendón	CM	Colombia	28	74	182	111723
50552324		Vegard	Bergan	CB	Norway	26	85	193	918
50555564		Alex	Jones	ST	England	26	73	185	1944
50556749		Mattia	Vitale	CM	Italy	23	76	183	112409
50560286		Ben	Stevenson	CM	England	24	67	182	1935
50561391		Alessandro	Deiola	CM	Italy	26	85	189	1842
50562955		Morgan	Poaty	LB	France	24	73	177	294
50563784		Fernand	Mayembo	CB	Congo DR	25	88	184	1738
50564500		Takuji	Yonemoto	CM	Japan	30	70	177	112092
50566352		Michał	Marcjanik	CB	Poland	26	83	186	112409
50568808		Ro-Shaun	Williams	CB	England	22	75	184	127
50570971		Dennis	Eckert	ST	Germany	24	79	181	1971
50572111		Mohammed	Al Majhad	CDM	Saudi Arabia	25	75	176	112390
177645	Agus	Agustín	García Íñiguez	CB	Spain	36	86	186	1445
179778		Brad	Evans	CB	United States	36	77	185	696
181377		Emir	Bajrami	RM	Sweden	33	77	178	700
181964	Zhu Ting	Ting	Zhu	RB	China PR	36	78	181	112378
182374	Du Zhenyu	Zhenyu	Du	LW	China PR	38	70	175	111769
183643		Lukas	Königshofer	GK	Austria	32	89	193	172
183789		Mark	Howard	GK	England	34	76	183	1926
184352		James	Bailey	CM	England	32	79	183	346
185118		Matko	Perdijić	GK	Croatia	39	94	195	111089
186590		John-Joe	O'Toole	CAM	Republic of Ireland	32	82	188	1930
187144	Cho Soo Hyuk	Soo Hyuk	Cho	GK	Korea Republic	34	76	188	1473
187455	Ko Seul Ki	Seul Ki	Ko	CDM	Korea Republic	35	79	183	110765
187857		Grzegorz	Sandomierski	GK	Poland	31	86	196	110745
188789		Paul	Taylor	CAM	England	33	71	170	142
189159		Luke	Waterfall	CB	England	31	84	188	127
189808		Paddy	Madden	ST	Republic of Ireland	31	76	183	112260
190239		Jordan	Bowery	ST	England	30	76	185	121
190529		Mateusz	Cetnarski	CAM	Poland	33	71	175	110747
190822		Eirik Holmen	Johansen	GK	Norway	29	84	201	1757
192020		Carlos	Orrantía	RB	Mexico	30	63	176	110144
192479		Ben	Reeves	CAM	Northern Ireland	29	67	172	89
193268		Alberto	Gerbo	RM	Italy	31	70	177	110911
193804		Matt	Tootle	RB	England	30	77	173	1937
195481		Jamie	Proctor	ST	England	29	78	188	1797
197164		Luis	Gil	CM	United States	27	70	177	698
197945		Ryan	Bowman	ST	England	29	83	185	83
198034		Marius	Amundsen	CB	Norway	28	80	185	299
199014		David	McMillan	ST	Republic of Ireland	32	77	180	100804
199475		Willi	Evseev	CAM	Kazakhstan	29	71	177	27
199684		Piotr	Malarczyk	CB	Poland	30	80	189	111083
234904		Rubin	Seigers	CB	Belgium	23	83	189	673
235095		Enrique	Serje	CDM	Colombia	25	72	178	101101
235432		Marshall	Munetsi	CB	Zimbabwe	25	83	188	110930
236015		Morgan	Gibbs-White	CM	England	21	70	178	110
236364		Dylan	Watts	CAM	Republic of Ireland	24	68	178	306
236535		Ahmed	Touba	LB	Belgium	23	81	184	231
236710		Tristan	Nydam	CM	England	21	60	170	100804
236988		Edward	Nketiah	ST	England	22	70	178	1
237079		Paschalis	Staikos	CDM	Greece	25	75	178	1884
237351		Oscar	Pehrsson	CB	Sweden	33	81	192	113458
237665		Kei	Chinen	CF	Japan	26	71	177	111730
237848		Edgar	Zaldívar	CM	Mexico	24	72	175	101114
238210		Bendik	Bye	ST	Norway	31	83	186	113459
238631		Luca	Schnellbacher	ST	Germany	27	76	180	550
238752		Felix	Weber	CB	Germany	26	82	185	33
238863	Marcel	Marcel	Alves Pereira	CDM	Brazil	28	79	187	10031
238964		Josef	Welzmüller	CB	Germany	31	75	188	172
239066	Víctor Mena	Víctor	Mena Coto	LB	Spain	26	73	176	1867
239206		Vernon	De Marco	CB	Argentina	28	73	182	873
239363		Kouadio-Yves	Dabila	CB	Côte d'Ivoire	24	72	183	65
239416		Roberto	Floriano	LW	Italy	34	67	171	110911
239502		William	Bianda	CB	France	21	82	185	52
239928		Tobias	Müller	CB	Germany	27	79	188	110588
239948		Salvador	Reyes	LW	Mexico	23	71	175	1028
240024		Julien	Serrano	LB	France	23	65	181	69
240223		Mihailo	Ristić	LB	Serbia	25	73	183	267
240371		Adam	Jakubech	GK	Slovakia	24	85	188	65
240465	Roger Figueras	Roger	Figueras Ballart	CB	Spain	24	74	180	15019
240513		Ethan	Hamilton	CM	Scotland	22	75	183	11
240680		Amir	Absalem	LB	Holland	24	70	175	1915
241187		Lutsharel	Geertruida	CB	Holland	21	74	185	246
241470	Álex Centelles	Alejandro	Centelles Plaza	LB	Spain	21	67	186	461
241861		Nathaniel	Atkinson	RB	Australia	22	72	181	112224
241941		Stanley	Nsoki	CB	France	22	78	185	73
242314		Salif	Camara Jönsson	ST	Sweden	37	87	190	703
242450		Yonathan	Andia	CM	Chile	29	71	175	112535
242716		Corey	Baird	ST	United States	25	73	178	111065
243023		Vladimir	Screciu	CDM	Romania	21	73	170	673
243675		Kjell	Scherpen	GK	Holland	21	85	202	100628
243867		Ousmane	Kanté	CB	France	31	83	185	111817
244272		Dino	Perić	CB	Croatia	27	84	197	211
244750		Zvonimir	Kozulj	CM	Bosnia and Herzegovina	27	76	180	110746
245538		Kyogo	Furuhashi	LW	Japan	26	63	170	101146
50489536		Quentin	Westberg	GK	United States	35	73	183	111651
50514597	Wang Shouting	Shouting	Wang	CDM	China PR	35	82	186	110955
50519444		Kristian	Dennis	ST	England	31	75	180	92
50528812		Luis	Gil	CM	United States	27	70	177	110150
50532548		Sean	Murray	CM	Republic of Ireland	27	68	175	837
50534885	Yu Sang Hun	Sang Hun	Yu	GK	Korea Republic	32	84	194	982
50537623		Jakub	Bartkowski	RB	Poland	29	74	182	110746
50540197		Andy	Rose	CM	Australia	31	78	189	101112
50541533		Mitchell	Duke	LM	Australia	30	84	186	112427
50544292		Alexander	Blomqvist	CB	Sweden	27	79	185	1596
50546571		Mohammed	Qasem	LB	Saudi Arabia	26	77	176	113057
50551671		Abdullah Haif	Al Shammari	CB	Saudi Arabia	27	60	188	112408
50552994		Martin	Samuelsen	RM	Norway	24	72	189	1463
50555604		Rosario	Cota	LM	Mexico	25	70	180	1878
50559168		Tobias	Salquist	CB	Denmark	26	82	190	299
50560442		Majed	Al Najrani	RM	Saudi Arabia	28	65	175	112096
50562643		Sidy	Sarr	CM	Senegal	25	86	196	217
50563146		Douglas	Bergqvist	CB	Sweden	28	87	185	1463
50564063		Shota	Kobayashi	RM	Japan	30	71	174	113161
50564861		Viktor	Tranberg	CB	Denmark	24	76	190	1788
50567609	Imanol García	Imanol	García Lugea	CM	Spain	25	73	182	15019
50570525	Bastos	Ángel	Bastos Teijeira	RB	Spain	29	70	170	469
177672		David	Da Costa	GK	Switzerland	35	79	187	10032
180284	Kim Dong Suk	Dong Suk	Kim	CM	Korea Republic	34	68	174	110765
181452		Oumar	Sissoko	GK	Mali	33	84	187	1738
182003		Erik	Dahlin	GK	Sweden	32	85	186	319
182427	Yang Xu	Xu	Yang	ST	China PR	34	80	188	112983
184175		Jason	Bourdouxhe	LB	Belgium	30	68	173	100628
184615		Stephen	McGinn	CM	Scotland	32	80	180	100805
186475	Lu Lin	Lin	Lu	LM	China PR	36	68	168	112429
186753		Nikola	Gulan	LB	Serbia	32	76	185	111560
187345	Cho Dong Gun	Dong Gun	Cho	ST	Korea Republic	35	75	180	113160
187761		Eoin	Doyle	ST	Republic of Ireland	33	73	182	1804
188772		Philippe	Koch	RB	Switzerland	30	76	180	898
188978		Marc	Pedersen	CB	Denmark	32	87	184	1447
189955		Ole	Söderberg	GK	Sweden	31	94	194	1439
190481		Mats	Solheim	LB	Norway	33	76	178	708
190556		Daniel	Powell	LM	England	30	84	187	1930
191106		David	Myrestam	CB	Sweden	34	79	181	1596
191730		Simen	Rafn	LB	Norway	29	70	172	299
192316		Gudmund Taksdal	Kongshavn	GK	Norway	30	90	189	418
193160		Nicolas	Belvito	ST	France	34	84	190	1805
193758		Benjamin	Pintol	ST	Bosnia and Herzegovina	31	84	188	110169
194431		Mikkel	Kirkeskov	LB	Denmark	29	80	185	111086
196316		Brice	Maubleu	GK	France	31	83	192	1805
197928		Jonathan	Bond	GK	England	28	84	193	109
198153		Jake	Taylor	RM	Wales	29	77	177	143
198622		Hallur	Hansson	ST	Faroe Islands	29	77	182	1446
199421		Christopher	Maboulou	ST	Congo	31	79	185	1823
199774		Johan	Bertilsson	CF	Sweden	33	68	177	705
234817		Stefan	Knežević	CB	Switzerland	24	81	187	897
235149		Jerdy	Schouten	CM	Holland	24	72	185	1971
235442		Siyabonga	Ngezana	CB	South Africa	24	77	185	110929
235961	Imanol García	Imanol	García Lugea	CM	Spain	25	73	182	479
236403		Evan	N'Dicka	CB	France	21	80	192	1824
236553		Elias	Huth	ST	Germany	24	78	185	29
236727	José Mena	José	Mena Rodríguez	CDM	Spain	23	64	175	481
237000		Reggie	Cannon	RB	United States	23	75	180	695
237160		Ro-Shaun	Williams	CB	England	22	75	184	11
237397		Brent	Kallman	CB	United States	30	86	188	111138
237623		Santiago	Roa	RB	Colombia	25	72	178	112527
237754		Tomoya	Inukai	CB	Japan	28	77	182	101147
238131		Henri	Weigelt	CB	Germany	23	75	189	1906
238627		Malaly	Dembélé	ST	France	24	75	184	1823
238743		Haji	Wright	ST	United States	23	80	193	34
238943		Matej	Palčič	RB	Slovenia	28	75	181	1873
238974		Tarek	Chahed	RW	Germany	25	72	184	110588
239159		André	Riel	ST	Denmark	31	73	182	271
239209		Michal	Faško	CDM	Slovakia	27	76	183	110500
239388		Franco	Bechtholdt	CDM	Argentina	27	74	178	112655
239478		Ivan	Marconi	CB	Italy	31	80	183	111434
239908		Yannick	Thermann	RB	Germany	27	68	172	111379
239944		Robert Thomas	Taylor	RM	Finland	26	80	183	418
240002		Felix	Herzenbruch	LB	Germany	28	76	184	10030
240050		Souleymane	Karamoko	RB	France	29	65	170	111817
240256		Martin	Kavdanski	CB	Bulgaria	34	72	187	1815
240446		Curtis	Tilt	CB	England	30	75	192	1926
240511		Indy	Boonen	LW	Belgium	22	64	177	682
240677		Martin S	Ellingsen	CM	Norway	26	75	180	417
241171		Armando	Obispo	CB	Holland	22	79	185	247
241505		Thomas	Carrique	RB	France	22	65	170	59
241741		Anas	Ouahim	CAM	Morocco	23	68	175	487
242041		Mohamed	Dräger	RM	Tunisia	25	74	180	10030
242219		Ryutaro	Iio	RM	Japan	30	69	174	112448
242451		Josue	Colman	CAM	Paraguay	23	71	168	112606
242684		Handwalla	Bwana	LM	Kenya	22	66	175	111144
243118		Gouné	Niangadou	CM	Mali	23	67	180	230
243676		Gersom	Klok	RB	Holland	30	78	175	100628
243749		Streli	Mamba	ST	Germany	27	75	177	162
244350		Julio	Donisa	ST	France	27	76	184	111273
244751		Senou	Coulibaly	CB	France	26	79	193	110569
245480	Dyjan Azevedo	Dyjan Carlos	De Azevedo	LW	Brazil	30	65	169	111817
50488352		Tobias	Eriksson	RM	Sweden	36	70	178	1596
50513169		Sam	Saunders	CM	England	37	70	173	1935
50519142		Hibert	Ruíz	CM	Mexico	34	77	179	101121
50529578		Josh	Parker	ST	Antigua and Barbuda	30	76	180	89
50532474		Mauro	Quiroga	ST	Argentina	31	87	191	111019
50535297		Alessandro	Bruno	CM	Italy	38	70	180	200
50537133		Adam	Henley	RB	Wales	27	78	178	1804
50538304		Matías	Campos	LB	Chile	32	76	178	15029
50542015		Jordan	Tillson	CM	England	28	67	183	1936
50544330		Bryn	Morris	CM	England	25	71	182	127
50545933		Manuel	Bravo	LB	Chile	28	72	173	112531
50548378		Stian Rode	Gregersen	CB	Norway	26	83	191	700
50553003		Nathan	Thomas	LM	England	26	80	178	1794
50555949		Karol	Świderski	ST	Poland	24	74	184	393
50558385		Jeison	Palacios	CB	Colombia	27	74	185	112579
50561113		Sebastián	Leyton	CM	Chile	28	68	177	112535
50562482		Alexis	Peña	CB	Mexico	25	77	188	101121
50563160		Lloyd	Kelly	LB	England	22	70	191	1943
50564225		Ryosuke	Yamanaka	LB	Japan	28	65	171	111575
50565216	Lee Sang Heon	Sang Heon	Lee	CF	Korea Republic	23	67	178	1473
50567080		Marshall	Munetsi	CB	Zimbabwe	25	83	188	379
50569713		Kevin	Lankford	RM	Germany	22	81	186	110329
50571871		Mihailo	Ristić	LB	Serbia	25	73	183	70
50573867		Ryutaro	Iio	RM	Japan	30	69	174	112836
67318539		Janoi	Donacien	RB	St. Lucia	27	75	183	110313
67340404		Scott	Wharton	CB	England	23	81	192	1945
199916		Tom	Eastman	CB	England	29	88	191	1935
177679		David	Vržogić	LB	Germany	31	68	180	110597
180440		Adam	Danch	CB	Poland	33	77	180	111082
181848	Zhou Haibin	Haibin	Zhou	CDM	China PR	36	72	182	111724
182398	Chen Lei	Lei	Chen	RB	China PR	35	80	182	112165
182949	Wang Shouting	Shouting	Wang	CDM	China PR	35	82	186	111769
183993		Erik	Israelsson	CAM	Sweden	32	73	181	920
184901	Shin Kwang Hoon	Kwang Hoon	Shin	RB	Korea Republic	34	77	178	982
186228	Wang Song	Song	Wang	CAM	China PR	37	74	178	112162
186869		Graham	Cummins	ST	Republic of Ireland	33	75	178	422
187494		Hibert	Ruíz	CM	Mexico	34	77	179	110145
188346		Ole	Kittner	CB	Germany	33	83	189	531
188872		Alexander	Bittroff	RB	Germany	32	80	186	167
189718		Agil	Etemadi	GK	Iran	34	78	184	635
190201		Mattia	Minesso	CAM	Italy	31	70	173	110912
190518		Flamur	Kastrati	ST	Kosovo	29	77	180	113459
190682		Yaser	Kasim	CM	Iraq	30	73	181	1930
191915	Lim Jong Eun	Jong Eun	Lim	CB	Korea Republic	31	88	192	1473
192566		Manuel	Janzer	LM	Germany	29	77	178	576
193754		Kai	Schwertfeger	CDM	Germany	32	78	188	167
194999		Gregg	Wylde	LM	Scotland	30	72	175	1929
197079		Jonas	Acquistapace	CB	Germany	32	81	190	110592
197907		Miguel Angel	Sansores	ST	Mexico	30	73	174	1028
198011		Tom	Eaves	ST	England	29	86	193	1802
198604		Joakim Våge	Nilsen	CM	Norway	30	73	177	1463
198692		Dean	Parrett	CM	England	29	73	178	1802
199627		Harry	Pell	CM	England	29	85	193	1935
199787		Tanju	Öztürk	CDM	Germany	32	87	191	167
235026		Omar	Richards	LB	England	22	69	171	1793
235156		Jimmy	Dunne	CB	Republic of Ireland	23	75	183	80
235496		Oliver	Rathbone	CM	England	24	76	176	1955
236308		Riccardo	Marchizza	LB	Italy	23	80	187	110734
236462		Lassana	Faye	LB	Holland	23	79	170	1909
236695	Luis Muñoz	José Luis	Muñoz León	CB	Spain	24	75	181	1867
236937		Aleksander	Melgalvis	RM	Norway	31	73	178	299
237253		Abu	Danladi	ST	Ghana	25	77	178	111138
237409		Yusuke	Segawa	LM	Japan	27	67	170	101145
237764		Ryo	Takeuchi	CM	Japan	30	66	173	101149
238089	Lee You Hyeon	You Hyeon	Lee	RM	Korea Republic	24	72	179	1475
238591		Alexander	Langlitz	RB	Germany	30	84	181	110700
238734		Tom	Müller	GK	Germany	23	80	190	110482
238929		Martin	Wagner	CAM	Germany	34	71	168	110597
238965		Orestis	Kiomourtzoglou	CDM	Germany	23	75	188	172
239121		Hamadi	Al Ghaddioui	ST	Morocco	30	92	190	543
239258		Emmanuel	Banda	CAM	Zambia	23	73	177	682
239394		Florian	Flecker	RM	Austria	25	70	173	2017
239492		Sebastian	Bösel	CM	Germany	26	66	180	111379
239592		José Juan	Macías	ST	Mexico	21	73	177	1880
239997	Raul Asencio	Raul Josè	Asencio Moraes	ST	Spain	23	78	187	112026
240097		Flynn	Downes	CM	England	22	70	172	94
240241		Bastien	Toma	CM	Switzerland	22	64	172	110770
240453		Sikou	Niakaté	CB	Mali	22	76	182	110456
240546		Saith	Sakala	LM	Zambia	25	62	176	112390
240959	Steven Prieto	Steven Nicanor	Prieto Morales	ST	Spain	24	74	180	110827
241266		Willem	Geubbels	ST	France	19	72	185	69
241607		Tomás	Belmonte	CM	Argentina	23	66	175	110395
241911		Daniel	Kvande	CB	Norway	26	78	189	112200
242121		Ryota	Takasugi	CB	Japan	37	71	182	112448
242351		Theeratorn	Bunmathan	LB	Thailand	31	64	172	101146
242595		Sergey	Eremenko	CM	Finland	22	82	182	100767
242739		Luis	Argudo	LM	United States	25	61	173	687
243275		Lars Lukas	Mai	CB	Germany	21	88	190	21
243746		Maximilian	Zimmer	CAM	Germany	29	72	175	162
243946		Ante	Erceg	ST	Croatia	31	76	180	269
244509		Dennis	Jastrzembski	CAM	Germany	21	77	176	166
245279	Reguilón	Sergio	Reguilón Rodríguez	LB	Spain	24	67	180	243
245623		Kosuke	Shirai	LM	Japan	27	63	165	112444
50501581		Scott	Laird	LB	England	33	83	183	1803
50516549	Shin Kwang Hoon	Kwang Hoon	Shin	RB	Korea Republic	34	77	178	112115
50524214		Manuel	Janzer	LM	Germany	29	77	178	110500
50530879	Kim Tae Hwan	Tae Hwan	Kim	RB	Korea Republic	32	72	180	1473
50533569		Nicky	Ajose	ST	England	29	78	173	1940
50536150		Matt	Ingram	GK	England	27	82	190	1952
50538301		Brad	Potts	RM	England	27	81	188	1801
50540640		Saleh Saad	Al Qumayzi	RB	Saudi Arabia	29	65	180	112096
50543184		Mark	O'Hara	CM	Scotland	25	72	183	149
50545017		Kwame	Yeboah	LM	Australia	27	74	182	112427
50548126		Jonathan	Mitchell	GK	England	26	86	182	91
50551788		Frankie	Kent	CB	England	25	76	188	1938
50555400		Marlon	Torres	CB	Colombia	25	75	182	101099
50557316		Karlan	Grant	ST	England	23	70	183	1939
50560023		Matías	Vera	CDM	Argentina	25	69	170	698
50561390		Harun	Alpsoy	CDM	Switzerland	24	78	185	741
50562757		Aly	Ndom	CDM	France	25	80	188	210
50563665		Tony	Alfaro	CB	Mexico	28	86	188	1880
50564402		Thomas Olivier	Amang	ST	Cameroon	23	78	174	113459
50565532		Charles	Pickel	CDM	Switzerland	24	76	185	435
50568358		Tristan	Nydam	CM	England	21	60	170	94
50570404		Jørgen Strand	Larsen	ST	Norway	21	79	193	112199
50570906		Emmanuel	Banda	CAM	Zambia	23	73	177	113948
50572161		Ethan	Hamilton	CM	Scotland	22	75	183	1955
50574385		Elías	Aguilar	CM	Costa Rica	29	73	174	1478
67321546		Bryn	Morris	CM	England	25	71	182	1790
84130330		Prince Osei	Owusu	ST	Germany	24	87	190	33
200676	Feng Renliang	Renliang	Feng	RW	China PR	33	68	181	112537
200955		Aykut	Özer	GK	Turkey	28	80	189	634
202193		Ninos	Gouriye	RM	Holland	30	80	175	111660
50571698		Souleymane	Karamoko	RB	France	29	65	170	1823
50572992	Yang Liyu	Liyu	Yang	RM	China PR	24	65	179	111839
67322180	Lee Kwang Sun	Kwang Sun	Lee	ST	Korea Republic	31	89	192	111588
84098062		Nico	Neidhart	LB	Germany	26	68	177	100628
200210		Antoni	Sarcevic	CM	England	29	71	183	1929
200871		Matthieu	Fontaine	CB	France	34	84	186	111273
201467		Brian	Gartland	CB	Republic of Ireland	34	85	188	837
202321	Gerard Oliva	Gerard	Oliva Gorgori	ST	Spain	31	85	190	110747
202693		Matt	Crooks	CM	England	27	72	192	1930
203095		Sean	Gannon	RB	Republic of Ireland	30	67	183	837
203649		Alessandro	Bruno	CM	Italy	38	70	180	1844
204175		Jeron	Al-Hazaimeh	LB	Germany	29	78	194	110700
204420		Janek	Sternberg	LB	Germany	28	77	182	29
204773		Mehdi	Jeannin	GK	Algeria	30	81	187	1815
205153		Adama	Guira	CM	Burkina Faso	33	75	185	271
205961	Alex Rodríguez	Alejandro	Rodríguez Gorrín	CM	Spain	28	78	184	83
206263		Tom	Hopper	ST	England	27	76	186	1954
206629		Andrew	Wenger	RW	United States	30	84	183	698
207510		Tadanari	Lee	CF	Japan	35	73	182	111575
207824		Thibaut	Vion	ST	France	27	81	185	1813
208111		Simon	Sandberg	RB	Sweden	27	77	186	708
208477		Jovan	Vidović	CB	Slovenia	32	88	197	110597
208992		Saleh Saad	Al Qumayzi	RB	Saudi Arabia	29	65	180	111674
209256		Tom	Anderson	CB	England	27	83	193	142
209565		Mohammed	Al Fehaid	CDM	Saudi Arabia	31	74	178	112390
210026		Carlos	Calvo	CB	Mexico	28	87	195	1882
210158		Andy	Kellett	CAM	England	27	70	173	1937
210428		Pavol	Bajza	GK	Slovakia	29	89	195	822
210640		Søren	Henriksen	CB	Denmark	29	79	185	111660
210824		Fabien	Tchenkoua	LM	Cameroon	28	74	172	110591
211053		Lucas	Hägg-Johansson	GK	Sweden	27	79	189	1439
211893		Markus	Schwabl	CDM	Germany	30	71	182	172
211991		Michael	Vitzthum	LB	Germany	29	78	185	111379
212398		Karol	Angielski	ST	Poland	25	70	177	1569
212682		Bryn	Morris	CM	England	25	71	182	1933
212971		Nouh	Al Mousa	CDM	Saudi Arabia	30	70	175	112387
213204		Sam	Lundholm	LM	Sweden	27	75	180	113458
213334		Karim	Coulibaly	LW	France	28	80	184	1907
213823		Cristián	Rojas	CB	Chile	35	74	174	112533
214147		Janeiler	Rivas	CB	Colombia	33	93	194	101105
214321		Gerson	Martínez	ST	Chile	32	74	178	112668
214777		Leandro	Díaz	ST	Argentina	29	78	182	111708
214923		Mohammed	Qasem	LB	Saudi Arabia	26	77	176	607
215431		Okan	Kurt	CM	Turkey	26	65	174	110169
215657		Mads	Lauritsen	CB	Denmark	28	75	188	822
216317		Daniel	Geissler	CAM	Austria	27	71	171	2017
216744		Cameron	Burgess	CB	Australia	25	81	194	1949
217160	Peng Xinli	Xinli	Peng	CM	China PR	30	62	176	112165
219259		Reece	Brown	CAM	England	25	78	175	561
219577		Andrea	Ingegneri	CB	Italy	29	78	184	1843
219956		Pietro	Ceccaroni	CB	Italy	25	76	188	110912
220421		Hassane	Kamara	LM	France	27	67	168	379
220833		Anthony	Mandrea	GK	France	24	78	186	1530
221397	Dani Molina	Daniel	Molina Orta	CDM	Spain	25	72	183	450
221763	Kim Shin	Shin	Kim	ST	Korea Republic	26	73	180	111588
222246		Richie	Marquez	CB	United States	29	84	188	112134
222405		Liam	Kinsella	RB	Republic of Ireland	25	75	175	1803
222519		Alexander	Stølås	LB	Norway	32	75	182	1463
222838		Bashkim	Renneke	RB	Germany	28	73	176	487
223653		Claudio	Jopia	LB	Chile	29	75	174	111327
223727		Craig	MacGillivray	GK	England	28	78	188	1790
223925		Alexander	Brunst	GK	Germany	26	88	195	110588
224062		Patryk	Dziczek	CDM	Poland	23	70	179	111086
224130		Josh	Vickers	GK	England	25	72	193	149
224302		Mateusz	Wieteska	CB	Poland	24	77	187	1871
224445		Gladwin	Shitolo	CDM	South Africa	31	75	179	110930
224690	Li Ang	Ang	Li	CB	China PR	27	88	188	112162
225036		Ricardo	Steer	ST	Colombia	39	79	183	101106
225327		Lorenzo	Gonnelli	CB	Italy	28	72	183	1844
225946		Ollie	Shenton	CM	England	23	77	175	1806
226268		Federico	Dimarco	LB	Italy	23	75	175	50
226580		Sebastian	Saucedo	LW	United States	24	66	170	111065
226737		Jeison	Palacios	CB	Colombia	27	74	185	112992
227612	Kim Sung Ju	Sung Ju	Kim	CM	Korea Republic	30	72	179	1478
227835		Tesfaldet	Tekie	CM	Sweden	24	59	175	113173
228111		Ronan	Curtis	LM	Republic of Ireland	25	77	182	1790
228238		Jostein	Gundersen	CB	Norway	25	82	186	418
228593		Vincent	Sierro	CM	Switzerland	25	75	185	898
228638		Ben	Stevenson	CM	England	24	67	182	110
228794		Majed	Al Najrani	RM	Saudi Arabia	28	65	175	113057
229174		David	Niepsuj	RB	Poland	25	76	183	110746
229349		Jordan	Thorniley	CB	England	24	64	181	1807
229599		Kohei	Kato	CDM	Japan	32	70	173	113160
229727		Jean-Pierre	Rhyner	CB	Switzerland	25	75	185	322
230145		Alessandro	Piu	LW	Italy	25	77	186	112409
230834		Alexis	Peña	CB	Mexico	25	77	188	110147
231050		Jaime	Báez	LW	Uruguay	26	74	178	112168
231307		Morgan	Poaty	LB	France	24	73	177	70
231540		Scott	Wharton	CB	England	23	81	192	149
232017		Tony	Alfaro	CB	Mexico	28	86	188	111144
232415		Shota	Kobayashi	RM	Japan	30	71	174	112836
232479		Takuma	Nishimura	CF	Japan	24	72	178	112836
232733		Akito	Fukuta	CM	Japan	29	65	170	113160
232901		Mukhtar	Ali	CDM	Saudi Arabia	23	75	185	1909
232963		Takeshi	Kanamori	ST	Japan	27	74	171	101147
233216		Phillip	Tietz	ST	Germany	24	81	190	110591
233506		Asahi	Masuyama	RW	Japan	24	72	173	101146
50573999		Theeratorn	Bunmathan	LB	Thailand	31	64	172	101151
67325342		Jonathan	Mitchell	GK	England	26	86	182	127
67344020		Jimmy	Dunne	CB	Republic of Ireland	23	75	183	106
200525		Sam	Walker	GK	England	29	78	198	1793
200826		Mauro	Quiroga	ST	Argentina	31	87	191	112655
201901		Carl	Winchester	CM	Northern Ireland	28	77	183	561
202295	Park Gi Dong	Gi Dong	Park	ST	Korea Republic	32	83	191	983
202551		Pål Erik	Ulvestad	CDM	Norway	30	85	194	113459
203210		Yann	Songo'o	CB	Cameroon	29	77	185	1929
203851		Daniel	Drescher	CB	Austria	31	85	190	112075
204165		Sebastian	Schiek	LB	Germany	31	75	183	110169
204502		Matt	Ingram	GK	England	27	82	190	15
204785		Mikael	Mandron	ST	France	26	82	191	1935
205593		Michael	Chacón	CM	Holland	27	72	175	100628
206142		Timothée	Dieng	CDM	France	29	79	189	1954
206555		Christy	Pym	GK	England	26	70	182	143
206656		Matías	Campos	LB	Chile	32	76	178	101097
207675		Calum	Mallace	CDM	Scotland	31	85	183	112996
207833	Leonardo	Leonardo	Navacchio	GK	Brazil	28	77	189	10031
208417	Bae Il Hwan	Il Hwan	Bae	CAM	Korea Republic	33	75	180	1478
208852		Kieron	Morris	LM	England	27	71	178	1803
209193		Patrick	Wiegers	GK	Germany	31	86	186	503
209493		Donervon	Daniels	CB	Montserrat	27	91	185	1926
209954		Björn	Jopek	CM	Germany	27	77	183	110482
210368		Jack	Duncan	GK	Australia	28	82	188	112391
210502		Manuel	Kuttin	GK	Austria	27	94	194	111821
210802		Joakim	Nilsson	CB	Sweden	27	78	183	700
211004	Han Kook Young	Kook Young	Han	CM	Korea Republic	31	73	183	112115
211900		Alexander	Winkler	CB	Germany	29	84	190	172
212237		Daniel	Wein	CDM	Germany	27	81	185	33
212430	Park Sun Ju	Sun Ju	Park	LB	Korea Republic	29	62	175	112115
212938		Brede Mathias	Moe	CB	Norway	29	80	184	918
213014		Frank	Adu Kwame	LB	Ghana	36	79	180	112505
213206		Brad	Stuver	GK	United States	30	81	191	112828
213626		Fernando	Hurtado	GK	Chile	38	90	188	112533
213901		Abdullah	Madu	CB	Saudi Arabia	28	86	186	112139
214041		Santiago	Londoño	GK	Colombia	26	70	184	112526
214345		David	Valencia	CB	Colombia	30	83	187	112579
214860		Patricio	Jerez	LB	Chile	36	66	167	112533
215066		Federico	Milo	LB	Argentina	29	75	180	111713
215434		Alexis	Busin	RW	France	25	65	175	1823
215684		Kevin	Mensah	ST	Denmark	30	72	171	269
216390		Oswal	Álvarez	ST	Colombia	26	78	178	112527
216746		Michał	Koj	LB	Poland	28	81	188	420
217585		Bas	Kuipers	LB	Holland	26	74	180	650
219413		Edwin	Velasco	LB	Colombia	29	78	179	101106
219551		Conor	Shaughnessy	CB	Republic of Ireland	25	74	191	8
219721		Agostino	Camigliano	CB	Italy	27	82	188	111993
220123		Formose	Mendy	CB	France	27	80	185	111273
220356		Amaar Ali	Al Dohaim	CB	Saudi Arabia	27	75	182	607
220665		Gregory	Wüthrich	CB	Switzerland	26	88	192	900
221346		Martin	Samuelsen	RW	Norway	24	72	189	100651
221622		Christian	Dean	CB	United States	28	90	191	693
221700	No Dong Geon	Dong Geon	No	GK	Korea Republic	29	88	192	983
222078		Bradford	Jamieson IV	ST	United States	24	75	191	697
222396		Dominic	Ball	CB	England	26	75	185	77
222463		Otis	Khan	CAM	England	24	71	175	1940
222583		Tom	James	RB	Wales	25	75	180	346
223186		Jens Jakob	Thomasen	CM	Denmark	25	67	177	272
223721		Daniel	Londoño	LB	Colombia	26	83	186	112526
223850		Luka	Zarandia	RM	Georgia	25	74	178	111082
223956		Rosario	Cota	LM	Mexico	25	70	180	1881
224090		Philipp	Müller	RM	Germany	26	74	175	531
224270		Bernd	Gschweidl	ST	Austria	25	73	178	111822
224375		Bálint	Vécsei	CM	Hungary	28	80	185	10032
224488		Furkan	Soyalp	CM	Turkey	26	73	175	742
224789		Giuseppe Marco	Zampano	RM	Italy	27	70	177	205
225146		Sessi	D'Almeida	CDM	Benin	25	71	178	346
225361		Luke	McGee	GK	England	25	83	193	1790
225668		Karlan	Grant	ST	England	23	70	183	89
226127		Clément	Deprès	ST	France	26	83	190	224
226540		Ferhad	Ayaz	LM	Sweden	26	73	180	113876
226716		Héctor	Mascorro	LM	Mexico	24	68	169	110781
227185		Karol	Danielak	RM	Poland	29	66	170	111082
227823		Gonzalo	Di Renzo	RW	Argentina	25	74	181	110395
227958		Imed	Louati	ST	Tunisia	27	80	192	822
228289		Thibault	Vialla	CAM	France	25	75	179	614
228616		Dimitry	Bertaud	GK	France	23	85	180	70
228690		Ali	Awaji	LM	Saudi Arabia	32	62	169	112387
229052		Ozan Evrim	Özenç	GK	Turkey	28	85	190	741
229251		Vasile	Mogos	RM	Romania	28	77	186	111434
229465		Sebastián	Leyton	CM	Chile	28	68	177	112584
229495		Chidiebere	Nwakali	CM	Nigeria	24	68	173	10
229655	Alberto Varo	Alberto	Varo Lara	GK	Spain	28	83	191	110831
229743		Alessandro	Deiola	CM	Italy	26	85	189	50
230717		Tinotenda	Kadewere	ST	Zimbabwe	25	72	183	1738
230995		Sidy	Sarr	CM	Senegal	25	86	196	212
231171		Naif Abdullah	Hazazi	CDM	Saudi Arabia	28	70	175	112391
231498		Douglas	Bergqvist	CB	Sweden	28	87	185	113173
231737		Nico	Karger	LM	Germany	28	79	183	33
232107		Eric	Oelschlägel	GK	Germany	25	85	193	22
232360		Gaëtan	Perrin	RW	France	25	63	169	112276
232456		Kazuki	Oiwa	CB	Japan	31	78	183	112836
232602	Kim Jungya	Jungya	Kim	CB	Korea Republic	33	74	183	112836
232852		Takuji	Yonemoto	CM	Japan	30	70	177	101150
233056		Daniel	Cleary	CB	Republic of Ireland	25	72	183	837
233386		Paolo	Yrizar	ST	Mexico	24	71	184	110150
200633		Rod	McDonald	CB	England	29	82	191	112259
200900		Sean	Murray	CM	Republic of Ireland	27	68	175	822
201986		Rédah	Atassi	CB	Morocco	30	81	184	113948
202570		Jimmy	Maurer	GK	United States	32	84	189	695
203237	Yu Sang Hun	Sang Hun	Yu	GK	Korea Republic	32	84	194	2055
203457		Mathias	Fetsch	ST	Germany	32	85	189	110482
204058		Matteo	Legittimo	LB	Italy	32	76	184	112168
204348		Joel	Allansson	CM	Sweden	28	69	175	1786
204722	Choi Jong Hoan	Jong Hoan	Choi	RB	Korea Republic	33	72	177	110765
205015		Jack	Grimmer	RB	Scotland	27	83	184	1800
205485		Adam	Henley	RB	Wales	27	78	178	111065
205975		Jakub	Bartkowski	RB	Poland	29	74	182	1873
206554		James	Bolton	RB	England	26	75	180	127
206558		Jordan	Roberts	LM	England	27	71	181	94
207563		Papa	Diouf	ST	Senegal	32	71	180	1439
207956		Pelly Ruddock	Mpanzu	CM	England	27	71	175	1923
208196		Miguel	Aceval	LB	Chile	38	88	184	112709
208764		Zlatan	Alomerović	GK	Serbia	30	85	187	111091
209071		Yasyn	Hamza	CB	Saudi Arabia	30	76	182	112390
209535		Gary	Warren	CB	England	36	75	184	346
210123		Pablo	González	CM	Mexico	29	70	174	110152
210367		Jordan	Tillson	CDM	England	28	67	183	143
210498		Faisal	Darwish	RB	Saudi Arabia	30	64	176	112408
210804		Mohammed	Salem	CB	Saudi Arabia	36	82	178	111674
210939		Paolo	Frascatore	LB	Italy	29	82	187	112409
211245		Marcin	Cebula	LM	Poland	25	65	177	111083
211982		Nico	Neidhart	LB	Germany	26	68	177	110700
212356		Yusuf	Otubanjo	ST	Nigeria	28	70	177	252
212628		Marian	Sarr	CB	Germany	26	83	189	550
212988		Adam	Deja	CDM	Poland	28	82	185	111082
213307		Dillon	Serna	LM	United States	27	63	170	694
213369		Kwame	Yeboah	LM	Australia	27	74	182	110169
213987		Elacio	Córdoba	RB	Colombia	27	72	175	112528
214172		Fabio	Castillo	LB	Colombia	31	70	174	112903
214372		Wilmer	Díaz	CB	Colombia	43	77	178	112903
214722		Felipe	Reynero	RW	Chile	32	75	177	112655
215338		Kevin	Rendón	CM	Colombia	28	74	182	112970
215459		Gaëtan	Karlen	ST	Switzerland	28	79	186	435
215604		Cédric	Brunner	RB	Switzerland	27	75	180	159
216322		Jordy	Hiwula	ST	England	26	76	178	1800
216501		Caleb	Stanko	CDM	United States	28	81	180	25
217502		Alexander	Kofler	GK	Austria	34	87	194	111822
218887		Olivier	Custodio	CM	Switzerland	26	76	179	897
219448		Michael	Heinloth	RB	Germany	29	75	177	111089
219661		Paweł	Jaroszyński	LB	Poland	26	77	184	192
219785		Tareiq	Holmes-Dennis	LB	England	25	73	177	1962
220637	Moi Delgado	Moisés	Delgado López	LB	Spain	27	60	173	462
220676		Vegard	Bergan	CB	Norway	26	85	193	1456
221302		Nelino	Tapia	LB	Colombia	30	60	172	112019
221580		Dairin	González	CB	Colombia	31	86	190	112992
221710		Jimmy	Ockford	CB	United States	29	83	185	111928
222080		Hansel	Zapata	RM	Colombia	26	77	182	112523
222435	Zhao Yuhao	Yuhao	Zhao	CDM	China PR	28	79	180	112978
222514		Freddie	Woodman	GK	England	24	83	188	13
223263		Ziggy	Gordon	RWB	Scotland	28	77	180	184
223678		Dennis	Slamar	CB	Germany	26	85	187	110591
223916		Alex	Jones	ST	England	26	73	185	1804
223962		Rodney	Kongolo	CDM	Holland	23	78	187	1913
224095		Nolan	Mbemba	CDM	France	26	77	182	379
224253		Devante	Parker	LW	Germany	25	66	175	169
224308		Oğuzhan	Aydoğan	CAM	Germany	24	67	175	327
224483		Mathias	Greve	RM	Denmark	26	77	188	272
224770		Scott	Kashket	RW	England	25	66	175	1933
225101		Mattia	Vitale	CM	Italy	23	76	183	112791
225191		Ben	Richards-Everton	CB	England	29	82	190	110313
225720		Glenn	Bijl	CDM	Holland	26	76	180	100628
226174		Desevio	Payne	RB	United States	25	70	182	1971
226576		Arley	Rodríguez	ST	Colombia	28	74	176	101104
226782		Romario	Williams	ST	Jamaica	26	77	180	112885
227668		Salvador	Ichazo	GK	Uruguay	29	83	188	54
227871		Jean Alassane	Mendy	ST	Senegal	31	78	180	180
228145		Fabián	Hormazábal	RW	Chile	25	71	172	112116
228357		Kévin	Soni	CAM	Cameroon	23	76	183	110062
228632		Marvin	Ajani	RM	Germany	27	83	187	110482
228828	Tarín	Rodrigo	Tarín Higón	CB	Spain	25	80	183	100888
229107		Nathan	De Medina	CB	Belgium	23	82	182	111560
229401		Niall	Mason	RB	England	24	78	180	142
229610		Robin	Becker	RB	Germany	24	79	182	110500
229657		Dino	Mikanović	RB	Croatia	27	72	174	271
229845		Jonathan	Sabbatini	CM	Uruguay	33	71	175	10032
230674		Fabrizio	Alastra	GK	Italy	23	79	185	1843
230983		Marco	Firenze	CAM	Italy	28	70	180	110734
231089		Ibrahima	Sissoko	CDM	France	23	88	193	76
231227		Niklas	Dorsch	CDM	Germany	23	72	178	111235
231512		Lloyd	Kelly	LB	England	22	70	191	1919
231754		Maecky Fred	Ngombo	ST	Belgium	26	82	191	1847
231864		Mitchell	van Bergen	RW	Holland	21	62	172	1909
232214		David	Lemos	ST	Colombia	26	72	175	101106
232454		Yasuhiro	Hiraoka	CB	Japan	35	70	183	112836
232731		Ryota	Hayasaka	RM	Japan	35	73	183	112444
232952		Yusuke	Kobayashi	CDM	Japan	26	60	172	113161
233213		Viktor	Tranberg	CB	Denmark	24	76	190	705
233403		Michael	López	CAM	Colombia	24	75	176	112526
233643		Samba	Camara	CB	France	28	85	190	1738
234148		Wolke	Janssens	ST	Belgium	26	70	185	680
234502		Kasper	Enghardt	CB	Denmark	29	83	186	1786
234653		Michael	Ambichl	CM	Austria	30	72	178	112075
234781	Martínez	José Antonio	Martínez Gil	CB	Spain	28	80	188	110832
200681	Lee Kyung Ryul	Kyung Ryul	Lee	CB	Korea Republic	33	81	186	1475
201219		Daniele	Giorico	CM	Italy	29	70	178	112409
201921		Nicky	Ajose	ST	England	29	78	173	89
202467		Jack	McBean	ST	United States	26	79	183	694
202728		Daniel	Bowles	CB	Australia	29	84	189	111395
203338		Ashtone	Morgan	LB	Canada	30	75	180	111651
203845		Lorenzo	Burnet	LB	Holland	30	65	170	1971
204152		Jens	Jønsson	CDM	Denmark	28	78	182	101033
204383		Barry	McNamee	CAM	Republic of Ireland	29	78	181	422
204783	Felipe	Felipe	Alfonso Criado	RB	Spain	28	66	175	100831
205554		Lukáš	Zima	GK	Czech Republic	27	82	194	1844
206313		Joseph	Lopy	CM	Senegal	29	68	181	112276
206653		Brad	Potts	CM	England	27	81	188	1932
207639		Callum	Reilly	CM	Republic of Ireland	27	78	185	1802
207836	Hwang Soon Min	Soon Min	Hwang	CM	Korea Republic	30	69	178	2056
208122		Viktor	Agardius	CB	Sweden	31	78	181	1439
208549		Andy	Rose	CM	Australia	31	78	189	83
209027		Ahmed Ali	Al Kassar	GK	Saudi Arabia	30	76	177	112389
209364		Corey	Brown	LB	Australia	27	69	174	111397
209644		Thomas	Vincensini	GK	France	27	79	184	110456
209885		Mitchell	Duke	RM	Australia	30	84	186	101149
210275		Stefan	Rakowitz	RM	Austria	31	66	172	2045
210490		Kristijan	Dobras	LM	Austria	28	75	173	15009
210711		Brian	Rowe	GK	United States	32	84	185	101112
210898		Abdullah	Al Fahad	CB	Saudi Arabia	27	73	176	112392
211883		Korbinian	Müller	GK	Germany	30	90	190	110329
211928		Dominic	Gape	CM	England	26	70	175	1933
212170		Mikkel	Desler	RB	Denmark	26	73	184	272
212468		Juan Miguel	Basulto	CB	Mexico	29	76	185	1880
212736		Bartosz	Kwiecień	CDM	Poland	27	80	186	110745
212990		Callum	Camps	CM	Northern Ireland	25	75	180	1955
213316	Lee Kwang Sun	Kwang Sun	Lee	ST	Korea Republic	31	89	192	2055
213815		Mikael	Uhre	ST	Denmark	26	89	188	269
214013		Jefferson	Murillo	LB	Colombia	29	69	171	110145
214285		Manuel	Bravo	LB	Chile	28	72	173	112668
214682		Joe	Wright	CB	Wales	26	82	193	142
214906		Andrew	Hughes	LB	Wales	29	81	190	1801
215368		Reinhold	Ranftl	RM	Austria	29	75	180	252
215522		Alexander	Schlager	GK	Austria	25	77	184	252
216134		Kristoffer	Pallesen	RB	Denmark	31	72	175	820
216730		Stian Rode	Gregersen	CB	Norway	26	83	191	417
217140		Alex	Gilliead	RM	England	25	70	183	127
218212		Andries	Noppert	GK	Holland	27	94	203	110911
219561		Antonini	Čulina	LM	Croatia	29	77	184	110747
219900		Jacopo	Dall'Oglio	CM	Italy	29	77	183	190
220140		Frankie	Kent	CB	England	25	76	188	1935
220649		Stefano	Vecchia	RM	Sweden	26	80	183	113458
220894		George	Thomas	RM	Wales	24	76	173	1949
221383	Ryu Seung Woo	Seung Woo	Ryu	CAM	Korea Republic	27	68	172	1478
221626		Damion	Lowe	CB	Jamaica	28	80	191	1524
221893		Petar	Golubović	RB	Serbia	27	80	185	100081
222342	Gu Chao	Chao	Gu	GK	China PR	31	86	193	112162
222488		Nicolò	Fazzi	LB	Italy	26	78	183	1844
222937		Ben	Close	CM	England	24	75	175	1790
223672		Philipp	Malicsek	CDM	Austria	24	70	178	254
223752		Marlon	Torres	CB	Colombia	25	75	182	112992
223923		Luis	Santelices	GK	Chile	35	77	183	112655
224017		Jordan	Williams	CB	Wales	25	77	183	1955
224165		José	Huentelaf	LW	Chile	32	73	177	112534
224301		Karol	Świderski	ST	Poland	24	74	184	110745
224391		Christophe	Psyché	CB	France	33	82	186	113459
224460		Nilson	Castrillón	RB	Colombia	25	70	180	111722
224822		Arno	Monsecour	CB	Belgium	25	70	176	2007
225147		Connor	Roberts	RB	Wales	25	71	175	1960
225614		Ilzat	Akhmetov	CAM	Russia	23	67	172	315
226116		Ryan	Sweeney	CB	Republic of Ireland	24	87	193	1940
226571	Thallyson	Thallyson A.	Tavares Dias	LB	Brazil	29	68	175	680
226710		Gianluca	Scamacca	ST	Italy	22	80	195	111974
227412		David	Gómez	RB	Colombia	33	73	173	101106
227686		Keshi	Anderson	CAM	England	26	71	178	1934
228094	Nahuel	Nahuel Alberto	Omiliani González	LB	Spain	25	65	172	260
228216		Oniel	Fisher	RB	Jamaica	29	70	175	688
228457		Adrian	Dabasse	ST	France	28	79	187	1813
228624		Mohammed Abdu	Khubrani	CB	Saudi Arabia	27	68	181	112391
228656		RJ	Allen	RB	United States	31	79	180	112606
228894		Joe	Ward	RM	England	25	68	167	1938
229057		Osman	Çelik	CDM	Turkey	29	79	182	741
229195		Lorenzo	Callegari	CDM	France	23	71	174	110556
229491		Alan	Moreno	RB	Chile	25	65	175	112531
229646		Samuel	Yohou	CB	Côte d'Ivoire	30	86	190	111817
229843		Ever	Valencia	LM	Colombia	24	73	175	101103
230684		Jesús	Marimón	CDM	Colombia	22	76	182	111560
230860		Denis Will	Poha	CM	France	24	72	173	74
231109		Aly	Ndom	CDM	France	25	80	188	379
231342		Dylan	Fox	CB	Australia	27	80	186	111766
231668		Félix	García	CB	Colombia	37	82	185	112019
231807		Mert	Özyıldırım	CB	Turkey	26	75	180	101020
232174		Oliver	Hawkins	ST	England	29	92	199	1790
232419		Doğanay	Kılıç	CM	Turkey	25	72	177	101026
232576		Yuki	Kobayashi	CDM	Japan	32	71	180	112092
232682		Abdulmajeed	Al Suwat	CAM	Saudi Arabia	26	57	168	112393
232785		Cayman	Togashi	ST	Japan	27	73	178	101150
232955		Kohei	Tezuka	CDM	Japan	25	66	176	101145
233012	Hong Jeong Un	Jeong Un	Hong	CB	Korea Republic	26	76	187	2056
233369		Lautaro	Montoya	LB	Argentina	26	73	170	1013
233581	Song Si Woo	Si Woo	Song	RM	Korea Republic	27	71	173	2055
202659		Måns	Söderqvist	ST	Sweden	28	70	176	1439
202731		Conor	McCormack	CDM	Republic of Ireland	31	67	176	422
203440		Daniel	Davari	GK	Iran	33	90	192	1825
204006		Marco	Sahanek	CAM	Austria	31	77	182	111821
204316	Pak Kwang Ryong	Kwang Ryong	Pak	ST	Korea DPR	28	83	188	112075
204635		Sido	Jombati	RB	Portugal	33	75	182	1933
204845		Amin	Affane	CM	Sweden	27	70	174	319
205491		Jorge	Espericueta	CM	Mexico	26	77	178	110152
206520	Kim Won Sik	Won Sik	Kim	CB	Korea Republic	29	76	186	982
206598		Daniel	Berntsen	CAM	Norway	28	65	175	418
207646		Pierce	Sweeney	RB	Republic of Ireland	26	80	178	143
208066	Han Yong Su	Yong Su	Han	CB	Korea Republic	31	80	184	112115
208246		Paul Fadiala	Keita	CDM	Senegal	29	79	192	110913
208944		Nathaniel	Knight-Percival	CB	England	34	73	182	1804
209166		Mustafa	Malaeka	GK	Saudi Arabia	35	73	185	112389
209475		John	O'Sullivan	RM	Republic of Ireland	27	83	181	1926
209675		Janoi	Donacien	LB	St. Lucia	27	75	183	94
210144		Jufain	Al Bishi	CB	Saudi Arabia	34	74	179	112393
210482		Simon	Piesinger	CDM	Austria	29	84	192	15009
210652		Bernie	Magaña	GK	United States	27	87	186	1881
210840		Giuseppe	Torromino	LW	Italy	33	72	176	347
211536		Mark	O'Hara	CM	Scotland	25	72	183	1938
212041		Mikael Norø	Ingebrigtsen	RW	Norway	25	68	170	418
212338		El-Hadji	Ba	CDM	France	28	75	183	64
212644		Alexander	Blomqvist	CB	Sweden	27	79	185	703
212976		Takuma	Abe	ST	Japan	33	73	171	112836
213120		Conor	Wilkinson	ST	Republic of Ireland	26	77	190	1802
213349		Grégoire	Puel	RB	France	29	67	180	110316
213795	Kiki	Christian Neiva	Afonso	LB	Portugal	26	74	181	10019
214035		Jefferson	Martínez	GK	Colombia	27	79	183	112526
214222		Lucas	Giovini	GK	Argentina	39	73	190	112535
214571		José	Escobar	GK	Colombia	33	79	190	112903
214913		Marko	Biskupović	CB	Chile	32	88	189	112535
215410		Brendan	Chardonnet	CB	France	26	74	181	378
215495		Birama	Ndoye	CB	Senegal	27	80	187	110770
216030		Francisco	Portillo	CM	Paraguay	34	75	178	112534
216478		Jonathan	Mitchell	GK	England	26	86	182	1951
216779		Francesco	Ruberto	GK	Switzerland	28	80	184	1715
217803		Sebastián	Domínguez	CM	Chile	33	68	171	112709
219337		Javier	Calle	CAM	Colombia	30	66	176	101103
219585		Martin	Valjent	CB	Slovakia	25	83	186	453
220023		Abdullah Haif	Al Shammari	CB	Saudi Arabia	27	60	188	607
220197		Kean	Bryan	CB	England	24	72	185	1794
220650		Melvyn	Lorenzen	LW	Uganda	26	86	188	650
221001		Ulrik	Saltnes	CM	Norway	28	78	187	918
221355		Nathan	Thomas	LM	England	26	80	178	1937
221651	Ahn Yong Woo	Yong Woo	Ahn	RW	Korea Republic	29	69	177	113160
221856	Luo Senwen	Senwen	Luo	CM	China PR	28	75	186	112978
222382		Luis	Chávez	CM	Mexico	25	73	178	111678
222485		Benjamin	Bellot	GK	Germany	31	82	185	269
223069		Omar	Sowunmi	CB	England	25	93	199	346
223429		Daniel	Luxbacher	CAM	Austria	29	71	174	112075
223756		Marvin	Schulz	CB	Germany	26	77	186	897
223933		Gustaf	Nilsson	ST	Sweden	24	87	197	822
224046		Tomislav	Božić	CB	Croatia	33	77	184	112505
224129		Tafari	Moore	RB	England	24	66	173	1929
224300		Hubert	Matynia	LB	Poland	25	70	181	110746
224311		Frederik	Børsting	RM	Denmark	26	74	183	820
224661		Axel	Borgmann	LB	Germany	27	75	179	100651
224969		Lamine	Ndao	ST	Senegal	26	76	178	110913
225253		Hasan Batuhan	Artarslan	CDM	Turkey	27	84	190	436
225847		Stevie	Mallan	CM	Scotland	25	69	178	81
226300		Uğurcan	Çakır	GK	Turkey	25	82	188	436
226609	Cho Suk Jae	Suk Jae	Cho	ST	Korea Republic	28	76	180	2056
227164		Deiver	Parra	CB	Colombia	29	72	176	112527
227520		Tobias	Salquist	CB	Denmark	26	82	190	110913
227900		Nicolás	Tripichio	RB	Argentina	25	68	175	111710
228191		Jonathan	Aspropotamitis	CB	Australia	25	76	188	111396
228375		Matías	Vera	CDM	Argentina	25	69	170	112116
228613		Faisal	Al Masrahi	GK	Saudi Arabia	28	92	180	112391
228707	Diego Alende	Diego	Alende López	CB	Spain	23	76	184	450
228983		Maximiliano	Caufriez	CB	Belgium	24	84	185	110913
229194		Alec	Georgen	RB	France	22	67	172	73
229441		Gonzalo	Rivas	CM	Chile	25	67	170	112668
229516	Mayoral	David	Mayoral Lastras	RM	Spain	24	70	174	100831
229733		Christian	Schoissengeyr	CB	Austria	26	92	195	256
230044		Mohamed	Maouche	CM	France	28	70	180	1920
230809		Callum	Johnson	RB	England	24	71	180	110313
231027		Antonio	Marchesano	CM	Switzerland	30	62	168	894
231247		Braian	Cufré	LB	Argentina	24	82	179	101088
231701		Yilton	Díaz	RM	Colombia	29	70	178	112578
231931		Hernán	Lopes	CB	Argentina	30	79	190	112531
232330		Furkan	Ünver	CB	Turkey	24	78	182	742
232577		Ryosuke	Yamanaka	LB	Japan	28	65	171	101151
232754		Thomas Olivier	Amang	ST	Cameroon	23	78	174	417
232876		Yukitoshi	Ito	RB	Japan	27	68	176	101147
233173		Hokuto	Shimoda	CM	Japan	29	64	171	111730
233276		Andre	Dozzell	CM	England	22	64	178	94
233568	Lee Sang Heon	Sang Heon	Lee	CF	Korea Republic	23	67	178	1475
233732		David	Okereke	ST	Nigeria	23	75	182	110741
234387		Hendrik	Starostzik	CB	Germany	30	82	189	110482
234525		Andrew	Carleton	LM	United States	21	66	170	112885
234674		Kory	Roberts	CB	England	23	73	185	1803
19541		Glenn	Morris	GK	England	37	70	183	110890
101317		Michael	Ratajczak	GK	Germany	39	85	189	10030
233639		Daniel	Stanese	CDM	Canada	27	80	188	162
233841		Carlos	Cuesta	CB	Colombia	22	68	172	101100
234350	Viti	Víctor	Álvarez Rozada	RM	Spain	23	64	170	110827
234465		Aldo	Araujo	RW	Argentina	29	60	164	112670
234648		Michael	Huber	CB	Austria	31	85	187	2017
11811		Paul	Green	CM	Republic of Ireland	38	77	170	121
54008		Stephen	Bywater	GK	England	40	81	185	15015
111503		Chaouki	Ben Saada	RM	Tunisia	37	65	170	294
144024		David	Zibung	GK	Switzerland	37	84	188	897
152480		Mattias	Moström	RW	Sweden	38	68	178	417
155877		Craig	Samson	GK	Scotland	37	80	188	100805
162211		Martin	Mikkelsen	RM	Denmark	35	79	182	112425
165880	Yang Sang Min	Sang Min	Yang	CB	Korea Republic	37	78	182	983
169602		Adam	Eckersley	LB	England	35	76	175	100805
171923		Sam	Foley	CM	Republic of Ireland	34	74	183	1930
172560		Kasper	Povlsen	CDM	Denmark	31	74	182	111660
175956		Thomas	Jacobsen	LB	Norway	37	76	175	918
176246		Mattia	Bottani	LW	Switzerland	30	63	170	10032
177397		Nedeljko	Malić	CB	Austria	33	85	192	1785
177692		Mike	Jones	CM	England	33	78	183	1480
180810		Jakub	Mareš	ST	Czech Republic	34	79	183	110749
181962	Lang Zheng	Zheng	Lang	CB	China PR	35	79	188	112978
183530		Jimmy	Smith	CM	England	34	78	184	110890
184467		Nathan	Delfouneso	RM	England	30	78	186	1926
186549		Exequiel	Benavidez	CM	Argentina	32	78	179	112527
188360		Tim	Kruse	CDM	Germany	38	75	185	162
189408		Lukas	Rath	CB	Austria	29	80	183	1785
190079		Michal	Janota	CAM	Poland	31	74	171	111082
191675	Park Jong Jin	Jong Jin	Park	LM	Korea Republic	34	74	177	110765
191859	Wang Lin	Lin	Wang	RB	China PR	33	75	178	110955
193013		James	Shea	GK	England	30	76	181	1923
194678		Ashley	Eastham	CB	England	30	90	191	112260
196972		Lars	Sætra	CB	Norway	30	90	195	922
198071		George	Williams	RB	England	28	70	176	1798
198540		Gustav	Sandberg Magnusson	CDM	Sweden	29	76	181	111705
199184		Ryoichi	Maeda	ST	Japan	39	78	183	101150
199442		Mario	Grgic	CM	Austria	29	62	178	1785
199647		Piotr	Wlazło	CDM	Poland	32	80	184	110745
200253		Jonas	Lindberg	ST	Sweden	32	70	177	113458
200578	Lee Jae Myung	Jae Myung	Lee	LB	Korea Republic	30	74	182	111588
201945		Danny	Amankwaa	RM	Denmark	27	68	176	80
202312		Cian	Bolger	CB	Republic of Ireland	29	78	193	112260
203034		Joe	Day	GK	England	30	76	190	112254
203809		Aaron	Pierre	CB	Grenada	28	88	185	1930
204371		Hilal	Ben Moussa	CM	Morocco	29	74	180	100628
204528		Wilmar	Jordán	ST	Colombia	30	87	180	112970
204787		Carl	McHugh	CM	Republic of Ireland	28	85	182	83
205377		Donovan	Léon	GK	France	28	88	186	378
206032	Pol	Pol	Freixanet Viejo	GK	Spain	29	80	191	110854
206332		Gearóid	Morrissey	CDM	Republic of Ireland	29	81	183	422
207968		Bryan	Gaul	CDM	United States	31	91	196	110592
208386		Mourad	Satli	LB	Algeria	31	78	187	111273
209318		Boy	de Jong	GK	Holland	27	81	182	229
209607		Gianni	Fabiano	LW	Italy	37	68	167	205
210312		Sebastian	Wimmer	CDM	Austria	27	80	187	10030
210806		Wesam Saleh	Suwayyid	LB	Saudi Arabia	33	66	174	112389
211398		Marc-Aurèle	Caillard	GK	France	27	86	191	62
211839		Sören	Eismann	CDM	Germany	33	76	183	110591
212106		Dylan	Connolly	RM	Republic of Ireland	26	69	176	837
212484		Wes	Burns	ST	Wales	26	68	173	112260
213011		Tobias	Badila	LB	Congo	28	80	181	1823
213589		Joaquín	Muñoz	GK	Chile	30	82	181	101097
213889		Ryan	Haynes	LB	England	25	68	184	127
214181		Yílmar	Filigrana	RM	Colombia	30	80	180	112992
214485		Juan	Rodríguez	CM	Colombia	28	70	180	101106
214740		Gino	Alucema	CDM	Chile	28	74	174	112584
215403		Joshua	Yorwerth	CB	Wales	26	75	185	1938
215817		Dino	Islamovic	ST	Sweden	27	88	190	113173
216199		Patrick	Mainka	CB	Germany	26	86	194	111235
216503		Charles Elie	Laprevotte	CDM	France	28	73	181	110588
217650		Jungo	Fujimoto	RM	Japan	37	69	173	112093
219449		Mirnes	Pepić	CDM	Montenegro	25	77	178	27
220149		Tom	Field	LB	Republic of Ireland	24	70	177	1925
220886		Bill	Tuiloma	CB	New Zealand	26	78	182	111140
221167		Cameron	Dummigan	RB	Northern Ireland	25	70	180	1920
221351		Dan-Patrick	Poggenberg	LB	Germany	29	78	184	111379
221538		Will	Nightingale	CB	England	26	84	185	112259
221658		Ahmed	Sharahili	CB	Saudi Arabia	27	75	185	605
221823	Zhao Hejing	Hejing	Zhao	LB	China PR	36	74	185	112977
222338		Tommy	Redding	CB	United States	24	84	188	689
222639		Roberto	Ramírez	GK	Argentina	25	73	187	111706
223298	Li Yuanyi	Yuanyi	Li	RM	China PR	27	70	180	111774
223579	Ernest Forgás	Ernest	Forgàs Pallarès	ST	Spain	28	73	187	110854
224002		Naif	Mousa	LB	Saudi Arabia	34	68	166	112393
224403		Gabriel	Alanís	LM	Argentina	27	73	186	111022
224525		Jerell	Sellars	LM	England	25	73	173	113173
224763		Krystian	Bielik	CB	Poland	23	78	189	89
224874		Amahl	Pellegrino	ST	Norway	31	68	190	922
225409		Abdulrahman	Al Shammari	RB	Saudi Arabia	32	60	165	112392
225450		Kevin	Toner	CB	Republic of Ireland	25	75	182	423
242752		Nathan	Ferguson	CB	England	20	70	181	109
242828	Lee Tae Ho	Tae Ho	Lee	CB	Korea Republic	30	80	185	112115
242933		José	Caraballo	RM	Venezuela	25	70	168	111327
243358	Park Chang Jun	Chang Jun	Park	RB	Korea Republic	24	65	175	112115
243736		Kevin	Rauhut	GK	Germany	31	77	188	162
243925		Morten	Behrens	GK	Germany	24	89	193	28
233711		Thomas	Oude Kotte	CB	Holland	25	80	184	1971
233892		Tomás	Sandoval	ST	Argentina	22	71	185	110406
234388		Marc	Wachs	LB	Germany	26	76	180	492
234520		Rubén	Cepeda	CM	Chile	27	66	168	112709
234646		Christoph	Riegler	GK	Austria	29	83	185	112075
2335		Aaron	Wilbraham	ST	England	41	72	191	1955
104737		Barry	Roche	GK	Republic of Ireland	39	90	193	357
137166		Paul	Jones	GK	England	35	83	191	112260
148673		Tom	Høgli	RB	Norway	37	75	175	418
154729		Cezary	Stefańczyk	RB	Poland	37	78	184	1569
156480		Yuji	Nakazawa	CB	Japan	43	78	187	101151
164618		Jason	Hernandez	CB	Puerto Rico	37	77	178	111651
166113		David	Buchanan	LB	Northern Ireland	35	67	173	1930
169907		Shaun	Miller	ST	England	33	71	173	121
171982		Calvin	Andrew	ST	England	34	82	188	1955
172178		Barry	Corr	ST	Republic of Ireland	36	79	191	1944
174206		Glen	Moss	GK	New Zealand	38	90	187	111398
176839		Emin	Nouri	RB	Azerbaijan	36	75	181	1439
177799		Stefan	Glarner	RB	Switzerland	33	74	177	1715
181010		Leigh	Broxham	LB	Australia	33	65	170	111397
182470	Yu Ziqian	Ziqian	Yu	GK	China PR	36	76	193	112378
184148		Jo	Coppens	GK	Belgium	30	80	190	110591
186147		Gary	Woods	GK	England	31	78	185	184
187341		Robin	Nilsson	CM	Sweden	32	80	184	703
189115		Mickaël	Facchinetti	LB	Switzerland	30	80	184	1715
189900		Luke	O'Neill	RB	England	29	72	183	1802
190539		Pontus	Engblom	ST	Sweden	29	75	183	1757
191848		Waleed	Abdullah	GK	Saudi Arabia	35	86	190	112139
192466		Michael	Marrone	RB	Australia	34	78	179	111393
193546		Steven	Saunders	RB	Scotland	30	76	188	621
195286		Jóan Símun	Edmundsson	ST	Faroe Islands	30	83	185	159
198057		Elliott	Frear	LM	England	30	65	177	83
198436		Mads	Hvilsom	ST	Denmark	28	85	188	1447
199088	Wang Gang	Gang	Wang	RB	China PR	32	81	188	112537
199307		Alois	Höller	RB	Austria	32	82	192	1785
199535		Michael	Novak	RB	Austria	30	77	183	111822
200239		Tunahan	Cicek	ST	Turkey	29	71	179	435
200609		Markus	Ziereis	ST	Germany	28	82	186	33
201534		Nicolas	Jüllich	CM	Germany	31	70	182	111379
202180		Liam	McAlinden	ST	Republic of Ireland	27	74	186	1936
202786		Richard	Sánchez	GK	Mexico	27	87	191	693
203558		Rafał	Pietrzak	LB	Poland	29	69	176	1873
204154		Jules	Schwadorf	LM	Germany	28	72	177	492
204438		Clément	Diop	GK	Senegal	27	76	185	111139
204762		Tobias	Schilk	CB	Germany	29	75	188	110482
205161		Harry	Bunn	LM	England	28	74	175	1954
205747		Martin	Sourzac	GK	France	29	78	188	224
206089		Cameron	McGeehan	CM	Northern Ireland	26	71	180	1932
206208		Florian	Brügmann	RB	Germany	30	70	173	110591
208297		Kent-Are	Antonsen	CM	Norway	26	70	172	418
208927		Hussain Omar	Sulaimani	LB	Saudi Arabia	44	70	173	113219
209750		Ian	Lawlor	GK	Republic of Ireland	26	80	193	142
210006		Thomas	Dähne	GK	Germany	27	84	193	1569
210319		Ismahil	Akinade	ST	Nigeria	27	95	191	753
211141		Nawaf Humaidan	Al Subhi	CB	Saudi Arabia	31	74	180	113057
211622		Mateusz	Cichocki	CB	Poland	29	79	187	111089
212013		Kearyn	Baccus	CDM	Australia	29	75	180	112427
212140		Gregory	Karlen	CM	Switzerland	26	75	185	1715
212383		Nico	Brandenburger	CDM	Germany	26	77	184	110169
212756	Lee Hoo Gwon	Hoo Gwon	Lee	CM	Korea Republic	30	75	180	1474
213545		Jeppe	Højbjerg	GK	Denmark	26	78	188	1445
213871		Kasper	Junker	ST	Denmark	27	76	178	271
214072		Felipe	Salinas	CB	Chile	39	84	188	112535
214325		Jossymar	Gómez	CDM	Colombia	33	70	172	112019
214658		Jesper	Karlström	CM	Sweden	26	81	182	710
215234		Ismael	Quílez	RB	Argentina	31	75	171	111707
215562		Rob	Hunt	LB	England	26	67	171	1920
215971		Ali Nasser	Al Khaibari	CB	Saudi Arabia	32	77	180	112096
216287		Joshua	Putze	CDM	Germany	26	78	185	110700
216540		William	Eskelinen	GK	Sweden	24	84	191	1596
218292		David	Djigla	RW	Benin	25	73	175	1813
219531		Sebastián	Olivarez	CB	Argentina	29	82	180	111022
220057		Harry	Lennon	CB	England	26	77	190	1954
220684	Pau Morer	Pau	Morer Vicente	LM	Spain	25	69	172	1757
221141		Amadou	Bakayoko	ST	Sierra Leone	25	85	193	1800
221274		Yannis	Mbombo	ST	Belgium	27	78	179	111560
221525		Sid	Nelson	CB	England	25	75	185	1934
221632		Simen	Kind Mikalsen	LM	Norway	28	81	185	299
221772		Abdulaziz	Al Bishi	LM	Saudi Arabia	27	69	169	112389
221953		Ben	Whitfield	CAM	England	25	62	165	1943
222510		Ilya	Pomazun	GK	Russia	24	84	189	315
223041		Erten	Ersu	GK	Turkey	27	92	195	326
223557		Mouaad	Madri	ST	France	31	65	176	64
223960		Isaac	Buckley-Ricketts	RM	England	23	68	178	1938
224324		Oskar	Zawada	ST	Poland	25	83	192	1569
224544	Zhao Honglue	Honglue	Zhao	LB	China PR	31	76	180	111774
224769		Tom	Doyle	LB	New Zealand	29	73	183	111766
225333		Saber	Hraiech	CM	Italy	26	75	180	112409
225419		Esteban	Ruiz	GK	Colombia	24	84	188	112523
244066		Constantin	Frommann	GK	Germany	23	78	185	25
244109		Maximilian	Krauß	RW	Germany	24	65	170	172
244183		Joey	Konings	ST	Holland	23	77	178	100634
244424		Yevgeniy	Smyrnyi	CM	Ukraine	22	75	185	101047
244503		Hidajet	Hankić	GK	Austria	27	82	187	2045
244843		William	Balikwisha	RM	Belgium	22	65	174	232
245388		Jean-Clair	Todibo	CDM	France	21	81	187	1809
50546949		Lloyd	Jones	CB	England	25	75	190	1929
233884		Charles	Pickel	CDM	Switzerland	24	76	185	322
234464		Victorio	Ramis	ST	Argentina	27	78	181	111706
234635		Nikola	Jambor	CM	Croatia	25	76	189	744
234704		Michał	Marcjanik	CB	Poland	26	83	186	1746
51921		Adam	Chambers	CM	England	40	71	178	1803
120243		Pier Graziano	Gori	GK	Italy	41	83	189	112026
142979		Juan	Quiroga	LB	Argentina	39	79	180	111022
152031		Thomas	Kortegaard	LB	Denmark	37	74	178	1446
155351	Choi Jae Soo	Jae Soo	Choi	LB	Korea Republic	38	68	175	111588
164458		Stanley	Aborah	CM	Belgium	34	67	170	753
165738		Jason	Kennedy	CM	England	34	75	185	1480
169714	Fábio Ferreira	Fábio Miguel	Lourenço Ferreira	RM	Portugal	32	72	178	111399
170877		Kyle	Letheren	GK	Wales	33	94	188	1929
172398		Eggert	Jónsson	CDM	Iceland	32	81	188	1447
173734		James	Wilson	CB	Wales	32	82	188	149
176103		Zlatan	Ljubijankič	ST	Slovenia	37	80	186	111575
176897		Yerson	Opazo	RB	Chile	36	73	174	112655
177618		Josh	Wright	RM	England	31	74	185	1804
180352		Ronan	Finn	CM	Republic of Ireland	33	75	184	306
181307		Philip	Haglund	CM	Sweden	34	88	189	113458
183466		Karl	Sheppard	RM	Republic of Ireland	30	80	181	422
184714		Matt	Green	ST	England	34	81	184	149
186507		Christian	Landu Landu	CM	Norway	29	83	183	418
187154		Niall	Canavan	CB	Republic of Ireland	30	76	191	1929
188261		Thomas	Salamon	LB	Austria	32	74	175	256
189295		Jasmin	Sudić	CB	Sweden	30	82	193	703
190031		Dane	Massey	LB	Republic of Ireland	33	74	183	837
190512		Sverre	Økland	CM	Norway	28	68	177	113459
191827	Yoo Hyun	Hyun	Yoo	GK	Korea Republic	37	82	184	982
192651		Osama	Malik	CDM	Australia	30	75	185	112224
193613		James	Hanson	ST	England	33	78	193	112259
196940		Calum	Butcher	CM	England	30	83	188	1940
198142		Onur	Ayık	RM	Turkey	31	77	180	111340
198519		Christoffer	Aasbak	LB	Norway	28	81	187	113459
199218		Brendan	Hamill	CB	Australia	28	79	185	112427
199431		Taylor	Regan	CB	Australia	32	77	187	111393
199747		Jesper	Lauridsen	LB	Denmark	30	76	180	1445
200475		Maurice	Trapp	CB	Germany	29	87	191	487
200844		Jimmy	Keohane	CAM	Republic of Ireland	30	72	180	422
202117		Mats	Haakenstad	RB	Norway	27	73	183	299
202533		Michael	Harriman	RB	Republic of Ireland	28	74	167	1933
203328		Sam	Hoskins	RM	England	28	67	173	1930
203823		Thomas	Bertels	LM	Germany	34	83	193	10030
204180		Smajl	Suljevic	CM	Sweden	27	70	180	113876
204554		Rhys	Bennett	CB	England	29	76	191	1938
204915		Kurtis	Guthrie	ST	England	28	70	191	361
205461		Max	Wegner	ST	Germany	32	80	179	110597
205759		Dejan	Stojanović	GK	FYR Macedonia	28	89	196	898
206202		Ollie	Norburn	CM	England	28	82	185	127
207651	Dolly Menga	Dolly Doningos	Menga	ST	Angola	28	73	180	621
208350		Simon Andreas	Larsen	CB	Norway	33	84	193	1524
209425		Abdel Malik	Hsissane	CDM	Morocco	30	76	186	224
209766		Mirco	Born	ST	Germany	27	69	175	110597
210249		Frans	Dhia Putros	CB	Iraq	28	77	181	112425
211105		Nicolai	Flø	GK	Denmark	25	83	194	111660
211608		Michele	Rigione	CB	Italy	30	82	185	192
211917		Sandrino	Braun	CDM	Germany	33	73	180	531
212251		Hendrik	Hansen	CB	Germany	26	88	195	110197
212750		Erik	Hurtado	ST	United States	30	79	178	101112
213339		Bradley	Garmston	LB	Republic of Ireland	27	69	177	1802
213797		Joe	Bunney	LB	England	27	75	188	1926
214104		Harold	Gómez	RB	Colombia	29	76	175	112992
214432		Juan David	Valencia	GK	Colombia	28	75	183	112578
214698		Luis	Casanova	CB	Chile	29	84	183	112709
215112		Rodrigo	Contreras	ST	Argentina	25	84	186	112533
215408		Aaron	Chapman	GK	England	31	92	203	1938
216052		Fernando	Coniglio	ST	Argentina	29	84	184	110395
216518		Hendrik	Bonmann	GK	Germany	27	82	194	33
217193		Jorge	Corrales	LB	Cuba	30	70	174	693
218846		Edwin	Ávila	CB	Colombia	34	79	184	112903
219949		Nicolás	Pantaleone	LB	Argentina	28	77	179	110581
220575	PC	Victor	Pagliari Giro	LB	Brazil	27	73	173	112606
220895		Abdulmajeed	Al Sulayhim	CDM	Saudi Arabia	27	63	171	111674
221053		Elias	Gómez	LB	Argentina	27	72	176	110580
221235		Andrés	Mosquera	GK	Colombia	29	78	186	101103
221379		Sebastián	Herrera	ST	Colombia	26	71	180	112528
221489		Jason	Flores	LW	Chile	24	60	167	112533
221704		Sergio	Román	GK	Colombia	26	76	190	101106
221846	Wang Tong	Tong	Wang	RB	China PR	28	72	182	111724
222266		Jakub	Bartosz	RB	Poland	24	76	183	1873
222864		Jack	Rose	GK	England	26	75	183	17
223568		Gjoko	Zajkov	CB	FYR Macedonia	26	82	186	670
223918		Brandon	Comley	CM	Montserrat	25	72	180	1935
224252		Patrick	Pflücke	CAM	Germany	24	66	170	167
224590		Jessy	Benet	CM	France	26	75	186	1805
225153		John	Santander	LB	Chile	27	80	181	112709
225430		Pierre Desiré	Zebli	CDM	Côte d'Ivoire	23	75	180	1847
225545		Kianz	Froese	CAM	Canada	25	77	177	110636
244487		Hamed	Koné	CAM	Côte d'Ivoire	33	75	168	435
244714		Moustapha	Bokoum	LM	Belgium	22	75	178	113948
244886		Saif	Al Qeshtah	CB	Saudi Arabia	28	75	182	113222
245522		Hamed	Al Maqati	RM	Saudi Arabia	28	64	174	113222
50514071	Yang Shanping	Shanping	Yang	CB	China PR	33	80	188	112983
50540643		Saeed	Al Dosari	RM	Saudi Arabia	30	60	178	113222
50556513		Craig	Wighton	ST	Scotland	24	72	185	80
50562653		Chiedozie	Ogbene	LM	Republic of Ireland	24	75	175	143
53778		Marc	Richards	ST	England	39	81	180	1934
134792		Dean	Bowditch	CAM	England	35	72	180	1930
148705		Erik	Mjelde	CM	Norway	37	74	180	1757
152523		Scott	Flinders	GK	England	35	87	193	1936
158667		Thomas	Bröker	RM	Germany	36	86	187	110169
165316		Michael	Timlin	CM	Republic of Ireland	36	74	178	361
167497		Denni	Avdić	CM	Sweden	32	92	193	433
169919		Paul	Anderson	RM	England	33	65	175	1940
172232		Joona	Toivio	CB	Finland	33	87	186	711
174665		Adam	Kokoszka	CB	Poland	34	82	187	111089
176373	Bae Ki Jong	Ki Jong	Bae	LW	Korea Republic	38	75	180	111588
179869		Gary	Sawyer	LB	England	36	67	183	1929
181021		Dino	Djulbic	CB	Australia	38	90	194	111399
182047	Wu Yan	Yan	Wu	GK	China PR	32	82	191	111779
184013		Marvin	Bartley	CM	England	35	79	180	81
186126		Ryan	Flynn	CM	Scotland	32	60	175	100805
186884		Ben	Kantarovski	CDM	Australia	29	74	183	111398
188823		Gauthier	Pinaud	LB	France	33	71	177	112276
189282		AJ	Leitch-Smith	ST	England	31	75	173	357
189909		Sam	Slocombe	GK	England	33	75	183	149
190690		Bartłomiej	Babiarz	CDM	Poland	32	68	168	111089
191728		Håvard	Storbæk	CM	Norway	35	69	179	1757
192008	Zhang Chi	Chi	Zhang	RM	China PR	34	76	182	111724
193155		Lucas	Musculus	ST	Germany	30	73	180	167
193660		Yoann	Arquin	ST	France	33	85	189	346
195396		Luka	Tankulic	ST	Germany	30	77	183	110597
197774		Conor	McAleny	ST	England	28	66	178	112260
198229		Férébory	Doré	ST	Congo	32	85	193	1530
199039		Christoph	Freitag	CDM	Austria	31	80	184	2045
199165	Yang Jun A	Jun A	Yang	CB	Korea Republic	32	81	188	1475
199321		Tomáš	Holý	GK	Czech Republic	29	102	205	1802
199770		Matthias	Maak	CB	Austria	29	87	191	2045
200312		Tyrone	Barnett	ST	England	35	85	191	1928
201277		Mathias	Nielsen	CB	Denmark	30	80	187	1446
202103	Li Jianbin	Jianbin	Li	CB	China PR	32	77	185	110955
202436		Jacob	Tjørnelund	LB	Denmark	29	78	183	112425
203316		Adam	Smith	GK	England	28	70	188	1962
203842		Michael	Fitzgerald	CB	Japan	32	82	185	111730
204333		Niklas	Dams	CDM	Germany	31	77	184	492
204515		Stephen	Sama	CB	Germany	28	87	189	100634
205053		Rhys	McCabe	CM	Scotland	29	74	173	563
205463		Marco	Thiede	RB	Germany	29	75	178	1832
205972		Rubén	Bentancourt	ST	Uruguay	28	74	186	101104
206523		Shay	McCartan	CAM	Northern Ireland	27	74	178	149
208300		Gabriel	Somi	LB	Syria	29	67	176	691
208989		Freddie	Ladapo	ST	Nigeria	28	79	183	1929
209831		Mory	Koné	CB	France	27	88	190	294
210244		Lee	Angol	ST	England	27	75	188	127
210854		Fawaz Mohammed	Fallatah	CB	Saudi Arabia	32	63	176	112391
211512		Luke	Hendrie	RB	England	26	72	178	92
211846		Sari	Amro	LB	Saudi Arabia	31	72	178	112408
212319	Park Hee Seong	Hee Seong	Park	ST	Korea Republic	31	80	188	982
212624		Daniel	Bohl	CDM	Germany	27	69	172	110482
213189	Joo Min Kyu	Min Kyu	Joo	ST	Korea Republic	31	79	183	2055
213745	Robert Costa	Robert	Costa Ventura	CB	Spain	27	80	184	450
213894		Hayden	White	RWB	England	26	68	185	1940
214272		Pablo	Soto	GK	Chile	26	79	185	110980
214471		Arled	Cadavid	GK	Colombia	30	74	180	112970
214739		Marcos	Velásquez	CB	Chile	33	79	181	112584
215302		François	Marquet	CM	Belgium	26	71	171	682
215855		Ben	Purrington	LB	England	25	73	178	112259
216106		Miguel	Van Damme	GK	Belgium	27	80	182	1750
216396		Rodrigo	González	CB	Mexico	26	75	184	1881
217190		Andrés	Flores	CM	El Salvador	30	67	171	111140
218585		Shane	Griffin	LB	Republic of Ireland	26	74	178	422
220074		Runar	Espejord	ST	Norway	25	86	189	418
220779		Matthew	Ridenton	CM	New Zealand	25	72	180	111398
221165	Calderón	Carlos	Calderón López	RW	Spain	26	69	182	110831
221244		Jorge	Ramos	RM	Colombia	28	80	182	111722
221443		Samuel	Mensiro	CB	Ghana	32	74	175	113173
221569		Yorleys	Mena	ST	Colombia	30	79	182	101103
221716		Taylor	Peay	CB	United States	29	88	191	111065
221831	Shin Chang Moo	Chang Moo	Shin	CM	Korea Republic	28	67	170	2055
221987		Pierluigi	Cappelluzzo	ST	Italy	25	75	182	206
223097		Franco	Cristaldo	CDM	Argentina	24	69	170	111713
223407		Muslim	Al Furayj	GK	Saudi Arabia	33	73	188	113057
223852		Farrend	Rawson	CB	England	25	73	193	561
224054	Chen Zhizhao	Zhizhao	Chen	CM	China PR	33	66	170	112429
224387		Enrico	Bearzotti	RW	Italy	24	70	180	112168
224667	Yang Kuo	Kuo	Yang	RB	China PR	28	79	183	111779
224859		Nikolai	Laursen	RW	Denmark	23	70	185	269
225295		Andrea	Palazzi	CM	Italy	25	73	178	200
225458		Bayron	Saavedra	LB	Chile	24	67	175	111328
244515		Clinton	Antwi	LWB	Ghana	21	70	169	1788
244859		Jonas	David	CDM	Germany	21	89	190	28
244897		Ismail	Musalami	CDM	Saudi Arabia	32	66	176	113222
245525		Saeed	Mustafa	CDM	Sudan	35	68	181	113222
50537720		Brandon	Miele	RM	Republic of Ireland	26	73	175	423
50543903		Sixten	Mohlin	GK	Sweden	25	80	189	320
50553624	Jiang Zhe	Zhe	Jiang	RB	China PR	32	84	179	112165
50558821		Martin	Payares	CB	Colombia	26	72	182	101104
50562484		Erlend	Dahl Reitan	RB	Norway	23	70	180	918
50563187		Nicolás	Andereggen	ST	Argentina	21	71	175	894
50569466		Nahuel	Arena	CB	Argentina	23	68	183	111706
50570774		Mohammed	Al Baqawi	RB	Saudi Arabia	26	69	172	111674
50571907		Mehdi	Merghem	LW	France	24	70	178	62
50571993		Idris	Kanu	ST	England	21	75	182	1938
138249		Zander	Diamond	CB	Scotland	36	73	189	1940
152065		Simon	Poulsen	LB	Denmark	36	81	184	1447
155977		Gary	MacKenzie	CB	Scotland	35	83	191	100805
165447		Espen	Børufsen	LW	Norway	33	83	179	1524
169489		Joel	Byrom	CM	England	34	78	183	361
170072		Theo	Robinson	ST	Jamaica	32	64	174	1954
171984		Kévin	Lejeune	LM	France	36	81	181	614
172573		Patrick	Kristensen	RB	Denmark	34	68	173	820
173836		Lewis	Alessandra	ST	England	32	73	175	1937
176442		Robert	Milsom	CM	England	34	72	179	110890
177473		Doug	Loft	CM	England	34	77	183	127
179616		Lenell	John-Lewis	ST	England	32	86	178	127
180746		Andrew	Durante	CB	New Zealand	39	75	182	111766
182112		Vince	Lia	CDM	Australia	36	73	177	111393
183549		Elliot	Parish	GK	England	31	83	188	180
185291		Kevin	Debaty	GK	Belgium	32	80	189	110913
186637		Mike	Gomes	RB	Switzerland	32	75	180	435
187959		Michal	Peškovič	GK	Slovakia	39	88	188	110747
189109		Alex	Cisak	GK	Australia	32	93	190	111400
189895	Vallès	Enric	Vallès Prat	CM	Spain	31	84	190	1757
190441		Victor Demba	Bindia	RWB	Senegal	32	69	168	1757
191327		Yusuke	Tasaka	RB	Japan	36	69	174	111730
191996		Fahad Hamad	Al Yamani	CDM	Saudi Arabia	31	73	179	112389
192899		Sergei	Zenjov	RM	Estonia	32	72	183	110747
194725		Jaroslaw	Lindner	RM	Poland	33	72	175	110700
197998		Andreas	Andersson	GK	Sweden	30	82	192	113173
198535		Mads	Greve	CB	Denmark	31	76	195	822
199181		Yuhei	Tokunaga	CB	Japan	37	77	180	112448
199440		Manfred	Gollner	CB	Austria	30	72	184	111822
199881		Marco	Königs	ST	Germany	31	89	189	27
200286		Kelvin	Mellor	RB	England	30	75	188	1804
200663		Oumare	Tounkara	ST	France	31	80	185	212
201527		Ryan Johnson	Laursen	RB	Denmark	29	79	182	272
202292	Kim Soo Beom	Soo Beom	Kim	LB	Korea Republic	30	66	174	1478
202854		Brian	Sylvestre	GK	United States	28	91	196	697
203416		Luke	Norris	ST	England	28	84	184	1935
204041	Bonilla	Javier	Bonilla Sevillano	LB	Spain	30	70	179	453
204426		Jacob	Melling	CDM	Australia	26	71	174	111396
204714	Yu Ji Hoon	Ji Hoon	Yu	LB	Korea Republic	33	66	173	111588
205091		Nicholas	Gotfredsen	RB	Denmark	32	78	185	112425
205712	Bruno Andrade	Bruno Miguel	Carvalho Andrade	LM	Portugal	27	74	175	149
206170		Jordan	Turnbull	CB	England	26	72	185	1930
207558		Martin	Broberg	CM	Sweden	30	74	186	1456
208348		Kornel	Osyra	CB	Poland	28	75	190	112505
208684		Christian	Dobnik	GK	Austria	35	80	181	111822
209572		Abdullah	Al Owayshir	GK	Saudi Arabia	30	73	185	112139
209834		Kwabena	Appiah-Kubi	RM	Australia	29	70	180	110765
210691		Lasse	Nilsen	LM	Norway	26	72	180	418
211358		Julien	Fabri	GK	France	27	75	183	378
211707		Paul	McGinn	RB	Scotland	30	68	175	100805
212065	Jeong Dong Ho	Dong Ho	Jeong	RB	Korea Republic	31	68	175	1473
212481		René	Klingenburg	CM	Germany	27	83	187	531
212910		Armand	Gnanduillet	ST	Côte d'Ivoire	29	93	193	1926
213413		Lawrence	Vigouroux	GK	Chile	27	77	194	1934
213621		Camilo	Melivilú	ST	Chile	27	77	182	112668
213959		Elias	Andersson	LM	Sweden	25	74	178	113458
214279		Hardy	Cavero	CB	Chile	25	71	181	112533
214595		Patrick	Schorr	LB	Germany	26	78	184	550
215052		Lucas	Kruspzky	LB	Argentina	29	71	171	111707
215688		Lucas	Jensen	RM	Denmark	26	75	184	111660
216273		Joni	Kauko	CM	Finland	31	85	188	1445
216773		Raymond	Gyasi	RM	Ghana	27	75	181	917
218343		Ryan	Hedges	RM	Wales	26	65	185	1932
219795		Joel	Coleman	GK	England	25	82	198	127
220517		Francesco	Di Mariano	LW	Italy	25	70	177	205
220663		Mikkel	Kallesøe	RM	Denmark	24	80	193	1786
220912		Filip	Jagiełło	CAM	Poland	23	75	180	110749
221206		Daniel	Björnquist	RWB	Sweden	32	77	178	705
221270		Grégoire	Lefebvre	CM	France	27	63	174	111273
221504		Aaron	Kovar	RM	United States	27	74	178	112996
221603		Ronald	Mukiibi	CB	Sweden	29	85	188	113173
221767		Kyoung Rok	Choi	CF	Korea Republic	26	71	176	1832
221807		Pier	Grazziani	GK	Colombia	26	75	183	112579
221961		Amaury	Torralvo	LB	Colombia	27	65	170	112523
222600	Lee Tae Hee	Tae Hee	Lee	GK	Korea Republic	26	81	188	110765
222870		George	Cooper	LM	England	24	72	175	1938
223396		Darian	MacKinnon	CDM	Scotland	35	74	178	184
223595		John-Patrick	Strauß	RWB	Germany	25	73	177	506
223868		Tobias	Schützenauer	GK	Austria	24	70	180	209
224055	Li Yunqiu	Yunqiu	Li	RB	China PR	30	69	174	110955
224462	Tan Tiancheng	Tiancheng	Tan	ST	China PR	30	70	177	111769
224686	Tao Yuan	Yuan	Tao	LW	China PR	28	61	179	112162
225266		Mathias	Rasmussen	LW	Norway	23	65	170	1788
225431	Ricardo Almeida	Ricardo	Almeida Ribeiro	ST	Portugal	24	75	184	1900
50569154		Charlie	Owens	CM	Northern Ireland	23	62	174	1933
50568904		Jeremy	Ebobisse	ST	United States	24	79	183	111140
50569409		Makoto	Kakuda	CB	Japan	38	78	180	112448
50570561		Mohammed Mohsen	Harzan	LM	Saudi Arabia	32	65	167	113222
50571458		Nicolas	Raskin	CM	Belgium	20	73	177	232
50571469		Luca	Matarese	LW	Italy	23	65	175	110911
50572386		Rashad	Muhammed	ST	France	27	82	184	749
50571689		Atalay	Babacan	CAM	Turkey	21	70	174	325
50572723		Paul	Smyth	RM	Northern Ireland	23	67	175	110313
50572521	Genaro	Genaro	Rodríguez Serrano	CM	Spain	23	71	184	481
50573503	Genís	Genís	Montolio Lafuente	RB	Spain	25	67	175	1853
50574050		Abo	Eisa	LM	England	24	75	180	1935
50573643		Lars	Dietz	CDM	Germany	24	79	190	110700
67334200		Egzon	Binaku	LWB	Sweden	25	70	185	702
67338242		Adetayo	Edun	CM	England	23	74	171	144
84106664		Viljar	Myhra	GK	Norway	25	94	194	922
84125748		Jannes	Vollert	CB	Germany	23	83	186	110482
104900		Michael	Gurski	GK	Germany	42	89	189	172
140300		Peter	Cherrie	GK	Scotland	37	76	188	422
157128		Killian	Brennan	CDM	Republic of Ireland	37	80	183	423
169725		Ishmael	Miller	ST	England	34	89	192	1920
181933	Zhang Sipeng	Sipeng	Zhang	GK	China PR	34	78	188	112977
183031	Han Feng	Feng	Han	GK	China PR	37	69	187	112429
183070		Wolfgang	Hesl	GK	Germany	35	87	186	29
187113		Lars	Krogh Gerson	CM	Luxembourg	31	76	187	702
192120	Geng Xiaofeng	Xiaofeng	Geng	GK	China PR	33	78	192	112978
194894		Francesco	Rossi	GK	Italy	30	83	193	39
198685		Liam	O'Brien	GK	England	29	79	193	1800
202364		Kim Ove	Riksvold	RW	Norway	27	73	182	112200
203023		Darren	Cole	CB	Scotland	29	80	189	445
204334		Ioannis	Gelios	GK	Greece	29	76	190	27
206072		Brandon	Miele	RM	Republic of Ireland	26	73	175	306
209887		Jimmy	Oates	RB	Australia	30	80	181	143
210426		Carlos	Villanueva	RB	Mexico	27	81	185	101121
211717		Louis	Fenton	RB	New Zealand	28	70	173	111766
212535		Aaron	Calver	RB	Australia	25	76	186	111400
213434		Jevani	Brown	CAM	Jamaica	26	65	175	1944
214080		Steven	Murillo	LB	Colombia	27	73	174	112579
214748		Álvaro	Madrid	CM	Chile	26	74	175	112584
215581		Jakub	Łukowski	LM	Poland	25	67	172	1569
217096		Joe	Lumley	GK	England	26	73	190	15
219886		Harrison	Heath	CM	England	25	73	180	111138
221394		Rayan	Al Mousa	CM	Saudi Arabia	27	67	179	112393
221498		Hamad	Al Mansour	LB	Saudi Arabia	28	73	178	112139
222173	Chen Jie	Jie	Chen	CM	China PR	31	70	175	112537
222628	Chu Jinzhao	Jinzhao	Chu	CB	China PR	28	63	175	112983
223599		Callum	Cooke	CM	England	24	72	172	1938
224094		Janik	Bachmann	CDM	Germany	25	84	190	110197
224546	Wang Jinxian	Jinxian	Wang	RM	China PR	25	70	176	112378
224705	Yang Jiawei	Jiawei	Yang	RM	China PR	29	73	182	112162
225173		Brian	Landini	RB	France	26	87	180	1819
226017		Jake	Keegan	ST	United States	30	72	175	423
226246		Lucio	Compagnucci	CDM	Argentina	25	73	174	112668
226572		Wieger	Sietsma	GK	Holland	26	90	190	1798
227040		Sam	Cosgrove	ST	England	24	82	188	77
227806		Daniel	Barlaser	CM	England	24	62	184	13
227877		Roli	Pereira de Sa	CM	France	24	71	177	71
228368		Jamie	Sterry	RB	England	25	76	180	13
228740		Corentin	Jacob	CB	France	24	79	188	378
229468		Felipe	Saavedra	LB	Chile	24	67	172	15029
229685		Joe	Fryer	GK	England	25	72	185	1480
230162		Iain	Wilson	CDM	Scotland	22	67	187	82
231119	Erin Pinheiro	Erin Jorge	Gomes Pinheiro	CM	Cape Verde Islands	24	82	190	1819
231310		Stefan	Nigro	LB	Australia	24	70	181	111395
231539		Nicolás	Andereggen	ST	Argentina	21	71	175	111716
232239		Alexandr	Makarov	LM	Russia	25	73	178	315
232507		Ryotaro	Hironaga	GK	Japan	31	82	186	113157
232677		Abdulaziz	Al Sharid	CDM	Saudi Arabia	27	63	171	112390
232920		Conor	McDermott	RB	Republic of Ireland	23	72	173	445
233289		Olufela	Olomola	ST	England	23	80	180	1949
233772	Lee Dong Su	Dong Su	Lee	CM	Korea Republic	27	72	185	1478
234070		Majed	Kanabah	CDM	Saudi Arabia	28	70	170	112990
234466		Fernando	Juárez	CM	Argentina	22	66	177	112670
234856		Houboulang	Mendes	CB	France	23	74	183	217
234942		Moritz	Heinrich	LM	Germany	24	75	180	531
235169		Krystian	Miś	LB	Poland	25	73	182	1569
235325		Tim	van de Berg	CB	Holland	23	81	189	100634
235664		Mark	McKee	CM	Northern Ireland	22	73	178	361
236348		Serge	Atakayi	RM	Finland	22	65	171	86
236536		Jan-Ole	Sievers	GK	Germany	26	77	188	29
236633		Juan	Bauza	CAM	Argentina	25	67	175	110406
237015		Mikkel Mena	Qvist	LM	Denmark	28	94	203	1446
237179		Cherif	Ndiaye	ST	Senegal	25	80	186	110913
237352		Kim	Skoglund	CB	Sweden	33	79	183	1596
237426		Hirotsugu	Nakabayashi	GK	Japan	35	73	182	113157
237757		Yugo	Tatsuta	RB	Japan	23	75	189	101149
237850		Cristian	Echavarría	LM	Colombia	24	64	165	112527
238043		Abdulrahman	Al Obud	ST	Saudi Arabia	26	70	174	112096
238345		Kyosuke	Tagawa	ST	Japan	22	70	181	113160
238683		Arne	Sicker	LB	Germany	24	67	184	576
239020		Ahmethan	Köse	ST	Turkey	24	70	182	326
239401		Noel	Knothe	CB	Germany	22	81	187	1824
239468		Rahman Buğra	Çağıran	CDM	Turkey	26	64	176	113259
239575		Gerzino	Nyamsi	CB	France	24	85	193	74
239867		Georgios	Giannoutsos	LB	Greece	23	79	181	278
239972		Lorenzo	Polvani	CB	Italy	27	85	188	1746
240141		Wojciech	Hajda	CDM	Poland	21	75	182	420
240273		Emile	Smith Rowe	LW	England	21	64	182	1
240481		Vesel	Demaku	CDM	Austria	21	72	179	256
240776		Sonny	Laiton	GK	France	21	80	198	57
240939		Deji	Beyreuther	LB	Germany	21	71	180	1824
241388		Dennis	Smarsch	GK	Germany	22	97	195	166
241562		Nicolás	Díaz	CB	Chile	22	75	178	111328
241865		Nikola	Sukacev	RM	Switzerland	23	70	178	322
242060		Ahmed	Al Fiqi	RM	Saudi Arabia	28	66	176	605
242187		Christoph	Baumgartner	CAM	Austria	22	68	178	10029
242420		Vincenzo	Millico	LW	Italy	20	68	173	54
242506		Ali	Majrashi	RB	Saudi Arabia	21	64	169	111674
50574139		Felipe	Jaramillo	CM	Colombia	25	83	184	101105
67325520		Jerome	Sinclair	ST	England	24	79	181	1951
67338037		Gökhan	Gül	CB	Germany	23	75	180	492
84114481		Kyle	Howkins	CB	England	25	81	195	112254
84128343		Malte	Amundsen	LB	Denmark	23	81	179	822
53842		Michael	Tonge	CM	England	38	74	183	1928
139482		Marcus	Bean	CM	Jamaica	37	73	180	1933
151498		Garry	Thompson	RM	England	40	76	178	357
173514		Ian	Morris	LB	Republic of Ireland	34	71	183	305
181558		Romain	Armand	ST	France	34	73	182	110316
182423	Yang Shanping	Shanping	Yang	LB	China PR	33	80	188	112378
186838		Gerard	Doherty	GK	Northern Ireland	39	86	188	445
191528	Hou Sen	Sen	Hou	GK	China PR	32	81	188	111768
192961		Łukasz	Budziłek	GK	Poland	30	80	186	110746
198543		Aaron	Greene	ST	Republic of Ireland	31	73	180	306
199744		Martin	Rauschenberg	CB	Denmark	29	84	189	111705
202841		Jake	Carroll	LB	Republic of Ireland	29	78	183	1944
204007		Tom	Nichols	ST	England	27	75	178	1962
205361		Liam	O'Neil	CDM	England	28	80	180	1944
208719		Philipp	Kühn	GK	Germany	28	94	189	487
208995		Saeed	Al Dosari	RM	Saudi Arabia	30	60	178	112393
211415		Matt	Rhead	ST	England	37	106	193	149
212255		Sixten	Mohlin	GK	Sweden	25	80	189	113876
213156		Rhys	Browne	LM	Antigua and Barbuda	25	75	175	346
214353		William	Cuesta	GK	Colombia	28	87	195	111722
215301		Lloyd	Jones	CB	England	25	75	190	1923
216114		Ivan	Näsberg	LB	Norway	25	80	186	920
219482		Ryan	Fulton	GK	Scotland	25	70	191	184
220807		Max	O'Leary	GK	England	24	78	185	1919
220970		Victor	Sköld	ST	Sweden	32	80	181	705
221874		Emmanuel	Besea	CM	Ghana	24	75	183	111657
222180	Shan Pengfei	Pengfei	Shan	RB	China PR	28	76	180	112378
222647		Cristian	Torres	CB	Mexico	25	78	182	110781
223159		Rob	Dickie	CB	England	25	74	183	1951
224257		Maciej	Pałaszewski	CDM	Poland	23	66	175	111092
224447		Gethin	Jones	LB	Wales	25	74	178	112260
224731	Zhang Lu	Lu	Zhang	RM	China PR	33	74	181	110955
225279		Conor	McGrandles	CM	Scotland	25	64	185	1798
225868	David Gil	David	Gil Mohedano	GK	Spain	27	81	186	1968
226172		Liam	Mandeville	ST	England	24	77	180	357
226550		Christian	Zock	CM	Cameroon	27	80	190	110770
226832		Juan José	Calero	ST	Colombia	22	80	185	110781
227760		Aidan	Nesbitt	LM	Scotland	24	65	173	1798
227880		Chris	Stokes	LWB	England	30	83	185	1945
228366		Macaulay	Gillesphey	CB	England	25	70	180	1480
228795		Mazen Ali	Abu Shararah	ST	Saudi Arabia	30	76	176	112392
229419		Gavin	Reilly	ST	Scotland	28	73	181	1962
229771		Conor	McCarthy	CB	Republic of Ireland	23	75	184	422
230124		Ricardo	Escobar	CB	Chile	23	71	176	101097
231063		Clayton	Lewis	CAM	New Zealand	24	72	173	1949
231422		Víctor	Rodríguez	RM	Mexico	26	64	162	1879
231476		Essam Ahmed	Al Joufi	CDM	Saudi Arabia	26	60	170	112408
232053		Trent	Buhagiar	CAM	Australia	23	65	178	111400
232366		Nao	Iwadate	GK	Japan	32	78	183	111575
232568		Jiro	Kamata	CB	Japan	36	74	179	101145
232740		Yoshiaki	Ota	RM	Japan	38	72	176	101144
233045		Iké	Ugbo	ST	England	22	73	185	1949
233543		Luis	Hurtado	RM	Colombia	26	76	179	112578
233954		Cristian	Calderón	LB	Mexico	24	66	171	101114
234369		Marcus	Mølvadgaard	ST	Denmark	22	82	189	1786
234884		Szymon	Lewicki	ST	Poland	33	82	193	111089
235051		Darnell	Johnson	RB	England	22	80	185	95
235247		Sam	Smith	ST	England	23	73	181	1951
235516		Rami	Kaib	LB	Sweden	24	63	178	700
236038		Kyle	Duncan	RB	United States	23	68	177	689
236394		Stanley	Amuzie	LB	Nigeria	25	85	186	10032
236571		Maarten	Paes	GK	Holland	23	82	191	1903
236697		Jorris	Romil	ST	France	26	75	185	110456
237108		Mikael	Soisalo	RW	Finland	23	75	179	15005
237332		Alfie	May	ST	England	28	72	176	142
237518		Marco	Drawz	ST	Poland	22	71	177	28
237742		Kazuki	Fukai	CDM	Japan	26	72	177	112444
237918		Daichi	Sugimoto	GK	Japan	28	83	187	101151
238182		Andrés	Amaya	ST	Colombia	20	65	170	112528
238363		Raphael	Obermair	RW	Germany	25	76	182	209
238846		Theo	Archibald	LM	Scotland	23	60	180	561
238982		Utku	Şen	ST	Germany	23	83	178	576
239245		Filip	Piszczek	ST	Poland	26	77	188	110747
239466		Meris	Skenderović	ST	Montenegro	23	73	182	10029
239573		Marco	Bleve	GK	Italy	25	84	184	347
239853		Mirlind	Kryeziu	CB	Switzerland	24	96	196	894
239890		Ozan Muhammed	Kabak	CB	Turkey	21	75	186	325
240076		Sebastjan	Spahiu	CM	Belgium	21	74	172	111560
240259		Mehdi	Merghem	LW	France	24	70	178	212
240528		Mattéo	Ahlinvi	CDM	France	22	68	183	62
240583		Charlie	Lakin	CM	England	22	70	178	88
240906		Bobby	Adekanye	RW	Holland	22	62	170	9
241244		Ryan	Strain	RB	Australia	24	76	181	111393
241456		Luke	Charman	ST	England	23	83	186	13
241651		Viktor	Gyökeres	ST	Sweden	23	76	187	1808
242045		Majeed	Ashimeru	CM	Ghana	23	75	182	898
242189		Nikola	Petric	GK	Serbia	30	83	194	111705
242344		Cerruti	Siya	CM	Germany	22	80	181	159
242479		David	Henriquez	RW	Chile	22	65	173	110975
50558439		Taylor	Moore	RB	England	24	80	184	1954
50561116		Felipe	Saavedra	LB	Chile	24	67	172	112655
50563906	Song Wenjie	Wenjie	Song	RM	China PR	30	74	185	111724
50566293		Nathan	McGinley	CB	England	24	75	191	561
50569993		Kyosuke	Tagawa	ST	Japan	22	70	181	101150
50574326		Juan Camilo	Salazar	RM	Colombia	24	70	170	1013
67336917		Shayon	Harrison	ST	England	24	68	183	18
67348606		Jonathan	Klinsmann	GK	United States	24	84	194	898
84123458		Mihai	Dobre	RM	Romania	22	71	178	346
11800		Chris	Weale	GK	England	39	84	188	143
135646		Laurent	Walthert	GK	Switzerland	37	72	178	435
150995		Boris	Rotenberg	RB	Finland	35	84	188	100765
163158		Carl	Dickinson	LB	England	34	90	185	346
176793		Rawez	Lawan	CM	Sweden	33	78	178	113876
182359	Yang Qipeng	Qipeng	Yang	GK	China PR	34	76	186	111774
183829		Mohamed	Youssouf	LM	Comoros	33	64	168	614
188594		Dragan	Mihajlovic	RB	Switzerland	29	74	177	10032
195013		John	Dunleavy	RB	Republic of Ireland	30	71	183	422
198623		Nicky	Low	CM	Scotland	29	65	168	445
200061		Andrew	Tutte	CM	England	30	75	175	357
203175		Lee	Burge	GK	England	28	70	180	1800
204825		Ben	Wilson	GK	England	28	74	186	1804
205370		Hendrick	Cakin	RB	France	29	70	178	379
210418		Adam	Banasiak	CAM	Poland	31	76	185	111089
211144		Callum	McFadzean	LWB	Scotland	27	75	181	1945
212175		Paul	Farman	GK	England	31	81	186	361
212642		Petar	Petrović	LW	Sweden	25	70	178	111705
213502		Robert	Cornwall	CB	Republic of Ireland	26	86	183	305
214425		José	Quezada	GK	Chile	30	74	178	110977
215425		Filip	Sachpekidis	LM	Sweden	24	76	180	1439
216406	Oh Kwang Jin	Kwang Jin	Oh	LM	Korea Republic	34	66	172	2056
220531		Igor	Łasicki	CB	Poland	26	70	184	1569
220816		Ransford	Selasi	CM	Ghana	24	60	178	200
221486		Daniel	O'Shaughnessy	CB	Finland	26	80	190	100325
222025		Jairo	Molina	ST	Colombia	28	78	183	111723
222350	Xie Pengfei	Pengfei	Xie	RW	China PR	28	73	181	112162
222853		John	Hou Sæter	CM	Norway	23	74	180	917
224093		Marco	Komenda	CB	Germany	24	76	184	110597
224349		Mario	Seidel	GK	Germany	26	82	185	110588
224597		Michael	Eberwein	CAM	Germany	25	78	192	110169
224887		Dom	Telford	ST	England	24	72	175	1945
225808		Herman	Hallberg	CM	Sweden	24	71	180	1439
226132		Nick	Cowburn	LB	Australia	26	75	181	111398
226549		David	Salazar	ST	Chile	22	74	180	112116
226792		Modou	Jadama	CB	United States	27	80	185	111140
227601		Adam	Andersson	CM	Sweden	24	71	178	711
227815		Victor	Arboleda	RW	Colombia	24	65	170	111140
228072	Qi Tianyu	Tianyu	Qi	CDM	China PR	28	74	182	111724
228562		Raphael	Sallinger	GK	Austria	25	85	196	2017
228912		Bobby	Allain	GK	France	29	77	185	110569
229536		Horacio	Tijanovich	LM	Argentina	25	68	174	101084
229860		Fredrik	Andersson	GK	Sweden	32	91	196	320
231005		Chiedozie	Ogbene	LW	Republic of Ireland	24	75	175	1925
231262	Leja	Alberto	Lejárraga Rubio	GK	Spain	26	77	183	110832
231442		Marcus	Browne	CAM	England	23	74	179	1951
231946	Seo Jae Min	Jae Min	Seo	RM	Korea Republic	23	60	169	2056
232367		Haruki	Fukushima	GK	Japan	28	78	182	111575
232541		Ryuji	Izumi	CAM	Japan	27	72	173	112092
232856		Shuto	Kono	CAM	Japan	28	70	179	112448
233085		Federico	Costa	GK	Argentina	32	89	188	110581
233324		Víctor	Cabezas	GK	Colombia	23	79	186	111723
233902		Amadou Tidiane	Diallo	LM	France	27	77	178	111273
234129		Doğukan	Sinik	CAM	Turkey	22	66	175	741
234645		Nathan	McGinley	CB	England	24	75	191	12
234785		Stephane	Omeonga	CM	Belgium	25	72	177	110556
234897		Jakub	Arak	ST	Poland	26	78	183	111091
235237		Robert	Jendrusch	GK	Germany	25	83	191	506
235558		Thibault	Campanini	RB	France	23	72	177	110316
236006		Jordan	O'Doherty	LW	Australia	23	62	168	112427
236369		Cédric	Zesiger	CB	Switzerland	23	88	194	322
236629		Christopher	Opéri	LM	Côte d'Ivoire	24	73	183	212
236846	Kenny Rocha Santos	Kenny	Rocha Santos	CAM	Cape Verde Islands	21	67	174	1819
237093	Lee Eun Beom	Eun Beom	Lee	ST	Korea Republic	25	64	170	1478
237277		Ethan	Kutler	RB	United States	26	70	180	689
237433		Haruya	Ide	CAM	Japan	27	66	171	112093
237592		Michael	Blauensteiner	RB	Austria	26	78	182	2017
237818		Nahuel	Arena	CB	Argentina	23	68	183	101088
237977	Kim Han Gil	Han Gil	Kim	RW	Korea Republic	26	69	177	982
238044		Saad	Al Khayri	RB	Saudi Arabia	26	75	173	112096
238223		Bruce	Bvuma	GK	South Africa	26	73	186	110929
238613		Onur	Ural	RB	Turkey	24	80	181	111339
238852		Grad	Damen	CM	Holland	23	75	185	1904
239126		Mohammed	Al Baqawi	RB	Saudi Arabia	26	69	172	605
239418		Lion	Lauberbach	CAM	Germany	23	83	192	110592
239568		Adnan	Kovačević	CB	Bosnia and Herzegovina	27	80	189	111083
239710	Gorka Giralt	Gorka	Giralt Amotxategi	GK	Spain	25	79	190	110827
239930		Damian	Rasak	CDM	Poland	25	77	184	1569
240123		Luca	Plogmann	GK	Germany	21	78	188	38
240242		Aimery	Pinga	ST	Switzerland	23	86	185	322
240472	Hu Ruibao	Ruibao	Hu	CB	China PR	24	80	186	111839
240577		Khetag	Khosonov	CDM	Russia	23	76	185	315
240903	Javi Pérez	Javier	Pérez Mateo	CM	Spain	25	74	184	462
241214		Makoto	Okazaki	CB	Japan	22	74	181	101150
241256	Zhang Mengqi	Mengqi	Zhang	CDM	China PR	31	65	178	112977
241659		Stephen	Odey	ST	Nigeria	23	72	182	894
242048		Frantz	Pangop	LW	Cameroon	28	75	179	111138
242220		Daichi	Inui	CB	Japan	31	73	184	113160
242419		Bilal	Njie	RW	Norway	23	65	173	1456
242528		Thomas	Buitink	ST	Holland	21	68	174	1909
50560232		Adam	May	CM	England	23	73	182	1934
50562767	Erin Pinheiro	Erin Jorge	Gomes Pinheiro	CM	Cape Verde Islands	24	82	190	1463
50575928		Adrian	Fein	CM	Germany	22	81	187	543
67337076		Andreas	Helmersen	ST	Norway	23	82	190	1456
67347657		Thore	Jacobsen	LB	Germany	24	76	182	110588
84121449		Stefan	Mladenovic	LW	Norway	27	65	177	1757
53352		Dannie	Bulman	CM	England	42	75	175	110890
139348		Antony	Kay	CDM	England	38	85	180	1928
144156		Mustafa	Sejmenovic	CB	Bosnia and Herzegovina	35	80	185	435
165932		Derek	Pender	RB	Republic of Ireland	36	75	177	305
179757		Zoumana	Bakayogo	LB	Côte d'Ivoire	34	69	175	15048
182352	Li Benjian	Benjian	Li	LM	China PR	35	73	179	111779
185165		Peter	Vincenti	RM	England	35	76	191	1959
189828		Mark	Byrne	CM	Republic of Ireland	32	70	175	1802
194363		Naoki	Yamada	CM	Japan	31	66	168	111575
198655		Christopher	Missilou	CM	Congo	29	75	182	1920
202549		Ivar Erlien	Furu	CB	Norway	27	84	191	112200
202984	Yoon Dong Min	Dong Min	Yoon	ST	Korea Republic	33	72	176	1475
204721	Lee Jong Won	Jong Won	Lee	CDM	Korea Republic	32	70	176	2055
208531		Patrick	McLain	GK	United States	32	93	191	693
208816		Mitchell	Rose	CM	England	27	78	176	92
210791		Abdullah	Al Saleh	GK	Saudi Arabia	31	78	184	112096
212133		Andreas	Hollingen	CM	Norway	26	65	175	1524
213344		Dillon	Barnes	GK	England	25	78	193	1935
213834		Koby	Arthur	RM	Ghana	25	68	168	1959
215084		Bastien	Héry	CM	France	29	65	175	753
215649		Terry	Hawkridge	RM	England	31	70	175	1937
216155		Harry	Cornick	RM	England	26	84	180	1923
219737		Caolan	McAleer	RM	Northern Ireland	27	67	175	563
220882		Fabian	Graudenz	LM	Germany	29	76	181	162
221487		José Luis	Sierra	ST	Chile	24	71	182	110977
221976	Jiang Zhe	Zhe	Jiang	RB	China PR	32	84	179	111769
222227		Patrick	Berg	CM	Norway	23	70	178	918
222695		Raif	Husić	GK	Germany	25	87	190	550
223805		Alex	Whitmore	CB	England	25	68	180	92
224345		Alexandros	Kartalis	LB	Greece	26	66	178	110592
224685	Zhang Xiaobin	Xiaobin	Zhang	CM	China PR	27	72	188	112162
225051		Ben	Warland	CB	Australia	24	82	185	111400
225751		Aston	Oxborough	GK	England	23	76	185	1792
226140		Diego	Chávez	ST	Mexico	26	61	180	110145
226521		Erik	Andersson	CM	Sweden	24	78	179	703
226791		Taylor	Moore	RB	England	24	80	184	1919
227173		Martin	Payares	CB	Colombia	26	72	182	111723
227870		André	Sødlund	RM	Norway	24	76	185	1456
228152		Emmanuel	Onariase	CB	England	24	77	188	1797
228584		Adam	May	CM	England	23	73	182	1790
229267		Philipp	Hercher	LM	Germany	25	81	184	111379
229604		Josef	Yarney	CB	England	23	70	183	357
230121		Vamara	Sanogo	ST	France	26	85	186	111089
230801		Ali Abdullah	Hazazi	CM	Saudi Arabia	27	63	183	112096
231147		Rafał	Wolsztyński	ST	Poland	26	70	180	420
231426		Markus	Pavić	LB	Austria	26	74	184	226
231914		Daniel	Margush	GK	Australia	23	80	187	111393
232258	Song Wenjie	Wenjie	Song	RM	China PR	30	74	185	112978
232452		Koji	Hachisuka	RM	Japan	31	75	180	112836
232687		Hiromu	Mitsumaru	LB	Japan	28	69	172	113160
232990		Masato	Kurogi	CM	Japan	31	72	180	112448
233404		Iván	Rojas	CDM	Colombia	24	76	177	112526
233965		Alessio	Castro-Montes	RM	Belgium	24	67	175	2013
234225	Sergi Álamo	Sergi	Álamo Bautista	LB	Spain	23	80	190	110062
234769	Juampe	Juan Pedro	Jiménez Melero	CM	Spain	25	77	184	1968
234877		Fabijan	Buntić	GK	Croatia	24	86	194	111239
235209		Alexander	Siebeck	CM	Germany	27	75	183	1832
235329		James	Gibbons	RB	England	23	60	175	1928
235960		Gökay	Güney	CDM	Turkey	22	72	180	325
236297		Maurício	Cortés	CAM	Colombia	24	74	176	112903
236454		Souleyman	Doumbia	LB	Côte d'Ivoire	24	73	177	322
236657		Filip	Ugrinic	CM	Switzerland	22	84	184	897
237085	Yoo Seung Min	Seung Min	Yoo	LW	Korea Republic	22	70	181	1477
237220		Chris	Odoi-Atsem	RB	United States	26	68	178	688
237363		Johan	Andersson	RB	Sweden	26	66	176	710
237525		Arnaud	Bodart	GK	Belgium	23	75	184	232
237793		Takaki	Fukumitsu	RM	Japan	29	63	171	101148
237982		Yeison	Guzmán	CAM	Colombia	23	64	166	112526
238194		Nahuel	Bustos	RW	Argentina	23	74	176	112670
238485		Michael	Kessel	LM	Germany	36	70	176	110169
238659		Kamer	Krasniqi	CM	Kosovo	25	67	177	487
238980		Lukas	Daschner	CAM	Germany	22	68	182	1825
239393		Dominik	Frieser	RM	Austria	27	78	178	252
239496		Yassin	Fekir	LW	France	24	65	170	66
239848		Oleksiy	Dytyatev	CB	Ukraine	32	88	196	110747
239952		Ákos	Kecskés	CB	Hungary	25	75	190	10032
240119		Konrad	Michalak	RM	Poland	23	61	174	111091
240175	Bruno Jordão	Bruno André	Cavaco Jordão	CM	Portugal	22	71	180	46
240345		Idris	Kanu	ST	England	21	75	182	1928
240532		Fabian	Rohner	RM	Switzerland	22	67	178	894
240785		Michele	Cerofolini	GK	Italy	22	80	188	112168
241038		Keanan	Bennetts	LM	England	22	73	183	23
241332	Zhang Huachen	Huachen	Zhang	CDM	China PR	23	67	175	112540
241502		Kenny	Athiu	ST	South Sudan	29	75	190	111397
241765		Chima	Akas	LB	Nigeria	27	90	188	1439
242023		Siphosakhe	Ntiya-Ntiya	LB	South Africa	24	62	166	110929
242129		Róger	Lemus	CM	Colombia	29	69	170	112970
242225		Jabor	Issa	CDM	Saudi Arabia	24	75	185	607
242429		Liberato	Cacace	LB	New Zealand	20	66	170	111766
50565191		Luis	Hurtado	RM	Colombia	26	76	179	112992
50566895		Sam	Smith	ST	England	23	73	181	127
50569498		Cristian	Echavarría	LM	Colombia	24	64	165	101103
67319013		Mohammed	Majrashi	ST	Saudi Arabia	30	72	180	112390
67344152		Sam	Schreck	CAM	Germany	22	68	180	1915
84114738		Kevin	O'Connor	LB	Republic of Ireland	26	75	188	422
84127816		Yann Aurel	Bisseck	CB	Germany	20	83	194	576
121980		André	Poggenborg	GK	Germany	37	85	186	110169
140424		Chris	Beardsley	ST	England	37	81	183	15015
152724		Danny	Pugh	CM	England	38	76	183	1928
173785		Luke	Joyce	CM	England	34	76	180	1928
182118	Jiang Ning	Ning	Jiang	CM	China PR	34	70	178	112978
183140		Artur	Krysiak	GK	Poland	31	83	193	918
189377		Søren	Frederiksen	LM	Denmark	32	76	185	1447
197597		Fozil	Musaev	CM	Uzbekistan	32	74	183	101144
199139		Stephen	Folan	CB	Republic of Ireland	29	76	185	837
201111		Maciej	Górski	ST	Poland	31	75	183	111083
203005	Kim Jin Hwan	Jin Hwan	Kim	CB	Korea Republic	32	78	186	2055
205026		Shaun	Byrne	CM	Scotland	28	74	183	621
207513		Gavan	Holohan	CAM	Republic of Ireland	29	75	180	753
210108		Elliot	Lee	ST	England	26	72	180	1923
210785		Basim	Al Baqi	GK	Saudi Arabia	31	89	185	112387
212532	Lee Sang Hyeob	Sang Hyeob	Lee	CM	Korea Republic	31	66	177	2055
213318		Jordon	Forster	RB	Scotland	27	76	187	1936
213521		Stéphan	Raheriharimanana	CDM	Madagascar	27	64	168	111273
214902		Johnny	Hunt	LB	England	30	65	180	361
215820		Liam	Donnelly	RB	Northern Ireland	25	76	182	83
217994		Michael	Crowe	GK	Wales	25	84	193	1801
220669		Fejiri	Okenabirhie	ST	Nigeria	25	74	178	127
220995		Osarenren	Okungbowa	CDM	Austria	27	76	187	112075
221864	Chen Hao	Hao	Chen	CB	China PR	28	78	186	111779
222045		Craig	Halkett	CB	Scotland	26	75	183	621
222471		Jonathan	Rasheed	GK	Norway	29	91	191	711
223040		Faruk	Çakır	GK	Turkey	26	80	191	101014
224307		Tennai	Watson	RB	England	24	73	179	112259
224430		Dennis	Chessa	LM	Germany	28	70	179	167
224865		Craig	Wighton	ST	Scotland	24	72	185	180
225061		Ahmad	Al Ruhaili	GK	Saudi Arabia	26	88	189	112392
226051	Carlos Alves	Carlos Reinaldo	Moreira Alves	GK	Portugal	23	80	187	744
226197	Feng Jing	Jing	Feng	CAM	China PR	27	70	175	112165
226579		Alex	Zendejas	LM	Mexico	23	65	169	1880
227502		Muhammed	Balcılar	ST	Turkey	25	66	170	101037
227869		William	Kurtovic	CM	Sweden	25	85	190	1757
227884		Bright	Osayi-Samuel	LM	Nigeria	23	72	175	15
228714		Giulio	Bizzotto	CF	Italy	24	67	170	111993
229163		Callum	Slattery	CAM	England	22	70	190	17
229607		George	Mells	CM	Australia	24	75	178	634
229930		Kyle	Knoyle	RB	England	24	63	177	1934
230836		Erlend	Dahl Reitan	RB	Norway	23	70	180	298
231266		Nicolas	Janvier	CAM	France	22	72	171	74
231472		Emmanuel	Ntim	RB	Ghana	25	72	179	110456
231926		Trevor	Clarke	LB	Republic of Ireland	23	66	165	306
232371		Wataru	Hashimoto	LB	Japan	34	72	181	101146
232646		Claudio	Bravo	LB	Argentina	24	69	170	110404
232985		Takahiro	Kunimoto	ST	Japan	23	76	174	111588
233176		Mitsuki	Saito	RM	Japan	22	61	165	113161
233887		Julián	Chicco	CDM	Argentina	23	76	185	1877
234110		Mohamed	Al Otaibi	LM	Saudi Arabia	28	58	170	112408
234249		Sam	Surridge	ST	England	23	77	191	1920
234843		Maxim	Leitsch	CB	Germany	23	75	188	160
234886		Milan	Dimun	CDM	Slovakia	24	76	186	110747
235205		Bright	Gyamfi	RB	Ghana	25	76	178	112026
235605		Tyler	Reid	RB	England	23	86	186	1960
236216		Evans	Mensah	RW	Ghana	23	62	165	100325
236540		Samuel	Adrian	CM	Sweden	23	75	182	320
236898		Michel	Aebischer	CM	Switzerland	24	74	183	900
237140		Ludvig	Fritzson	CM	Sweden	25	77	184	113173
237232		Batuhan	Şen	GK	Turkey	22	81	192	325
237395		Victor	van den Bogert	CB	Holland	21	81	185	1907
237776		Kenta	Tanno	GK	Japan	35	75	184	101148
237936		Aron	Dønnum	RW	Norway	23	73	179	920
238155		Øyvind	Alseth	RB	Norway	26	77	183	112200
238270		August	Erlingmark	CM	Sweden	23	80	189	319
238494		Denis	Gojko	CAM	Poland	23	56	176	111086
238937		Patrick	Posipal	CDM	Germany	33	78	189	110597
239051		Josué	Albert	CB	France	29	86	185	1815
239306		Jelle	Bataille	RM	Belgium	22	71	175	682
239476		Sandro	Ingolitsch	RB	Austria	24	72	179	112075
239819		Sincere	Seth	RB	Nigeria	23	65	170	113259
239889		Recep	Gül	LM	Turkey	20	75	167	325
240045		Ivan	Ljubić	CM	Austria	25	75	184	2017
240156		Luca	Marseiler	LM	Germany	24	68	176	172
240319		Timothy	Tillman	CAM	Germany	22	75	182	171
240448		Pablo	Ruiz	LW	Argentina	22	68	172	111065
240627		Armando	Anastasio	LB	Italy	25	73	180	112168
241051		Ahmet	Canbaz	CAM	Turkey	23	73	182	110500
241394		Ayo	Akinola	ST	United States	21	82	170	111651
241648		Budimir	Janošević	GK	Serbia	31	86	190	433
242014		Yuto	Suzuki	CF	Japan	27	70	182	111730
242122		Daichi	Tagami	CB	Japan	28	78	180	112448
242298		Edward	Opoku	ST	Ghana	24	64	170	687
242401		Sabir	Bougrine	CM	Morocco	25	68	174	111817
50565897		Sam	Surridge	ST	England	23	77	191	1943
50569842		Nahuel	Bustos	RW	Argentina	23	74	176	110147
50571538		Ozan Muhammed	Kabak	CB	Turkey	21	75	186	36
50572275		Armando	Anastasio	LB	Italy	25	73	180	48
50573104		Luke	Charman	ST	England	23	83	186	110313
50575818		Dejan	Vokic	CDM	Slovenia	25	79	190	112026
50577036		Jean-Clair	Todibo	CDM	France	21	81	187	241
67330738		Emmanuel	Besea	CM	Ghana	24	75	183	205
67335696		Juan José	Calero	ST	Colombia	22	80	185	110147
166713		Barry	Murphy	GK	Republic of Ireland	36	82	179	423
181849	Cui Peng	Peng	Cui	CDM	China PR	34	76	178	111724
182362	Tan Wangsong	Wangsong	Tan	RB	China PR	35	70	180	111774
187028		David	McAllister	CM	Republic of Ireland	32	80	181	306
191677	Ahn Seong Nam	Seong Nam	Ahn	CDM	Korea Republic	37	68	174	111588
200195	Ramón	Ramón	Rodríguez da Silva	RB	Brazil	30	83	182	1447
201169		Konrad	Forenc	GK	Poland	29	86	191	110749
203424		Elliott	Whitehouse	CM	England	27	80	180	92
204985		Lukas	Fernandes	GK	Denmark	28	82	186	1447
206082		Kyle	Callan-McFadden	CB	Republic of Ireland	26	78	183	563
209024		Aaron	Barry	CB	Republic of Ireland	28	77	181	422
211152		Madallah	Al Olayan	RB	Saudi Arabia	26	68	170	112393
213127		Aaron	McGowan	RWB	England	25	80	180	184
214896		Paul	Mullin	ST	England	26	71	178	15048
216526		Alex	Gogić	CB	Cyprus	27	83	185	184
218591		Sean	Long	RB	Republic of Ireland	26	70	178	1936
220841		John	Sanchez	LW	Colombia	26	60	170	112970
221826	Li Tixiang	Tixiang	Li	CB	China PR	31	72	181	112429
222624	Bai Yuefeng	Yuefeng	Bai	RB	China PR	34	74	180	111774
223908		Victor	Wernersson	LWB	Sweden	26	70	180	319
224466	Ba Dun	Dun	Ba	CAM	China PR	25	72	181	111768
224673	Zhang Li	Li	Zhang	CM	China PR	32	70	172	111769
225716		Abduwal	Ablet	LWB	China PR	34	68	178	111779
225976		Sultan Ahmed	Mandash	RM	Saudi Arabia	26	63	167	112389
226524		Marko	Johansson	GK	Sweden	22	80	192	703
227941		Brendan	Moore	GK	United States	29	85	188	1955
228383		Kamil	Grabara	GK	Poland	22	75	190	9
228836		Elhadj	Dabo	CDM	Senegal	25	71	181	110456
229279		Marco	Hingerl	CM	Germany	25	72	182	111379
229718		Will	Patching	CM	England	22	70	185	1937
230897		Brandon	Hanlan	ST	England	24	73	182	1802
231033		Joe	Maguire	LB	England	25	70	179	112260
232161		Robin	Tranberg	CB	Sweden	28	81	186	113876
232471		Naoki	Sugai	RM	Japan	36	70	178	112836
232803		Naoki	Maeda	CAM	Japan	26	66	175	112092
232904		Abdulrahman	Al Dawsari	CDM	Saudi Arabia	23	69	178	112139
233022	Yang Ting	Ting	Yang	RB	China PR	28	72	183	112977
233269		Kip	Colvey	LB	New Zealand	27	73	178	694
233793		Aaron	Lewis	RB	Wales	23	85	183	1960
233961		Sami	Al Najai	CDM	Saudi Arabia	24	59	176	112139
235061		Omar Abdulaziz	Al Sunain	RB	Saudi Arabia	26	71	169	112096
235405		Dara	O'Shea	CB	Republic of Ireland	22	65	178	143
235551		Ibrahim Fahad	Al Shuayl	LB	Saudi Arabia	26	73	167	112391
235744		Brandon	Thomas-Asante	LM	England	22	74	175	1798
169631		Billy	Dennehy	LM	Republic of Ireland	34	74	173	111285
182347	Ou Ya	Ya	Ou	GK	China PR	35	85	193	112978
184801		Andrew	Fleming	CM	England	33	67	180	357
189331		Greg	Taylor	CB	England	31	73	177	1944
193740		Liam	Ridehalgh	LB	England	30	72	178	15048
200263		David	Cawley	CM	Republic of Ireland	29	76	178	563
202881		Keith	Buckley	RB	Republic of Ireland	29	71	180	305
204889		Bernard	Mensah	ST	England	26	59	173	1962
205145		Scott	Fraser	CAM	Scotland	26	69	183	15015
206500		Jonny	Maxted	GK	England	27	71	183	110313
210944	Kim Ji Min	Ji Min	Kim	ST	Korea Republic	28	64	180	1474
213489		Mateusz	Kuchta	GK	Poland	25	73	188	110749
215365		Luca	Forte	ST	Italy	27	64	175	200
217332		Emmanuel	Monthe	CB	Cameroon	26	82	193	15048
219701		Jakub	Wrąbel	GK	Poland	25	87	194	111092
221528		Nathan	Konstandopoulos	CM	Australia	25	76	178	111393
222582	Kim Yeong Bin	Yeong Bin	Kim	CB	Korea Republic	29	74	181	2055
223683		Thomas	De Bie	GK	Belgium	24	77	183	682
223953		Cole	Kpekawa	LB	England	25	80	191	100805
224543		Maksymilian	Stryjek	GK	Poland	25	82	188	106
225355		William	Parra	CDM	Colombia	26	55	165	101103
225775		Marc	Bola	LB	England	23	78	185	1926
227082		Darragh	Markey	CAM	Republic of Ireland	24	65	170	423
227855		Besard	Sabovic	CM	Sweden	23	77	186	710
228077	Wang Qiuming	Qiuming	Wang	LM	China PR	28	64	173	112978
228685		Elliott	List	ST	England	24	72	178	1802
228845		Helge	Sandvik	GK	Norway	31	75	183	1463
229393		Sam	Hornby	GK	England	26	80	185	1928
229922		Osama Yousef	Al Khalaf	CDM	Saudi Arabia	24	60	176	112096
231028		Matija	Šarkić	GK	Montenegro	24	73	192	2
231881		Nathan	Bizet	ST	France	24	81	190	57
232509		Kazuyuki	Morisaki	CM	Japan	40	75	177	113157
232743		Tetsuya	Enomoto	GK	Japan	38	76	180	111575
232936		Kenta	Tokushige	GK	Japan	37	87	187	112448
233159		Tsuyoshi	Shimamura	CB	Japan	35	76	183	113161
233378		Jordan	Shipley	LM	England	23	73	183	1800
233812		Anderson	Lucoqui	LB	Germany	24	72	180	110636
234264	Jeong Seung Won	Seung Won	Jeong	RW	Korea Republic	24	68	170	2056
235401		Vladimir	Golemić	CB	Serbia	30	83	192	110734
235481		Ahmed	Al Shamrani	CB	Saudi Arabia	27	65	175	112408
235596		Jadaan	Al Shammari	CM	Saudi Arabia	29	80	183	112990
172680		Stuart	Sinclair	CM	England	33	67	170	1962
182046	Zhou Liao	Liao	Zhou	ST	China PR	32	78	184	111774
188831		Joe	Martin	LB	England	32	83	183	1962
191563		Tomohiko	Miyazaki	LM	Japan	34	68	170	101144
198162		Freddy	Mveng	CM	Switzerland	29	80	176	110770
201457		Vadaine	Oliver	ST	England	29	78	188	357
203830		Sam	Kelly	LM	England	27	78	183	184
205075		Kevin	Bigler	RB	Switzerland	28	70	171	1715
206200		Dean	Clarke	LM	Republic of Ireland	28	81	178	423
206575		JJ	Hooper	ST	England	27	83	185	92
209895		Matthew	Acton	GK	Australia	29	85	184	111397
212295		Alefe	Santos	RM	Brazil	26	66	178	346
213333		Osama	Ashoor	RB	Saudi Arabia	31	75	170	113219
216620		Sotan	Tanabe	CDM	Japan	31	68	175	101150
219657		Lukas	Wedl	GK	Austria	25	74	186	2045
220994		Jack	Bridge	CAM	England	25	73	178	1930
222191	Sun Bo	Bo	Sun	LM	China PR	30	72	180	112378
223189		Johan	Ramhorn	CB	Sweden	25	74	178	1439
223969		James	Jones	CM	Scotland	25	68	175	121
224602	Zhang Wei	Wei	Zhang	LB	China PR	28	73	176	112540
225674		Diego	Fernández	CM	Chile	23	70	175	112531
226193	Cui Yongzhe	Yongzhe	Cui	RB	China PR	34	67	176	112165
227529		Mathew	Hudson	GK	England	23	75	193	1945
227997		Offrande	Zanzala	ST	Congo	24	72	185	110313
228510		Haris	Hyseni	ST	Germany	28	88	192	543
229008		Adam	Wilk	GK	Poland	23	87	196	110747
229243		Tim	Wiesner	GK	Germany	24	87	192	110636
229725		Mathias	Kristensen	LW	Denmark	24	60	173	1445
230697		Ethan	Robson	CM	England	25	73	178	106
231144		Christian	Maghoma	CB	Congo DR	23	88	195	111082
232104		Daniel	James	LW	Wales	23	76	170	1960
232427		Ryota	Aoki	LW	Japan	25	65	173	112092
232784		Ikki	Arai	CB	Japan	27	75	185	112092
232854		Tasuku	Hiraoka	CAM	Japan	25	62	165	101150
233052		Jacob	Maddox	CAM	England	22	72	178	1936
233366		Valentin	Henry	LM	France	27	73	178	378
233705		Jacob	Lungi Sørensen	CM	Denmark	23	74	180	1445
234139		Issam Ben	Khemis	CM	Tunisia	25	72	175	142
235141		Phillip	Menzel	GK	Germany	22	84	192	175
235464		Jordan	Storey	CB	England	23	75	188	1801
235500		Abdulmalek	Al Shammary	LM	Saudi Arabia	25	66	178	111674
177761		Phil	Edwards	RWB	England	35	71	173	1945
182419	Ding Jie	Jie	Ding	CB	China PR	34	70	182	112165
184599		Robbie	Simpson	ST	England	36	75	185	1798
189206		Billy	Bingham	CDM	England	31	71	180	1802
190179		David	Cornell	GK	Wales	30	79	188	1930
198761		Brent	McGrath	ST	Australia	30	80	184	1445
202079		Davor	Blazevic	GK	Sweden	28	88	190	708
203539		Kevin	Devaney	LM	Republic of Ireland	30	70	179	305
205019		Jake	Caprice	RB	England	28	73	179	15048
206081		Reece	Hall-Johnson	RB	England	26	67	173	92
208290		Luke	Byrne	LB	Republic of Ireland	28	78	183	306
212006		Billy	Waters	ST	England	26	73	173	1930
213856		Konrad	Wrzesiński	RB	Poland	27	65	177	111089
216563		Collin	Martin	CDM	United States	26	68	180	111138
219874		Andy	Dales	LM	England	26	70	181	1949
221589		Jai	Ingham	RW	New Zealand	27	72	180	111397
222469		Christian	Rubio Sivodedov	CM	Sweden	23	72	177	1596
223270		David	Olsson	GK	Sweden	24	94	197	700
224009		Elohor Godswill	Ekpolo	RB	Nigeria	26	73	180	711
224526		Jordan	Lyden	CM	Australia	25	70	178	2
225176		Chérif	Quenum	CB	France	28	80	182	110456
225756		George	Blackwood	ST	Australia	24	74	189	111393
226025		Jakub	Serafin	CM	Poland	25	69	181	110747
227791	Lee Tae Hee	Tae Hee	Lee	RB	Korea Republic	29	75	183	2055
227977		Yann	Mabella	ST	France	25	78	182	1823
228578		Will	Wood	LB	England	24	67	174	110313
228999		Sven	Joss	LB	Switzerland	27	68	179	1715
229372		Aron	Davies	CB	Wales	23	80	186	144
229956		Lawrence Ati	Zigi	GK	Ghana	24	83	188	226
230930	Nuno Malheiro	Nuno Jorge	Barbosa Malheiro	LB	Portugal	27	69	170	111089
231997		Femi	Hollinger-Janzen	ST	Benin	27	79	183	691
232264	Che Shiwei	Shiwei	Che	RM	China PR	24	73	183	112978
232674		Fahad	Ghazi	LB	Saudi Arabia	27	70	177	111674
232850		Takahiro	Yanagi	RB	Japan	24	79	185	101150
232973		Kensuke	Fukuda	RM	Japan	37	70	174	112448
233180		Jin	Hanato	CF	Japan	31	66	178	113161
233679		Kiichi	Yajima	ST	Japan	26	78	186	101150
233865		Ronan	Hale	ST	Republic of Ireland	22	70	176	445
234918		Michał	Nalepa	CM	Poland	26	74	170	111082
235271		Artur	Siemaszko	ST	Poland	24	74	181	110749
235487		Mohammed	Rayman	LB	Saudi Arabia	24	65	174	607
235606		Jacob	Karlstrøm	GK	Norway	24	90	200	418
179767		Chris	Dunn	GK	England	33	79	193	1803
182738		Jared	Hodgkiss	RB	England	34	71	168	1959
187454	Heo Jae Won	Jae Won	Heo	LB	Korea Republic	37	83	188	1475
193658		Jordan	Kirkpatrick	CAM	Scotland	29	73	179	100805
200714		Hallam	Hope	ST	England	27	76	179	1480
202981	Choi Jin Ho	Jin Ho	Choi	RM	Korea Republic	31	70	173	2055
204494		Alexander	Riemann	LM	Germany	29	78	183	252
205589		Curtis	Thompson	CM	England	27	77	178	1933
206409		Tyrone	Marsh	ST	England	27	80	180	1959
209285		Bevis	Mugabi	RB	Uganda	26	75	189	346
212178		Jonathan	Flatt	GK	England	26	88	191	1949
214525		David	Richards	GK	Wales	27	78	181	121
215816		Dean	O'Halloran	LM	Republic of Ireland	25	70	173	753
218646		Martin	Smith	CM	England	25	70	178	1934
220041		Nicolas	Lüchinger	RB	Switzerland	26	69	174	898
222179	Jin Pengxiang	Pengxiang	Jin	RB	China PR	31	77	187	112378
222820		Esteban	Salles	GK	France	27	78	187	1805
223804		Conor	Mitchell	GK	Northern Ireland	25	74	183	100804
224318		Omari	Sterling-James	ST	St. Kitts and Nevis	27	64	177	1940
224895		Federico	Serraiocco	GK	Italy	27	83	191	112409
225509		Aaron	Collins	ST	Wales	24	74	185	1935
225991	Zhang Chenlong	Chenlong	Zhang	LB	China PR	28	65	175	112429
227807		Michael	Folivi	ST	England	23	79	175	1795
228304		Kyle	McFarlane	ST	England	24	74	180	88
228783		Ali	Lajami	CB	Saudi Arabia	25	75	178	112390
229082		Oliver	Abildgaard	CM	Denmark	25	66	175	820
229706		Valentin	Wojtkowiak	CB	France	24	72	184	64
229900		Sandro	Lauper	CM	Switzerland	24	70	185	900
230935		Zeus	de la Paz	GK	Curaçao	26	78	188	1920
231858		Drew	Conner	RB	United States	27	75	180	693
232369		Daisuke	Nasu	CB	Japan	39	77	180	101146
232727		Kei	Ikeda	CF	Japan	34	72	178	113160
232825	Myeong Joon Jae	Joon Jae	Myeong	CAM	Korea Republic	27	74	174	1477
232944		So	Fujitani	RB	Japan	23	62	178	101146
233197	Gui Hong	Hong	Gui	ST	China PR	26	83	185	112978
233446		Erik	Næsbak Brenden	RM	Norway	27	72	180	299
233800		Fredrik André	Bjørkan	LB	Norway	22	75	175	918
234643		Leon	Bätge	GK	Germany	24	88	188	110197
235155		Jan	Bekkema	GK	Holland	25	90	186	1913
235493		Tareq	Abdullah	RB	Saudi Arabia	25	64	170	607
235572		Ross	Sykes	CB	England	22	73	196	110313
235800		Marin	Šverko	LB	Croatia	23	81	187	1832
235785		Connor	Hall	ST	England	23	77	180	4
235820		Paul	Gartler	GK	Austria	24	75	185	254
236008		Ben	Morris	ST	England	22	60	175	94
236027		James	Brown	RB	England	23	79	178	621
236029		Callum	Cockerill-Mollett	LB	Republic of Ireland	22	70	178	1803
236455		Jonathan	Morsay	RW	Sweden	23	75	177	1596
236365		Connor	Wood	LB	England	25	78	177	1804
236557		Omari	Patrick	ST	England	25	73	185	346
236344		Jayson	Molumby	CM	Republic of Ireland	22	64	177	1808
236588		Quentin	Bena	CM	France	23	79	185	1813
236654		Manuel	Manari	RW	Italy	23	68	175	1847
237053		Vyacheslav	Tankovskyi	CM	Ukraine	25	60	168	101059
237005		Keanu	Baccus	CDM	Australia	23	63	176	112427
236852		Jonathan	Garay	LB	Colombia	28	73	174	112019
237082		Sotirios	Pispas	ST	Greece	23	69	177	1884
237097	Moon Jeong In	Jeong In	Moon	GK	Korea Republic	23	80	193	1473
237231		Hicham	Benkaïd	ST	France	31	71	178	112276
237224		Brian	Wright	ST	Canada	26	88	183	691
237260		Colton	Storm	RB	United States	27	75	178	696
237359		Lukas	Jonsson	GK	Sweden	28	95	191	113458
237372	Son Mu Bin	Mu Bin	Son	GK	Korea Republic	23	82	189	982
237381		Brylon Lee	Petersen	GK	South Africa	25	79	188	110929
237682		Adam	Najem	CAM	United States	26	68	173	112134
237821		Itsuki	Oda	LB	Japan	23	68	173	101147
237719		Sam	Jones	ST	Wales	29	78	188	1936
237753		Takahiro	Iida	RB	Japan	26	70	179	101149
237825		Nya	Kirby	CAM	England	21	66	173	1799
237849		Ricardo	Marín	ST	Mexico	23	72	181	101121
238011		Petar	Pusic	CM	Switzerland	22	63	169	322
238058		Callum	O'Hare	CAM	England	23	65	173	2
238024		Evren	Korkmaz	CB	Holland	24	75	181	100651
238060		Nathan	Trott	GK	England	22	70	184	19
238081		Esneyder	Mena	RM	Colombia	23	70	175	112527
238103	Liu Junshuai	Junshuai	Liu	CB	China PR	26	80	185	111724
238236		Ola	Brynhildsen	RM	Norway	22	70	179	917
238326		Mitch	Candlin	ST	England	21	74	184	1803
238389		Ben	Wilmot	CB	England	21	80	188	1795
238347	Joo Hyun Ho	Hyun Ho	Joo	LW	Korea Republic	25	77	184	983
238449		Anthony	Ikedi	CDM	Nigeria	22	80	198	1463
238490		Ilias	Chair	CAM	Belgium	23	68	173	15
238656		Steffen	Tigges	RM	Germany	23	84	195	487
238503		Leo	Weinkauf	GK	Germany	25	82	189	485
238518		Franco	Pardo	CB	Argentina	24	80	183	111022
238670		Kevin	Hoffmann	CAM	Germany	26	80	181	110592
238912		Salek	Abdullah	CB	Saudi Arabia	32	70	179	113219
238920		Juan	Córdova	RB	Canada	26	68	165	111327
238731		Vincent-Louis	Stenzel	RM	Germany	24	70	178	110591
238927		Jeroen	Gies	GK	Germany	26	79	187	110597
238934		Max	Kremer	RM	Germany	32	69	176	110597
239028		Aboubakary	Koita	LM	Belgium	22	73	173	674
239098		Leon	Fesser	CB	Germany	26	79	192	10030
239201		Ali	Ceylan	LM	Germany	23	65	169	110169
239205		Amer	Didic	CB	Canada	26	88	193	696
239267		Afimico	Pululu	ST	Angola	22	83	175	896
239305	Madger Gomes	Madger Antonio	Gomes Ajú	CAM	Spain	24	74	180	226
239307		Robbie	D'Haese	LM	Belgium	22	65	179	682
239536		Łukasz	Kosakiewicz	RM	Poland	30	71	176	111083
239858	Song Long	Long	Song	RB	China PR	31	69	184	111724
240439		Ryan	Porteous	CB	Scotland	22	68	185	81
240704	Guo Quanbo	Quanbo	Guo	GK	China PR	23	80	185	111768
240829		Etienne	Amenyido	ST	Germany	23	75	180	487
240886		Rollin	Menayese	CB	Wales	23	80	190	1962
241654		Christopher	Brandeborn	RW	Sweden	30	75	174	111705
242039		Chaowat	Veerachat	CM	Thailand	25	63	171	101148
242430		Stan	van Dijck	CB	Holland	20	80	193	100651
242493		Wilmar	Cruz	ST	Colombia	28	66	171	111723
242735		Carter	Manley	RB	United States	25	77	180	111138
242818		Finn	Dahmen	GK	Germany	23	78	186	169
243044		Nnamdi	Ofoborh	CDM	Nigeria	21	77	183	1943
243623		Scott	Wilson	ST	England	28	81	184	1959
243856		Abel	Mabaso	CDM	South Africa	30	67	173	110930
244001		Timon	Weiner	GK	Germany	22	83	191	576
244087		Romario	Rösch	CAM	Germany	22	75	180	100409
244233		Luca	Pfeiffer	ST	Germany	24	84	196	487
244372		Jakub	Bednarczyk	LM	Poland	22	72	184	32
244469		Pietro	Di Nardo	CDM	Switzerland	31	71	175	435
244569		Ulises	Torres	LB	Mexico	23	64	176	1879
244669		Morten	Hjulmand	CM	Denmark	22	77	185	111821
244940		Emir	Karic	LB	Austria	24	81	186	15009
245476	Mello	Giácomo Mello	Corbellini	CAM	Brazil	28	71	174	111089
50536537		Bernard	Mensah	RM	England	26	59	173	149
50551522		Andy	Dales	LM	England	26	70	181	180
50556174		Jordan	Lyden	CM	Australia	25	70	178	1920
50559589		Brendan	Moore	GK	United States	29	85	188	112885
50565460		Anderson	Lucoqui	LB	Germany	24	72	180	159
50567675		James	Brown	RB	England	23	79	178	97
50569497		Ricardo	Marín	ST	Mexico	23	72	181	1879
50572148		Luke	Woolfenden	CB	England	22	70	183	1934
50576217		Ulises	Torres	LB	Mexico	23	64	176	101114
67350833		Dominik	Martinović	ST	Croatia	24	77	179	111379
176631		Benny	Lekström	GK	Sweden	40	86	191	708
182474	Zhang Chong	Chong	Zhang	GK	China PR	33	80	192	112378
189810		Shane	Duggan	CM	Republic of Ireland	32	70	170	111285
200428		Graham	Kelly	CM	Republic of Ireland	29	68	175	423
203417		Emmanuel	Oyeleke	CM	England	28	75	175	1928
204854		Lee-J	Lynch	CAM	Republic of Ireland	29	72	173	563
210911		Tareq	Al Kaabi	CDM	Saudi Arabia	30	62	165	113222
212991		Daniel	Gremsl	CF	Austria	29	65	169	110592
214049		Daniel	Restrepo	CDM	Colombia	28	70	173	111723
219667		Daniel	Byrne	CB	Republic of Ireland	28	78	186	305
221809		Gary	Boylan	RB	Republic of Ireland	25	72	179	563
222496		Marko	Nikolić	ST	Sweden	23	73	183	111705
223905		Perry	Ng	RB	England	25	77	180	121
224499		Mitchell	Lund	RB	England	24	75	185	142
224601		George	Waring	ST	England	26	72	196	15048
225203		Liam	Kelly	GK	Scotland	25	83	189	621
226429		Alistair	Coote	CAM	Scotland	23	65	170	1925
226838	Wang Guoming	Guoming	Wang	GK	China PR	31	81	187	111779
228052	Du Changjie	Changjie	Du	ST	China PR	23	80	179	111779
228402		Tahvon	Campbell	LW	England	24	68	185	561
228596		Egli	Kaja	CAM	Albania	24	78	177	621
228834		Eirik	Wichne	RB	Norway	24	70	175	1524
229263		Moustafa	Zeidan	CM	Sweden	23	70	170	111705
229893		Ryan	Gondoh	RM	England	24	75	183	1935
230003		Callum	Rzonca	CAM	England	24	66	168	111089
231006		Cian	Coleman	CM	Republic of Ireland	24	70	180	111285
231582		Nicholas	D'Agostino	ST	Australia	23	75	175	111395
232403		Tomás	Maya	LB	Colombia	24	71	175	112528
232566		Haruhiko	Takimoto	GK	Japan	24	79	190	101145
233115		Reece	Cole	CM	England	23	65	178	1925
233725		Thijmen	Nijhuis	GK	Holland	23	83	196	1903
234803		Nathan	Baxter	GK	England	22	76	184	346
235014		Jonny	Smith	RM	England	24	64	178	15048
235632		Randi	Goteni	CDM	Congo	26	84	189	294
235815		Silvan	Sidler	LB	Switzerland	23	72	185	897
235924		Hasan	Emiroğlu	CB	Turkey	24	68	178	113142
236437		Joe	Sbarra	CAM	England	22	70	168	15015
236796		Noah	Awassi	CB	Germany	23	83	193	110700
237250		Stefan	Cleveland	GK	United States	27	84	188	693
237536		Mustafa	İnan	CM	Turkey	21	73	182	741
237832		Ibrahim	Meite	ST	England	25	72	188	1961
238491		Aramide	Oteh	ST	England	22	73	183	15
238880		Jean Carlos	Pestaña	CB	Colombia	23	70	183	112528
239175		Julius	Eskesen	RM	Denmark	22	68	175	272
239566		Justin	Schau	CDM	Germany	22	75	177	110591
240333		Bahadır	Öztürk	CB	Turkey	25	75	185	741
239348		Daan	Klomp	CB	Holland	22	82	187	1904
239564		Jannik	Bruhns	GK	Germany	22	75	188	110169
239947		Roberto	Meraz	CDM	Mexico	22	78	179	1028
240364		Isaac	Boye	ST	Nigeria	24	82	188	705
240641		Sami	Kassar	LB	Saudi Arabia	31	60	170	113219
240835		Edgar	Elizalde	LB	Uruguay	21	78	179	200
241114		Oliver	Drost	ST	Denmark	25	73	187	1446
241823		Aldo	Cruz	LB	Mexico	23	62	173	111035
242012		Ryo	Germain	ST	Japan	26	75	182	112836
242100	Yoo Ji Ha	Ji Ha	Yoo	CB	Korea Republic	22	70	184	1474
242454		Maurice	Čović	LM	Germany	23	62	169	166
242559		Temma	Matsuda	LW	Japan	26	62	164	113161
242771		Adnan	Hadzic	CM	Norway	22	75	183	1524
243142		Heradi	Rashidi	RWB	Sweden	27	69	175	433
243500		Alexis	Gamboa	CB	Costa Rica	22	85	191	110913
243695		Lukas	Hupfauf	RB	Austria	24	73	176	2045
243896		Ayoub	Abdellaoui	LB	Algeria	28	75	185	110770
244079		Besfort	Kolgeci	CB	Kosovo	23	77	188	110500
244102		Jonas	Hildebrandt	CDM	Germany	24	76	184	27
244239		Franck	Irie	CAM	Côte d'Ivoire	23	55	165	1750
244405		Koen	Huntelaar	CM	Holland	23	71	185	635
244532		Paweł	Kucharczyk	CB	Poland	24	78	185	111092
244570		Oswaldo	León	CB	Mexico	22	88	188	1879
244671		Marco	Kadlec	CAM	Austria	21	70	183	111821
245000		Naod	Mekonnen	CDM	Germany	21	65	177	112172
245338		Thomas	van den Belt	CM	Holland	20	67	174	1914
50536142		Alexander	Riemann	LM	Germany	29	78	183	487
50551349		Jakub	Wrąbel	GK	Poland	25	87	194	1569
50554117		Christian	Rubio Sivodedov	CM	Sweden	23	72	177	922
50559455		Michael	Folivi	ST	England	23	79	175	112259
50562681		Joe	Maguire	LB	England	25	70	179	110890
50565513		Ronan	Hale	RM	Republic of Ireland	22	70	176	88
50569367		Sam	Jones	ST	Wales	29	78	188	127
50569706		Callum	O'Hare	CAM	England	23	65	173	1480
50576020		Jakub	Bednarczyk	LM	Poland	22	72	184	110329
67334373		Aaron	Collins	ST	Wales	24	74	185	357
28157		Peter	van der Vlag	GK	Holland	43	76	185	100628
176860		Conny	Månsson	GK	Sweden	40	88	188	113459
185187		Bartłomiej	Sielewski	CB	Poland	36	83	187	1569
190033		David	Webster	CB	Republic of Ireland	31	78	193	753
202128		Nathan	Ralph	LB	England	28	70	175	180
204298		Frederik	Due	GK	Denmark	29	83	187	1786
207950		Adebayo	Azeez	ST	England	27	80	183	1944
212912	Park Ji Soo	Ji Soo	Park	CB	Korea Republic	27	70	184	111588
214024		Johan	Wallens	GK	Colombia	29	75	190	101102
218381		Sam	Matthews	CM	England	24	71	176	1962
220306		Assan	Ceesay	LW	Gambia	27	75	188	10032
221978	Li Guang	Guang	Li	CDM	China PR	30	74	175	111769
222782		Mohammad	Baghdadi	LM	Germany	24	74	179	1962
224068		Hillel	Konaté	GK	Côte d'Ivoire	26	77	182	110456
224576		Luke	Croll	CB	England	26	76	185	143
224622	Sun Le	Le	Sun	GK	China PR	31	83	188	112540
225778		Tyrell	Robinson	LB	England	23	68	173	1804
226438		Scott	McMann	LWB	Scotland	25	70	180	184
227738		Lukas	Klemenz	CB	Poland	25	88	191	110745
228143		Sherko Kareem	Gubari	LM	Iraq	25	67	177	15009
228282		Birhan	Vatansever	CDM	Turkey	24	72	180	325
228642		James	Tilley	CAM	England	23	66	170	1808
228888		George	Edmundson	CB	England	23	75	185	1920
229184		Tom	Baack	CB	Germany	22	74	180	160
229643		Cameron	James	CB	England	23	76	183	1935
230646		Adam	Chrzanowski	CB	Poland	22	78	186	111091
231330		Roberto	Kakeeto	CDM	Uganda	26	65	175	820
232205		Camilo	Moya	CDM	Chile	23	65	169	112668
232314		Kosta	Petratos	LM	Australia	23	79	181	111398
232675		Muteb	Al Mufarrij	CB	Saudi Arabia	24	67	181	112393
233142		Yuto	Takeoka	RB	Japan	35	73	178	111730
233678		Masayuki	Yamada	CB	Japan	26	80	186	101150
234472		Mads Bech	Sorensen	CB	Denmark	22	73	185	1925
234941		Cameron	Pring	LB	England	23	71	185	1919
235539		Ahmad	Al Ghamdi	GK	Saudi Arabia	27	73	177	112392
235841		Axel Mohamed	Bakayoko	RW	France	23	69	179	898
235975		Abdulaziz	Al Aryani	RM	Saudi Arabia	25	77	173	607
236353		William	Tchuameni	ST	Cameroon	24	88	192	1447
236622		Marcel	Holzer	ST	Austria	22	77	186	2017
237052		Chidi	Omeje	ST	Nigeria	31	78	184	1596
237305		Logan	Ketterer	GK	United States	27	74	191	687
237703		Andrew	Wheeler-Omiunu	CM	United States	26	79	175	112885
238059		Dan	Kemp	RM	England	22	63	168	19
238610		Karlo Igor	Majić	ST	Croatia	23	75	180	110636
238788		Camilo	Trejos	GK	Chile	23	83	185	112709
239023		Ben	Wiles	CAM	England	22	66	183	1797
239423		Nuno	da Silva	LM	Switzerland	27	65	170	1715
239500		Eric	Gründemann	GK	Germany	22	87	186	27
240063		Maxime	Cassara	GK	France	29	91	191	110316
240400		Carlo	Manicone	ST	Italy	23	78	183	10032
239351		Alexander	Fuchs	CM	Germany	24	74	184	171
239666		Torben	Müsel	ST	Germany	22	76	185	23
240318	Kang Bong Gyun	Bong Gyun	Kang	GK	Korea Republic	28	75	188	983
240500		Luke	Woolfenden	CB	England	22	70	183	94
240805	Dai Wai-Tsun	Wai-Tsun	Dai	CM	Hong Kong	22	75	175	1951
241186		Vasil	Kušej	CF	Czech Republic	21	65	167	503
241969		Dominik	Martinović	ST	Croatia	24	77	179	492
242093		Eric Johana	Omondi	RW	Kenya	26	75	186	111705
242457		Bujar	Lika	RB	Switzerland	28	77	177	322
242539		Freddie	Brorsson	ST	Sweden	24	79	180	703
242811		Eirik Wollen	Steen	CB	Norway	27	74	180	918
242989	Han Seung Wook	Seung Wook	Han	CAM	Korea Republic	25	70	176	1475
243664		Florian	Rieder	CM	Austria	25	69	174	2045
243800		Simon	Seferings	CAM	Germany	26	81	185	33
243975		Gökalp	Kılıç	LM	Germany	21	74	183	111235
244084		Kevin	Pytlik	CB	Poland	23	84	184	110700
244221		Eric	Veiga	CDM	Luxembourg	24	72	183	110500
244406		Kyvon	Leidsman	ST	Holland	22	78	184	635
244490		Jozo	Stanic	CB	Croatia	22	80	188	100409
244585		Konstantinos	Dimitriou	CB	Greece	22	78	186	896
244673		Matty	Daly	CM	England	20	75	176	1939
245015		Yahcuroo	Roemer	ST	Holland	20	70	180	100651
50520479		Joe	Martin	LB	England	32	83	183	361
50540672		Aaron	Barry	CB	Republic of Ireland	28	77	181	305
50553827	Jin Pengxiang	Pengxiang	Jin	RB	China PR	31	77	187	111768
50558172		Marko	Johansson	GK	Sweden	22	80	192	320
50562345		Ethan	Robson	CM	England	25	73	178	180
50565609		Sami	Al Najai	CDM	Saudi Arabia	24	59	176	112391
50569020	Son Mu Bin	Mu Bin	Son	GK	Korea Republic	23	82	189	110765
50570037		Ben	Wilmot	CB	England	21	80	188	55
50572453	Dai Wai-Tsun	Wai-Tsun	Dai	CM	Hong Kong	22	75	175	1903
67344891		James	Brown	RB	England	23	79	178	149
165458		Conor	Kenna	CB	Republic of Ireland	36	75	181	838
178008		Jay	Harris	CM	England	34	73	170	15048
182790	Zheng Tao	Tao	Zheng	RB	China PR	35	75	182	112165
194248	Ryang Yong Gi	Yong Gi	Ryang	CF	Korea DPR	39	72	173	112836
202125		Jack	Bonham	GK	Republic of Ireland	27	95	193	1962
204302		Adam	Buxton	RB	England	29	81	185	15048
206338		Danny	Morrissey	ST	Republic of Ireland	27	71	177	111285
212165		Sebastian	Ohlsson	RW	Sweden	28	77	181	319
213676		Mitchell	Beeney	GK	England	25	82	198	563
219159		Danijel	Nizic	GK	Australia	26	77	195	112427
220890		Mamadou	Sissako	ST	France	25	71	171	294
222114		Alex	Lacey	CB	England	28	75	188	1802
223236		Jonathan	Requena	CAM	Argentina	25	76	174	112709
224421		Max	Reinthaler	CM	Italy	26	83	193	27
224582		Darren	Lyon	RWB	Scotland	26	76	185	1938
225136		Thomas	Hadler	GK	England	25	79	196	1802
225993		Oliver	Sail	GK	New Zealand	25	80	194	111766
226450		Mohammed Ahmed	Awaji	GK	Saudi Arabia	26	72	185	111674
227744		Mairon	Quiñones	LB	Colombia	25	70	173	111723
228239		Charlie	Cooper	CM	England	24	73	175	112254
228517		Andy	Rinomhota	CM	England	24	64	175	1793
228789	Robert Sanchez	Robert	Lynch Sanchez	GK	Spain	23	85	197	561
228921		Marcin	Urynowicz	ST	Poland	25	78	187	420
229504		Frederik	Lauenborg	CM	Denmark	24	74	181	1786
229995		Sivert	Solli	RW	Norway	24	70	175	112200
230846		Regan	Charles-Cook	CM	England	24	69	175	1802
231437		Salem	Al Hamdan	LB	Saudi Arabia	29	61	172	113222
232265	Long Cheng	Cheng	Long	CB	China PR	26	77	186	111779
232560		Kazushige	Kirihata	GK	Japan	34	77	187	101145
232721		Yoshiaki	Fujita	CB	Japan	38	76	180	101144
233288		Ethan	Boyle	RB	Republic of Ireland	24	83	180	306
234213		Atakan	Cangöz	CM	Turkey	29	75	175	741
234881		Lachlan	Scott	ST	Australia	24	70	180	112427
235261		Luka	Bogdan	CB	Croatia	25	76	195	1844
235719		Joel	Soñora	LW	United States	24	70	176	112670
235807		Aaron	Morley	CM	England	21	67	174	1955
235915		Luke	Molyneux	LW	England	23	69	180	106
236374		Alper	Ademoglu	CM	Belgium	23	72	180	742
236613		Lennart	Grill	GK	Germany	22	87	191	29
237233		Oscar	Brennan	CM	Republic of Ireland	25	78	184	305
237345		Thomas	Byrne	LM	Republic of Ireland	22	61	176	423
237817		Mauricio	Toni	CB	Argentina	23	77	185	112670
238197		Sam	Bone	CDM	England	22	85	183	306
238651		Julian	Hodek	CDM	Germany	23	77	177	110592
238952		Maximilian	Schlegel	LM	Germany	24	75	186	110591
239330		Yousef	Emghames	RM	Germany	23	69	175	485
239609	Liu Ruofan	Ruofan	Liu	CF	China PR	22	75	188	110955
239984		Alex	Penny	CB	Wales	24	73	185	184
240534		Muhannad	Fallatah	CM	Saudi Arabia	25	64	184	605
239425		Chris	Kablan	LB	Switzerland	26	69	176	1715
239679		Pasquale	Mazzocchi	RB	Italy	26	74	183	199
239993		Abraham	Romero	GK	United States	23	87	188	110147
240587		Fahad	Bin Jamayah	RM	Saudi Arabia	26	61	175	112139
240725		Ismael	Aaneba	CB	France	22	78	179	76
240836		Şahverdi	Çetin	CDM	Germany	20	70	174	1824
241298	Liu Huan	Huan	Liu	CB	China PR	32	74	183	111768
241568		Cristian	Ferreira	CAM	Argentina	21	67	174	1876
242003		Daam	Foulon	LB	Belgium	22	78	180	110913
242163		Matias	Cavalleri	ST	Chile	23	63	168	112655
242431		Sidney	Friede	CM	Germany	23	83	184	166
242553		Mark	Segbers	RB	United States	25	72	175	691
242812		Kristoffer	Ødemarksbakken	LM	Norway	25	72	181	299
242926	Park Jung Soo	Jung Soo	Park	CM	Korea Republic	34	74	181	112115
243618		Lukas	Fadinger	CAM	Austria	20	65	172	209
243719		Bo	Breukers	CM	Holland	22	72	178	634
243939		Amir	Nouri	CDM	France	27	66	178	113948
244012		Erik	Henschel	RM	Germany	24	78	185	110482
244218		Jari	De Busser	GK	Belgium	21	81	190	674
244367		Tomasz	Kucz	GK	Poland	22	80	186	32
244415		Thomas	Rotter	CB	Austria	29	79	188	2017
244562		Adolfo	Hernández	ST	Mexico	23	81	183	1881
244664		Jean Marco	Die Toualy	LM	Côte d'Ivoire	22	63	171	100081
244764		Gael	Kakudji	CB	Belgium	22	83	192	230
245145		Robin	Polley	RB	Holland	22	71	183	650
245521		Masood	Bakhit	RB	Saudi Arabia	29	61	167	113222
50543826		Jonathan	Flatt	GK	England	26	88	191	110
50552489		John	Sanchez	RW	Colombia	26	60	170	111723
50557157		Aaron	Collins	ST	Wales	24	74	185	110
50560031		Kamil	Grabara	GK	Poland	22	75	190	271
50564845	Gui Hong	Hong	Gui	ST	China PR	26	83	185	112429
50567433		Connor	Hall	ST	England	23	77	180	110313
50568205		Omari	Patrick	ST	England	25	73	185	1804
50569974		Mitch	Candlin	ST	England	21	74	184	3
50573733		Matthew	Virtue-Thick	CDM	England	24	66	175	1926
67348131		Afimico	Pululu	ST	Angola	22	83	175	435
169191		Gavin	Peers	CB	Republic of Ireland	35	79	180	445
181015		Ben	Kennedy	GK	Australia	34	83	189	111396
187658		Lloyd	Saxton	GK	England	31	88	190	1596
191805		Ryota	Isomura	CDM	Japan	30	73	182	112448
201419		Gary	Shaw	ST	Republic of Ireland	29	87	196	306
204396		Henk	Bos	CM	Holland	28	64	172	100628
207442	Kim Hyo Gi	Hyo Gi	Kim	ST	Korea Republic	35	75	179	111588
211469		Charbel	Georges	LM	Sweden	27	64	175	113458
213678		Kieran	O'Hara	GK	Republic of Ireland	25	78	191	1959
215752		Karolis	Chvedukas	CM	Lithuania	30	69	174	837
220774		Joshua	Debayo	LB	Nigeria	24	68	183	1936
221845	Han Rongze	Rongze	Han	GK	China PR	28	70	190	111724
223827		Joe	McDonnell	GK	England	27	63	178	112259
224215		Valentin	Baume	GK	Belgium	24	77	185	670
224547	Liu Yingchen	Yingchen	Liu	CM	China PR	28	77	186	112378
225087		Fawaz	Al Sagour	RB	Saudi Arabia	25	60	177	112408
226139		Jonathan	Tamimi	RWB	Jordan	26	75	174	1596
226728		Lee	Desmond	CB	Republic of Ireland	26	75	183	423
228019	Cao Ziheng	Ziheng	Cao	ST	China PR	26	67	175	111769
228267		Alex	DeJohn	CB	United States	30	80	183	113876
228577		Armani	Little	CM	England	24	63	172	1951
228665		Ronaldo	Ariza	LM	Colombia	23	64	170	112579
229087		Harvey	Rodgers	RB	England	24	79	188	110313
229586	Pablo Cacharrón	Pablo	Cacharrón Blanco	GK	Spain	24	76	182	110831
229914		Emmanuel	Osadebe	CM	Republic of Ireland	24	71	188	1944
230661		Nicolas	Hunziker	ST	Switzerland	25	75	180	1715
231351		Yerko	Urra	GK	Chile	25	86	189	111327
232285		James	Doona	LM	Republic of Ireland	23	64	178	423
232539		Kota	Ogi	GK	Japan	38	76	185	101146
232829		Koki	Ogawa	ST	Japan	23	77	183	101144
233466		Markus	Olsen Pettersen	GK	Norway	21	85	190	919
234286		Neider	Barona	LM	Colombia	24	65	175	112523
234836		Taylan	Duman	CM	Germany	24	75	177	110636
235450	Domingos Quina	Domingos	Quina	CM	Portugal	21	66	177	1795
235703		Alfie	Beestin	ST	England	23	75	178	142
235860		Michael	Woud	GK	New Zealand	22	85	196	1907
236023		Brett	Levis	LB	Canada	28	70	173	101112
236445		Joel	Kabongo	CB	Denmark	23	85	194	269
236923		Ryan	Cooney	RWB	England	21	68	176	1945
237279		Shamit	Shome	CM	Canada	23	69	178	111139
237379		Matt	Worthington	CM	England	23	72	179	1943
238157		Mads	Roerslev	RB	Denmark	22	67	180	819
238357		Abdulaziz	Majrashi	CDM	Saudi Arabia	25	58	165	112096
238749		Mickaël	Nadé	CB	France	22	80	188	1819
239042		Hussain	Al Qahtani	CM	Saudi Arabia	26	67	177	112389
239444		Justin	Löwe	CAM	Germany	22	65	168	503
239689		Max	Sprang	GK	Germany	21	79	192	110592
240025		Samuele	Parlati	CM	Italy	24	69	174	1847
239440		Alessandro	Celli	LB	Italy	27	74	182	110911
239676		Kyle	Taylor	CAM	England	21	70	178	1943
240028		Rakan Saleh	Al Hafizi	LM	Saudi Arabia	25	80	175	113219
240451		Jan Niklas	Beste	LB	Germany	22	64	174	38
240756		Patrick	Sussek	CAM	Germany	21	68	175	111239
241150		Jean-Manuel	Mbom	CM	Germany	21	74	179	38
241307	Jiang Wenjun	Wenjun	Jiang	LB	China PR	31	74	180	112978
242001		Masakatsu	Sawa	ST	Japan	38	70	173	101145
242085		Matthew	Virtue-Thick	CDM	England	24	66	175	9
242186		Jesse	Schuurman	CDM	Holland	23	70	183	1909
242534		Cristian	Cásseres Jr	CM	Venezuela	21	68	175	689
242763		José	Ortíz	CB	Colombia	22	70	180	111723
242902		Kris	Reaves	CB	United States	25	73	188	695
243159		Ahmad	Awad	ST	Sweden	29	74	182	113876
243573		Anthony	Racioppi	GK	Switzerland	22	80	186	66
243744		Paul	Gehrmann	CDM	Germany	26	81	183	162
243955		Abdulkadir	Beyazıt	CF	Germany	24	74	183	162
244050		Wouter	Burger	CM	Holland	20	73	190	246
244160		Arkadiusz	Jędrych	CB	Poland	29	84	187	111089
244262		Dinko	Horkaš	GK	Croatia	22	77	189	211
244435		Jürgen	Heil	RM	Austria	24	70	176	2017
244489		Paterson	Chato	LB	Germany	24	82	186	110700
244656		Yohei	Takaoka	GK	Japan	25	72	181	113160
244835		Antonio	López	LW	Mexico	24	66	172	1879
245147		Manny	Duku	ST	Holland	28	75	188	1936
50534629	Choi Jin Ho	Jin Ho	Choi	RM	Korea Republic	31	70	173	112115
50543654		Billy	Waters	RM	England	26	73	173	1936
50553237		Jai	Ingham	RW	New Zealand	27	72	180	111396
50559177		Mathew	Hudson	GK	England	23	75	193	1801
50561570		Osama Yousef	Al Khalaf	CDM	Saudi Arabia	24	60	176	113222
50565441		Aaron	Lewis	LB	Wales	23	85	183	142
50567656		Ben	Morris	ST	England	22	60	175	561
50569473		Nya	Kirby	CAM	England	21	66	173	1926
50570676		Aboubakary	Koita	LW	Belgium	22	73	173	100081
67331043	Jin Pengxiang	Pengxiang	Jin	RB	China PR	31	77	187	112429
84128511		Sidney	Friede	CM	Germany	23	83	184	111560
175603		Rene	Gilmartin	GK	Republic of Ireland	34	101	197	1935
182240	Qiu Shengjiong	Shengjiong	Qiu	GK	China PR	35	92	187	110955
187993		Kevin	Goba	ST	France	34	82	186	212
199018		Michael	Leahy	CB	Republic of Ireland	32	78	185	423
203192		Dean	Jarvis	LB	Northern Ireland	29	71	178	837
206286		Viljormur	Davidsen	LM	Faroe Islands	30	72	177	822
210119		Quillan	Roberts	GK	Canada	26	87	183	112996
213143		Rhys	Oates	ST	England	26	74	183	357
215418		Marko	Soldo	GK	Austria	24	86	186	111822
219550		Ollie	Palmer	ST	England	29	92	196	110890
221285		Jaushua	Sotirio	LW	Australia	25	71	175	112427
222181	Yang Boyu	Boyu	Yang	CB	China PR	32	81	185	112162
223989		Noor	Husin	CM	Afghanistan	24	65	178	1937
224482		Jeppe	Brinch	CB	Denmark	26	67	182	1445
224616	Li Shenglong	Shenglong	Li	ST	China PR	29	75	181	112540
225365		Emmanuel	Sonupé	RM	England	25	70	180	361
226196	Peng Rui	Rui	Peng	LB	China PR	27	65	175	111774
227427		Alibek	Aliev	ST	Russia	24	83	189	113876
228134		Patrick	McClean	CB	Republic of Ireland	24	73	186	563
228381		Erik	Granat	CM	Sweden	25	61	172	1596
228657		Zachary	Herivaux	CM	Haiti	25	68	185	691
228858		Dusan	Jajic	CM	Sweden	23	70	175	708
229347		Michael	Donohue	RM	England	23	58	178	112260
229674		Ben	Tollitt	RM	England	26	76	182	15048
230660		Christian	Mbulu	CB	England	25	86	188	83
230896		Aaron	Barnes	RB	England	24	76	186	1935
231935		Roman	Kim	GK	Russia	25	82	190	1474
232500		Yassin	Fortune	ST	France	22	76	178	110770
232591		Shu	Hiramatsu	ST	Japan	28	77	184	112448
233021	Han Xuan	Xuan	Han	CB	China PR	30	85	193	111779
233948	Gao Huaze	Huaze	Gao	ST	China PR	23	68	178	112978
234319		Lewis	Travis	CM	England	23	70	176	3
235166		Mohanad	Jeahze	LB	Sweden	24	65	166	111705
235519		Ibrahim	Dresevic	CB	Sweden	24	81	186	700
235773		Luther	Wildin	RB	Antigua and Barbuda	23	75	178	361
235906		Magnus Retsius	Grødem	LW	Norway	22	78	192	920
236310		Sam	Hart	LB	England	24	70	183	3
236516		Julian	Kristoffersen	ST	Norway	24	77	198	112425
236960		Luca	Maniero	CM	Italy	23	71	176	111993
237225		Hugo	Arellano	CB	United States	23	75	180	697
237399		Evan	Louro	GK	United States	25	102	191	689
237783		Reiya	Morishita	CB	Japan	22	68	180	101148
238325		Tobias	Hayles-Docherty	RM	England	22	70	178	1803
238628		Jan	Albrecht	GK	Germany	23	89	192	492
238983		Noah	Awuku	ST	Germany	21	84	182	576
239312		Durel	Avounou	CDM	Congo	23	71	179	112276
239460		Amine	Talal	CDM	Morocco	25	68	176	112276
239781		Tobias	Arndal	LM	Denmark	23	72	180	1446
240170		Karol	Niemczycki	GK	Poland	22	84	192	1904
240682		Mohammed	Al Subaie	LM	Saudi Arabia	25	68	183	112096
240745		Scott	Quigley	ST	England	28	83	194	1928
240584		Bram	Verbong	GK	Holland	21	80	186	100651
240681		Jan	Hoekstra	GK	Holland	23	75	190	1915
240779		Marco	Meli	RW	Italy	21	70	178	110374
240913		Caoimhin	Kelleher	GK	Republic of Ireland	22	69	188	9
240920		Fahad	Al Habib	GK	Saudi Arabia	23	69	180	111674
241299	Yuan Mincheng	Mincheng	Yuan	CB	China PR	25	78	187	112165
241215		Riku	Hirosue	GK	Japan	23	82	183	101150
241311	Ke Zhao	Zhao	Ke	LB	China PR	32	70	175	111779
241493		Samuel	Cartwright	CB	England	21	75	185	1938
241522		Jonas	Wind	ST	Denmark	22	82	190	819
241536		Manprit	Sarkaria	RM	Austria	24	70	179	256
241534		Sean	McLoughlin	CB	Republic of Ireland	24	70	180	422
241915		Sondre	Sørlokk	CM	Norway	24	74	187	112200
241963		Hamed	Al Ghamdi	CM	Saudi Arabia	22	59	161	112096
242124		Yusuke	Maeda	CDM	Japan	36	69	176	112448
242276	Wang Ziming	Ziming	Wang	ST	China PR	25	76	187	111768
242514		František	Plach	GK	Slovakia	29	80	192	111086
242599		Rune	Frantsen	RB	Denmark	29	75	184	1446
242656		Illan	Meslier	GK	France	21	74	196	217
243121		Daniel	Liszka	LM	Poland	21	78	176	420
243497		Sebastian	Walukiewicz	CB	Poland	21	80	188	110746
243608		Ryan	Giles	LM	England	21	72	179	110
243981		Arbenit	Xhemajli	CB	Kosovo	23	81	190	435
244068		Keven	Schlotterbeck	CB	Germany	24	84	189	25
244236		Jonathan	Farias	CAM	Argentina	23	83	178	1750
244331		Maciej	Firlej	ST	Poland	24	76	181	111083
244524		Norman	Quindt	GK	Germany	24	75	184	110700
244663		Milos	Spasic	LB	Serbia	23	76	180	111821
244878		Georgiy	Kyrnats	GK	Russia	23	79	188	315
245228		Florian	Krüger	ST	Germany	22	78	186	506
50521681		David	Webster	CB	Republic of Ireland	31	78	193	423
50547400		Karolis	Chvedukas	CDM	Lithuania	30	69	174	753
50559782		Patrick	McClean	CB	Republic of Ireland	24	73	186	445
50560437	Robert Sanchez	Robert	Lynch Sanchez	GK	Spain	23	85	197	1808
50567958		Sam	Hart	LB	England	24	70	183	1955
50570139		Aramide	Oteh	ST	England	22	73	183	1803
67343805		Cameron	Pring	LB	England	23	71	185	1936
67346243		Matt	Worthington	CM	England	23	72	179	346
184843		Ben	Tozer	CDM	England	31	81	185	1936
206327		Ian	Turner	RM	Republic of Ireland	32	79	182	423
213690		Callum	Evans	CM	England	25	72	177	1959
219854		Grant	Smith	GK	England	27	86	185	149
221951		Josh	O'Hanlon	ST	Republic of Ireland	25	76	187	422
222322		Georgie	Poynton	RM	Republic of Ireland	23	70	178	837
223761		David	Sauerland	RB	Germany	24	72	180	110500
225981		Adam	Pearce	GK	Australia	24	76	198	111396
226473		Michael	Kelly	LB	Scotland	23	70	181	1962
228047	Cao Yongjing	Yongjing	Cao	CAM	China PR	24	73	180	112537
229269		Zain	Westbrooke	CM	England	24	65	178	1800
231046		Jake	Eastwood	GK	England	24	70	190	1794
231411		Robbie	McKenzie	CB	England	22	79	179	1952
231962	Du Wenyang	Wenyang	Du	RB	China PR	31	75	182	112978
232362		Robbert	de Vos	CM	Holland	25	73	182	100628
232767		Matías	Juárez	CDM	Argentina	24	69	176	111711
233127		Jordon	Sangha	CM	England	23	69	180	1803
233939		Oran	Jackson	CB	England	22	75	187	1798
234644		Valentino	Vujinovic	ST	Germany	22	77	179	1832
235216		Ben	Fox	CM	England	23	76	175	15015
235897		Abdulmajeed	Obaid	LM	Saudi Arabia	25	59	166	112990
236375		Diaz	Wright	CM	England	23	69	177	1935
236825		Dan	Vann	CB	England	22	70	183	1803
237020		Mohammed	Al Zubaidi	LB	Saudi Arabia	23	62	173	112387
237535		Taishi	Matsumoto	CM	Japan	22	66	178	113157
237831		Sherwin	Seedorf	RM	Holland	23	68	173	1804
239146		Lagos	Kunga	LM	United States	22	68	173	112885
239597		Denzel	Jubitana	CAM	Belgium	22	69	173	110913
239762		Michal	Sipľak	LB	Slovakia	25	80	184	110747
239927		Oliver	Ottesen	GK	Denmark	22	72	184	1516
240042		Rivaldo	Correa	RM	Colombia	21	70	185	101103
240285		Tobias	Børkeeiet	CDM	Norway	22	75	186	917
240563		Dimitrios	Emmanoulidis	ST	Greece	20	70	171	1884
240669		Lennard	Maloney	CDM	Germany	21	89	187	1831
241356		Lewis	Ritson	CB	England	22	64	180	1952
241884		Daiki	Sugioka	LB	Japan	22	75	182	113161
242047		Saad	Al Selouli	LM	Saudi Arabia	23	57	168	112096
242196		Matt	Real	LB	United States	22	73	180	112134
242433		Cyrill	Akono	CF	Germany	21	79	190	531
242688		Gustavo	Carvajal	CDM	Colombia	21	72	181	101099
242862		Salem	Al Najrani	RM	Saudi Arabia	24	65	174	112390
243217	Kim Min Jun	Min Jun	Kim	CM	Korea Republic	28	71	179	1475
243502		Jakub	Bursztyn	GK	Poland	23	85	186	110746
243842		Nicky	Cadden	RM	Scotland	24	65	173	621
244042		Moussa	Djitté	ST	Senegal	21	75	180	110770
244180		Kasper	Oldenburger	RM	Holland	25	70	176	100628
244379		Akhmed	Alibekov	CDM	Ukraine	23	72	182	101047
244683		Krešimir	Kovačević	ST	Croatia	27	80	187	2017
244883		Abdulrahman	Al Yami	ST	Saudi Arabia	24	65	174	113057
245376		Mateusz	Młyński	CAM	Poland	20	75	180	111082
245517		Badr	Bashir	CDM	Saudi Arabia	23	75	179	112389
50558102		Ben	Hall	CB	Northern Ireland	24	78	185	1808
50565853		Hiroki	Ito	RM	Japan	22	80	188	112092
50568143		Aaron	Bolger	CM	Republic of Ireland	21	65	170	1961
50571128		Sascha	Härtel	LB	Germany	22	73	174	110700
67331186		Georgie	Poynton	CM	Republic of Ireland	23	70	178	753
29118		Shinji	Ono	CM	Japan	41	76	175	112444
199480		Paul	O'Conor	CM	Republic of Ireland	33	80	185	838
202800		John	Sullivan	CDM	Republic of Ireland	30	84	188	838
211203		Sam	Long	RB	England	26	75	179	1951
222503		Harry	Isted	GK	England	24	74	186	1923
223810		George	Maris	LM	England	25	75	180	1944
224858		Tyrone	Duffus	CM	England	24	68	185	1961
227630		Charlie	Kirk	LM	England	23	69	178	121
228217		Charlie	Lyon	GK	United States	29	95	188	112996
228533	Lee Joon Hee	Joon Hee	Lee	GK	Korea Republic	27	89	192	111588
229358		Jan	Holldack	CDM	Germany	25	72	181	167
241552		Jacob	Italiano	LM	Australia	20	65	170	111399
241694		Stiven	Rentería	ST	Colombia	23	65	170	101102
242092		Rasmus	Alm	RW	Sweden	25	70	174	111705
242095		Johan	Falkmar	RB	Sweden	29	80	185	111705
242315		Dennis	Petersson	GK	Sweden	26	77	186	703
242579		Cristian	Baldovino	GK	Colombia	24	88	192	112579
242600		Niklas	Strunck	CM	Denmark	21	74	185	1788
242781		Ryan	Blumberg	CB	Australia	22	65	170	89
243066	Wang Xiaole	Xiaole	Wang	CM	China PR	24	67	181	111768
243525		Robert	Ljubicic	CM	Austria	22	76	180	112075
243973		Tobias	Reithmeir	CB	Germany	21	87	190	111235
244073		Yannik	Bangsow	GK	Germany	23	84	192	110500
244212		Patryk	Sokołowski	CDM	Poland	26	73	181	111086
244390		Marius	Bülter	LW	Germany	28	80	188	110588
244504		Jordan	Archer	ST	England	27	83	190	1945
244725		Evert	Linthorst	CM	Holland	21	73	182	100651
244840		Lennart	Czyborra	LB	Germany	22	72	178	100634
245288		Lukas	Gottwalt	CB	Germany	23	84	192	29
50533067		Gary	Shaw	ST	Republic of Ireland	29	87	196	423
50552933		Jaushua	Sotirio	LM	Australia	25	71	175	111766
50559887		Charlie	Cooper	CM	England	24	73	175	561
50560536		George	Edmundson	CB	England	23	75	185	86
50567367		Joel	Soñora	LW	United States	24	70	176	36
50570005		Abdulaziz	Majrashi	CDM	Saudi Arabia	25	58	165	112990
50574822	Park Kwang Il	Kwang Il	Park	RM	Korea Republic	30	68	175	111588
22391		Raffaele	Cretaro	ST	Republic of Ireland	39	66	165	563
194679		Mark	Halstead	GK	England	30	89	191	357
208291		Reise	Allassani	LM	England	25	70	169	1800
219344		Abdo	Al Basisi	GK	Saudi Arabia	43	86	184	113219
220530		Dan	Lavercombe	GK	England	24	71	191	1917
221956		Simon	Pirkl	CDM	Austria	24	69	176	2045
223011		Francois-Joseph	Sollacaro	GK	France	27	70	178	614
225001		Kyle	Wootton	ST	England	24	78	188	1949
225773		Stefan	O'Connor	CB	England	24	81	186	13
226264		Fabian	Ahumada	ST	Chile	25	75	180	111328
226818		Conor	Donovan	CB	United States	25	80	188	698
229126		James	Clarke	RB	England	31	84	183	1962
230815		Osman	Kakay	RB	England	23	72	180	15
231206		Diego	Cruz	RB	Mexico	26	58	169	110152
231647		Mohammed Hassan	Asiri	GK	Saudi Arabia	28	86	176	112391
231859		Calle	Brown	GK	United States	29	91	196	111144
232335		Mansour	Najjar	CM	Saudi Arabia	26	68	175	112391
232673		Marwan	Al Haidari	GK	Saudi Arabia	25	86	188	605
232817		Ignacio	Chicco	GK	Argentina	25	80	185	110406
233655		Rory	Holden	CAM	Northern Ireland	23	68	169	1919
234297		Sebastian	Dahlström	CM	Finland	24	83	181	100325
235135		Husein	Balic	LM	Bosnia and Herzegovina	25	75	183	112075
235884		Oscar	Krusnell	LB	Sweden	22	70	183	708
236005		Justin	Vom Steeg	GK	United States	24	91	194	697
236406		Matthias	Hamrol	GK	Germany	27	90	195	111083
236890		Denis	Genreau	RM	Australia	22	65	170	1914
236994		Jose	Hernandez	CAM	Mexico	25	57	160	111065
237470		Dan	Casey	CB	Republic of Ireland	23	75	181	305
237710		Alex	Fletcher	ST	England	22	68	179	1929
238602		Jamie	Barjonas	CM	Scotland	22	72	173	1945
239269		Logan	Ndenbe	LB	Belgium	21	74	171	682
239510		Matthias	Köbbing	GK	Germany	24	90	196	111235
239698		Nathaniel	Amamoo	ST	Germany	23	84	178	1832
239800		Steven	Sessegnon	RB	England	21	68	174	144
239989		Terence	Vancooten	CB	Guyana	23	78	192	361
240192		Mathias Eriksen	Ranmark	GK	Norway	25	86	194	417
240363		Ippei	Shinozuka	RM	Russia	26	67	177	101151
240618		Norman	Wabo	ST	England	23	63	175	1954
241007		Enzo	Ebosse	CB	France	22	75	185	64
241402		Saul	Shotton	CB	England	20	75	184	1945
241997	Yan Peng	Peng	Yan	ST	China PR	26	75	180	112378
242137		Hassan	Abu Sharara	RM	Saudi Arabia	24	60	163	112391
242318		Anwar	Elyounoussi	LM	Norway	22	68	177	112199
242488		Yeison	Zabaleta	LW	Colombia	25	70	175	112970
242728		Oliver	Shannon	CAM	England	25	77	183	112885
242969		Noam	Baumann	GK	Switzerland	25	83	192	10032
243286		Aleksandar	Cvetkovic	RB	Serbia	26	87	188	322
243632		Charles	Abi	ST	France	21	71	187	1819
244013		Niclas	Fiedler	LM	Germany	23	68	176	110482
244104		Del-Angelo	Williams	ST	Germany	28	75	183	27
244222		Ayodele	Adetula	LW	Germany	23	73	182	110500
244527		Liridon	Mulaj	CAM	Switzerland	22	65	172	435
244763		Bill	Lathouwers	GK	Belgium	21	83	191	230
245088		Mohammed	Al Haeti	GK	Saudi Arabia	25	75	188	112096
245481		Yazeed	Al Bakr	RB	Saudi Arabia	23	62	170	112389
50553970		Georgie	Poynton	CM	Republic of Ireland	23	70	178	423
50565303		Rory	Holden	CAM	Northern Ireland	23	68	169	1955
50569118		Dan	Casey	CB	Republic of Ireland	23	75	181	422
50576531		Abdulrahman	Al Yami	ST	Saudi Arabia	24	65	174	605
138427		David	Pipe	RWB	Wales	37	77	175	112254
191559		Shinichiro	Kawamata	GK	Japan	32	86	188	101147
202141		Yusuf	Mersin	GK	Turkey	26	78	195	110890
207995		Ger	Pender	ST	Republic of Ireland	27	71	178	838
220635		Tom	Conlon	LM	England	25	62	173	1928
222629	Zhou Qiming	Qiming	Zhou	CM	China PR	27	65	172	111774
224593		Yannick	Zummack	GK	Germany	25	76	185	110700
225873		Rory	Feely	CB	Republic of Ireland	24	76	191	753
228113		George	Kelly	ST	Republic of Ireland	24	77	188	837
228664		Hasan Huseyin	Duman	CM	Norway	22	75	177	922
229274		Lewis	Thomas	GK	Wales	23	70	183	561
241587		Sultan	Farhan	CDM	Saudi Arabia	24	70	180	112392
241918		Mads	Lillebo	ST	Norway	27	74	184	112200
242094	Maikel	Antonio	Nieves Martín	CAM	Spain	31	80	182	111705
242169		Albin	Nilsson	LB	Sweden	27	68	174	703
242391		Maxime	Pattier	GK	France	25	75	183	217
242560		Keisuke	Saka	CB	Japan	26	72	174	113161
242587		Kohei	Hattanda	CAM	Japan	31	64	170	112092
242662		Jannik	Borgmann	CB	Germany	23	83	196	531
242944		Federico	Pereyra	CB	Argentina	32	82	185	111327
243174	Park Kwang Il	Kwang Il	Park	RM	Korea Republic	30	68	175	1475
243878		Robin	Benz	GK	Germany	25	79	188	167
244054		Sam	Finley	CM	England	29	68	170	110313
244090		Leon	Schaffran	GK	Germany	23	82	186	165
244282		Marc	Onuoha	RB	Germany	22	72	176	550
244458		Alexander	Sebald	GK	Germany	25	80	189	27
244560		Carlos	Gutiérrez	RM	Mexico	22	67	177	1881
244801		Ryogo	Yamasaki	ST	Japan	28	80	187	113161
245142		Remigiusz	Borkała	RM	Poland	22	72	176	111086
50521458		Shane	Duggan	CM	Republic of Ireland	32	70	170	753
50551954		Assan	Ceesay	LW	Gambia	27	75	188	894
50559386		Lukas	Klemenz	CB	Poland	25	88	191	1873
50560050		Tahvon	Campbell	ST	England	24	68	185	1802
50562654		Cian	Coleman	CM	Republic of Ireland	24	70	180	423
50566589		Cameron	Pring	LB	England	23	71	185	112254
50569805		Mads	Roerslev	RB	Denmark	22	67	180	111660
67344383		Ibrahim	Dresevic	CB	Sweden	24	81	186	1913
2702		Kevin	Ellison	LM	England	42	76	180	357
203598		Jason	Oswell	ST	England	28	75	185	357
208460		James	Montgomery	GK	England	27	75	180	561
215812	Érico Sousa	Érico Henrique	Esteves De Sousa	LM	Portugal	26	62	173	110313
221930		Nicola	Sutter	CB	Switzerland	26	73	183	1715
222931		Josh	Doherty	LWB	Northern Ireland	25	70	179	110890
224645	Sun Jungang	Jungang	Sun	RM	China PR	26	70	176	112540
225845		Nicolás	Araya	GK	Chile	22	69	174	112533
226261		Callum	Ainley	RM	England	23	64	173	121
227278		Gustav	Berggren	CM	Sweden	23	80	180	711
228953		Rasmus	Rosenqvist	CM	Sweden	25	73	178	700
230149		Jack	Senior	LB	England	24	63	173	1923
231065		Logan	Rogerson	ST	New Zealand	23	70	182	110591
231603		Jake	Adelson	RB	Australia	25	78	185	111398
232081		Richie	Laryea	RM	Canada	26	70	175	112606
232416		Ryunosuke	Noda	RM	Japan	32	79	185	113161
233060		Yahya	Khormi	CAM	Saudi Arabia	23	53	167	112393
233367		Pierre	Magnon	RM	France	25	69	179	378
234631		Sebastian	Grønning	ST	Denmark	24	85	188	112425
234944		Nicholas	Helmbrecht	RM	Germany	26	68	178	33
235479		Abdulrahman	Al Riou	LB	Saudi Arabia	27	70	167	113222
235939		Furkan	Zorba	LB	Turkey	23	77	186	487
236379		Jonathan	Lunney	CM	Republic of Ireland	23	70	175	305
236701		Joaquín	Rikemberg	CAM	Argentina	22	66	169	111022
237188		Nathan	Bishop	GK	England	21	72	185	1954
237545		Ümit	Türker	CM	Turkey	23	69	173	113142
238106	Wang Wei	Wei	Wang	LM	China PR	32	75	183	110955
239074		Souleymane	Aw	LB	Senegal	22	65	173	2013
239480		Sascha	Härtel	LM	Germany	22	73	174	506
239631		Danny	Loader	ST	England	20	68	182	1793
239835		Victor	Ekani	CM	Cameroon	24	82	190	1447
240068		Sumayhan	Al Nabit	LM	Saudi Arabia	25	68	174	113219
240262		Jake	Brimmer	CM	Australia	23	70	180	111399
240612		Michael	Klass	CM	England	22	63	175	1954
241259	Li Yingjian	Yingjian	Li	RM	China PR	30	63	183	112977
241358		Bruno	Sambo	RB	France	25	70	177	614
241954		Yousef	Al Shammari	ST	Saudi Arabia	23	65	181	112990
242117		Abdulrahman	Ghareeb	LM	Saudi Arabia	24	61	165	112387
242252		Magnus	Lenes	GK	Norway	25	82	192	112200
242551		Ian	Smith	RWB	Costa Rica	23	68	177	702
242694		Takumi	Nagura	CAM	Japan	23	63	168	112448
243122		Isak	Magnusson	RM	Sweden	23	73	180	1439
243260		Jarno	De Smet	GK	Belgium	22	85	186	100081
243751		Kerim	Memija	RB	Bosnia and Herzegovina	25	75	179	822
243982		Yuri	Yakovenko	ST	Ukraine	27	75	192	1445
244060		Philipp	Harant	ST	Germany	22	85	194	110588
244306		Sam	Graham	CB	England	20	80	187	1920
244442		William	Le Pogam	LB	France	28	75	183	435
244880		Vitaliy	Zhironkin	ST	Russia	21	61	170	315
245253		Leandro	Barreiro Martins	CM	Luxembourg	21	65	170	169
50538215		Adam	Campbell	RM	England	26	73	170	357
50563263		Kellan	Gordon	RM	England	23	76	179	91
50570250		Jamie	Barjonas	CM	Scotland	22	72	173	86
50575954		Sam	Graham	CB	England	20	80	187	1794
181702		Yuki	Uekusa	GK	Japan	39	80	186	101149
198891		Conor	Clifford	CM	Republic of Ireland	29	77	182	423
205276	Lee Kwang Jin	Kwang Jin	Lee	CDM	Korea Republic	30	66	179	111588
213542		Marcus	Solberg	ST	Denmark	26	82	184	111660
222192	Sun Guowen	Guowen	Sun	LM	China PR	27	74	178	112378
223987		Harry	Cardwell	ST	Scotland	24	72	188	92
226561		Jack	McMillan	LB	Scotland	23	77	183	621
228313		Louis	Robles	ST	England	24	65	175	92
229244		Mariusz	Idzik	ST	Poland	24	75	187	112505
241866		Timo	Righetti	CB	Switzerland	23	82	179	1715
241949		Víctor	Cordoba	CDM	Colombia	33	81	181	112970
242162		Håkon	Evjen	RW	Norway	21	70	175	918
242266		Eike	Bansen	GK	Germany	23	91	195	15005
242428		Rei	Hirakawa	CM	Japan	21	72	176	101150
242584		Yosuke	Akiyama	LB	Japan	26	68	171	112092
242652		Ben	Mines	RM	United States	21	68	175	689
242894		Emil	Pálsson	CM	Iceland	28	81	185	1757
243442		Emanuel	Aiwu	CB	Austria	20	77	184	111821
243854		Mohamed	Simakan	CB	France	21	82	187	76
243998		Lukas	Schelenz	CDM	Germany	22	70	184	167
244140		Alaa	Bakir	RM	Germany	20	69	177	22
244257		Jonathan	Burkardt	ST	Germany	21	78	186	169
244480		Hugo	Magnetti	CM	France	23	72	173	378
244589		Vato	Arveladze	ST	Georgia	23	73	184	111083
244754		Artur	Pikk	LB	Estonia	28	72	176	112505
245056		Koen	Bucker	GK	Holland	25	86	198	100634
245513		Konstantinos	Balogiannis	CDM	Greece	22	71	179	393
50544560	Park Ji Soo	Ji Soo	Park	CB	Korea Republic	27	70	184	111839
50556851		Liam	Kelly	GK	Scotland	25	83	189	15
50560244		Egli	Kaja	CAM	Albania	24	78	177	112259
50564763		Reece	Cole	CM	England	23	65	178	1959
50569027		Matt	Worthington	CM	England	23	72	179	561
50572182		Muhannad	Fallatah	CM	Saudi Arabia	25	64	184	113057
67345174		Sam	Hart	LB	England	24	70	183	1954
162911		Ronnie	Henry	RB	England	37	74	180	361
203742		Ryan	Lloyd	LM	England	27	73	180	1959
213667		Dion	Conroy	CB	England	25	78	181	1934
219392		Alex	Rufer	CM	New Zealand	25	75	184	111766
219870		Adam	Wixted	RM	Republic of Ireland	26	66	178	563
222299	Jin Taiyan	Taiyan	Jin	LB	China PR	31	62	174	111768
223091		Regan	Donelon	LB	Republic of Ireland	25	71	171	563
225134		Alex	Bass	GK	England	23	70	187	1790
226112		Kilian	Cantwell	CB	Republic of Ireland	26	79	188	111285
226454		Ben	Hall	CB	Northern Ireland	24	78	185	1937
228139		Eric	Bird	CM	United States	28	77	180	698
229724		Marco	Lund	CB	Denmark	25	87	183	272
230942		Josh	Pask	CB	England	23	76	187	19
231526		Yhoan	Andzouana	LM	Congo DR	24	69	177	110062
231939	Park Jung Ho	Jung Ho	Park	CB	Korea Republic	24	75	183	1477
232402	Kim Woo Suk	Woo Suk	Kim	CB	Korea Republic	25	74	187	2056
232696		Daiki	Ogawa	RB	Japan	29	73	172	101144
233221		Santiago	Jiménez	RB	Colombia	23	70	174	112526
234205		Hiroki	Ito	RM	Japan	22	80	188	101144
234682		Jetmir	Krasniqi	RB	Kosovo	26	74	181	10032
235244		Rasmus	Nicolaisen	CB	Denmark	24	81	191	1516
235919		Oğuzhan	Kolak	CB	Turkey	24	70	180	741
236252		Vedat	Karakuş	GK	Turkey	23	84	190	101020
236677		Ignacio	Tapia	CB	Chile	22	72	186	111327
236946		Nicolas	Baeza	CDM	Chile	24	75	175	111327
237430		Ryota	Suzuki	GK	Japan	27	85	191	112093
237659		Jefferson	Tabinas	LB	Philippines	23	77	182	111730
238177		Anthony	Hartigan	CM	England	21	68	178	112259
238919		James	Pantemis	GK	Canada	24	79	188	111139
239358		Seny	Dieng	GK	Switzerland	26	74	187	361
239607	Cong Zhen	Zhen	Cong	CM	China PR	24	75	180	110955
239926		Frederik	Brandhof	CM	Denmark	25	70	182	1516
240048		Liam	Nash	ST	England	25	71	176	1802
240329		Berkan	Taz	CAM	Germany	22	69	179	1831
240580		Ben	Folami	ST	Australia	22	70	170	94
240620		Amadou	Ba	ST	France	23	63	175	1954
241314	Li Haitao	Haitao	Li	GK	China PR	25	84	189	112162
241485	Chen Binbin	Binbin	Chen	ST	China PR	23	72	177	112540
242061		Takuya	Ogiwara	LB	Japan	21	69	175	111575
242140		Abdullah	Al Bishi	CB	Saudi Arabia	25	80	178	112391
242338		Elier	Aponzá	ST	Colombia	27	63	165	112528
242793		Wesley	Moustache	LB	France	22	80	177	71
243141		Irfan	Jasarevic	LB	Bosnia and Herzegovina	25	80	184	113876
243354		Philipp	Sander	LM	Germany	23	70	178	576
243678		Georgios	Siadas	LB	Germany	21	70	180	110636
244011		Marcel	Zach	GK	Germany	21	79	187	110482
244065		Victor	Glaentzlin	ST	France	23	75	185	226
244203		Callum	Crane	LB	Scotland	25	69	175	621
244508		Osman	Atilgan	ST	Germany	22	64	178	503
244746		Lévi	Ntumba	GK	France	20	78	194	110569
245070		Jesse	Debrah	CB	England	21	68	188	97
245416		Naif	Kariri	RB	Saudi Arabia	23	58	165	113057
50554828		Nick	Anderton	LB	England	25	79	188	1926
50567673		Harry	Smith	ST	England	26	85	188	1930
50569479		Sherwin	Seedorf	RM	Holland	23	68	173	110
50574206		Ramzi	Solan	ST	Saudi Arabia	23	62	170	112990
67353170		Sam	Graham	CB	England	20	80	187	111396
193317		Eoin	Wearen	CM	Republic of Ireland	28	72	185	111285
201485		Seamus	Sharkey	CB	Republic of Ireland	31	70	188	563
208355		John	Kavanagh	RB	Republic of Ireland	27	70	176	753
219971		Andrea	Tripicchio	RW	Italy	25	77	183	110734
222569	Pedrosa	Daniel	Pedrosa Loureiro	ST	Spain	24	74	182	462
224550	Wang Yaopeng	Yaopeng	Wang	CB	China PR	26	80	187	112378
225280		Dimitar	Mitov	GK	Bulgaria	24	76	188	1944
228255		Nicolas	Lemaître	GK	France	24	83	185	379
229142		James	Ferry	CM	England	24	67	179	361
229549		Alistair	Roy	LM	Scotland	24	73	188	445
241649		Rasmus	Emanuelsson	GK	Sweden	29	87	190	111705
241938		Nasser	Al Dawsari	CAM	Saudi Arabia	22	65	178	605
242139		Torbjørn	Kallevåg	LM	Norway	28	65	179	1463
242280		Lewis	Ferguson	CM	Scotland	21	65	176	77
242555		Nicolas	Samayoa	CB	Guatemala	26	79	188	691
242637		Cory	Galvin	LM	Republic of Ireland	25	66	172	753
242721		Eric	Dick	GK	United States	26	93	195	696
243243		Semir	Ucar	CDM	Turkey	22	65	175	159
243626	Kim Jung Ho	Jung Ho	Kim	CB	Korea Republic	26	84	187	110765
244018		Marcin	Staniszewski	GK	Poland	24	80	191	111082
244099		Louis	Ameka Autchanga	RW	Gabon	24	68	174	1813
244284		Yannis	Letard	CB	France	22	86	188	550
244417		Julian	Krahl	GK	Germany	21	82	194	112172
244592		Julian	von Moos	ST	Switzerland	20	71	179	896
245001		Lukas	Krüger	ST	Germany	21	77	188	112172
245428		Chima	Okoroji	LB	England	24	72	177	25
50539598		Adebayo	Azeez	ST	England	27	80	183	112254
50553457		Gary	Boylan	RB	Republic of Ireland	25	72	179	422
50559915		Alex	DeJohn	CB	United States	30	80	183	112606
50560290		James	Tilley	CAM	England	23	66	170	422
50563853		Camilo	Moya	CDM	Chile	23	65	169	15029
50569480		Ibrahim	Meite	ST	England	25	72	188	110890
50573342		Stiven	Rentería	ST	Colombia	23	65	170	112903
155547		Jonas	Jensen	GK	Denmark	35	86	188	1445
190099		Gabriel	Sava	GK	Romania	34	87	189	837
206567		Adam	Campbell	RM	England	26	73	170	1480
213967		Christoffer	Mafoumbi	GK	Congo	27	80	196	1926
220981		Johannes	Vall	LWB	Sweden	28	82	183	702
222422		Alex	Jakubiak	ST	Scotland	24	66	177	1962
223180		Nick	Anderton	LB	England	25	79	188	110313
226006		Colm	Horgan	RB	Republic of Ireland	27	72	174	422
226120		Jordy	Rondeel	GK	Holland	27	76	184	635
227967	Chen Anqi	Anqi	Chen	GK	China PR	28	73	187	112165
228291		Paul	Rooney	CB	Republic of Ireland	24	79	188	1935
230779		Andrew	Fox	LB	England	28	79	180	92
231233		Mark	Brink	CM	Denmark	23	72	177	1445
231615		Kellan	Gordon	RM	England	23	76	179	149
232267	Lu Yao	Yao	Lu	CB	China PR	28	78	176	111779
232540		Ryo	Takahashi	LB	Japan	28	63	170	113161
232893		Kunie	Kitamoto	CB	Japan	39	78	181	101146
233842		Sebastián	Osorio	CAM	Colombia	24	74	178	112579
234324		Laurence	Bilboe	GK	England	23	79	190	1797
234815		Rayan	Senhadji	CB	France	24	80	185	226
235550		Mesfer Abdulah	Al Najrani	CM	Saudi Arabia	27	52	167	112391
236025		Harry	Smith	ST	England	26	85	188	1959
236495		Aaron	Bolger	CM	Republic of Ireland	21	65	170	306
236748		Erlend	Sivertsen	LB	Norway	30	82	179	113459
237423		Jordan	Graham	ST	England	23	80	187	1940
237652		Camilo	Velásquez	LM	Colombia	23	71	176	112526
238171		Josh	Hope	CM	Australia	23	67	184	111397
238733		Martin	Ludwig	RM	Germany	22	77	185	110482
239445		Lewis	White	LM	England	22	68	173	97
239635		Karol	Fila	RM	Poland	23	72	180	111091
239797		Michael	Lansing	GK	United States	27	88	193	820
239958		Niels	Leemhuis	CM	Holland	23	66	177	100634
240086		Michael	Lema	RM	Austria	21	65	171	209
240331		Panutche	Camará	ST	Guinea-Bissau	24	73	185	110890
240586		Khalid	Al Shuwayie	CB	Saudi Arabia	25	72	179	112139
241296	Zeng Shuai	Shuai	Zeng	CB	China PR	27	75	182	112165
241578		Hugo	Andersson	CB	Sweden	22	78	185	320
242104		Amer	Ordagić	CM	Bosnia and Herzegovina	28	75	181	919
242198		Arian	Kabashi	ST	Sweden	24	71	180	700
242319		Ersin	Zehir	CDM	Germany	23	79	183	110329
242558		Ramzi	Solan	ST	Saudi Arabia	23	62	170	112389
242967		Callum	Morton	ST	England	21	66	177	109
243173	Kim Joon Beom	Joon Beom	Kim	CM	Korea Republic	23	72	176	111588
243575		James	Ball	CM	England	25	80	185	361
243795		Adam	Jakobsen	ST	Denmark	22	75	183	822
244048		Luis	Coordes	LM	Germany	22	70	180	110329
244199		Kjelt	Engbers	CB	Holland	21	78	185	100628
244320		Leon	Brüggemeier	GK	Germany	23	80	193	10030
244661	Vitinho	Victor	da Silva	RB	Brazil	22	73	175	1750
244816		Bojan	Avramovic	LB	Serbia	23	75	180	111822
245252		Ahmet	Gürleyen	CB	Germany	22	90	190	169
245523		Maher	Al Mutairi	CAM	Saudi Arabia	22	61	167	113222
50563729		Richie	Laryea	RM	Canada	26	70	175	111651
50568027		Jonathan	Lunney	CM	Republic of Ireland	23	70	175	753
50571006		Seny	Dieng	GK	Switzerland	26	74	187	15
50571696		Liam	Nash	ST	England	25	71	176	422
67348222		Seny	Dieng	GK	Switzerland	26	74	187	180
186305		Omar	Tejeda	LM	Mexico	32	79	173	111035
200744		Ryan	Watson	CM	England	28	73	185	1798
208544		Luke	Conlan	LB	Northern Ireland	26	72	180	357
221163		Thomas	Hagelskjaer	GK	Denmark	26	81	188	822
223379		Oscar	Johansson	RM	Sweden	26	75	178	703
223909		Alex	Palmer	GK	England	24	72	191	109
225166		Xavier	Lenogue	GK	France	24	84	194	57
228067	Kim Tae Ho	Tae Ho	Kim	GK	Korea Republic	29	81	186	2056
228315		Adrian	Purzycki	CM	Poland	24	70	178	112505
229264		Rory	Hale	CAM	Northern Ireland	24	72	175	445
229929		Vashon	Neufville	LB	England	22	67	172	19
230765		Habib	Al Watyan	GK	Saudi Arabia	24	87	189	112390
230887		Ntumba	Massanka	ST	England	24	78	191	1796
230001		Harry	Campbell	GK	England	25	77	185	15015
230893		Owen	Evans	GK	Wales	24	70	184	1917
230950		Daniel	Devine	CM	England	23	76	180	1804
231179		Jaman Abdullah	Al Dossary	LB	Saudi Arabia	27	76	178	112389
231270		Calum	Waters	LB	Scotland	25	72	168	82
231861		Mason	Stajduhar	GK	United States	23	86	188	112606
232418		Yohei	Takeda	GK	Japan	34	81	190	112092
232704		Takuma	Ominami	CB	Japan	23	72	184	101144
233011	Jeong Chee In	Chee In	Jeong	LW	Korea Republic	23	71	181	2056
234258		Steve	Seddon	LB	England	23	68	179	88
235125		Joaquín	Esquivel	CB	Mexico	23	64	177	111035
235741		Charles	Lokoli-Ngoy	ST	Australia	24	81	188	111400
236525		Ryan	Lowry	CB	Australia	27	76	181	111766
237176		Ryan	Schofield	GK	England	21	70	190	1939
237519		Nicholas	Marfelt	LB	Denmark	26	83	187	1447
237833		Mark	Harris	CM	Wales	22	75	182	112254
237926		John	Mahon	CB	Republic of Ireland	21	81	186	563
238076		Matt	Bersano	GK	United States	28	84	185	111928
238620		Matthias	Layer	GK	Germany	22	85	188	550
239309		Arne	Galens	GK	Belgium	23	75	183	100081
239735		Dariusz	Pawłowski	RB	Poland	22	71	187	420
240275		Pierce	Bird	CB	England	22	70	189	1937
240965		Akeem	Hinds	LB	England	21	72	178	1797
241300	Yang Ke	Ke	Yang	RM	China PR	32	78	184	112165
241355		Tyler	Hamilton	LM	England	22	64	177	1952
242134		Gaute	Vetti	CM	Norway	22	74	183	112199
242245		Fahad	Al Rashidi	RM	Saudi Arabia	24	68	176	605
242612		Edward	Chilufya	ST	Zambia	21	68	171	710
242947		Robin	Kehr	ST	Germany	21	80	189	22
243370		Alem	Koljic	LB	Germany	22	68	176	110169
243602		Salem	Mbakata	RB	France	23	72	177	226
243740		Max	Grundmann	CB	Germany	23	76	184	162
243922		Mateusz	Radecki	CM	Poland	28	74	187	111092
244082		Sinan	Karweina	ST	Germany	22	65	172	110700
244248		Aleksa	Damjanac	CB	Serbia	22	82	185	111560
244468		Martin	Vantruba	GK	Slovakia	23	89	196	266
244574		Fernando	González	ST	Mexico	23	61	176	1879
244659		Ryoya	Ito	LM	Japan	23	70	180	113160
245097		Finn	Becker	CM	Germany	21	68	177	110329
245442	Joan Luque	Joan	Luque Prados	LM	Spain	29	78	186	149
50540003		John	Kavanagh	RB	Republic of Ireland	27	70	176	422
50563854		Matías	Parada	CAM	Chile	23	64	168	15029
50568436		Matty	Gillam	ST	England	22	73	176	422
50576622		Anthony	Goelzer	LB	France	22	75	182	322
67346697		Mark	Harris	ST	Wales	22	75	182	1928
182366		Darren	Dennehy	CB	Republic of Ireland	32	83	195	111285
220187		Matthew	Jay	ST	England	25	64	169	143
221974	Pei Shuai	Shuai	Pei	LB	China PR	28	79	185	112983
222185	Cui Ming'an	Ming'an	Cui	CDM	China PR	26	77	180	112378
222848		Alex	Samuel	ST	Wales	25	70	178	1933
224554	Gao Jiarun	Jiarun	Gao	CB	China PR	26	73	183	111774
225498		Levi	Sutton	RB	England	24	72	180	1949
226109		Tyler	Forbes	RWB	England	25	75	178	112254
227682		George	Lapslie	CM	England	23	66	173	89
227948		Fiacre	Kelleher	CB	Republic of Ireland	25	80	190	1959
228928		Sam	Lavelle	CB	Scotland	24	76	183	357
230014		Ellis	Iandolo	CAM	England	23	71	186	1934
230771		Louis	Dunne	CAM	Republic of Ireland	22	70	175	1935
231602		Isaac	Pearce	ST	England	22	62	166	561
232031		Connor	Sparrow	GK	United States	27	79	188	111065
232778		Masashi	Wada	ST	Japan	24	74	177	101151
233505		Ryan	Sandford	GK	England	22	75	188	97
233931		Kye	Rowles	CB	Australia	23	82	183	111396
234894		Emil	Bohinen	CM	Norway	22	75	175	917
235375		Aldair	Quintana	GK	Colombia	27	85	194	112528
235771		Tom	Lowery	CM	England	23	75	168	121
236785		Tristan	Abrahams	ST	England	22	67	175	143
237236		İsmail	Ünal	GK	Turkey	23	73	181	113142
237744		Ryuji	Kawai	CB	Japan	43	75	183	112444
238343		Daniel	Mushitu	ST	Sweden	21	84	184	433
239007		Serkan	Bakan	LM	Turkey	20	68	171	101026
240323		Jack	Earing	CM	England	22	80	182	4
240967		Joshua	Kayode	ST	Nigeria	21	75	191	1797
241882		Masaaki	Goto	GK	Japan	27	83	190	113161
242199		Christopher	McVey	RB	Sweden	24	75	184	700
242382		Luca	Ashby-Hammond	GK	England	20	75	184	144
242585		Tsubasa	Shibuya	GK	Japan	26	89	189	112092
242700	Yan Zhiyu	Zhiyu	Yan	LB	China PR	28	65	170	111769
242877	Liu Yue	Yue	Liu	LM	China PR	23	66	174	112983
243177		Lukas	Malicsek	CB	Austria	22	71	180	111821
243501		Jan	Łoś	ST	Poland	21	71	175	111082
243886		Tobias	Mølgaard Henriksen	RM	Denmark	25	75	182	822
243936		Robert	Sulewski	RB	Poland	27	74	181	111082
244075		Nick	Otto	CB	Germany	22	75	184	110500
244198		Rob	Deiman	CM	Holland	22	70	178	100628
244386		Marian	Prinz	GK	Germany	21	80	192	531
244692		Jacob	Christensen	CM	Denmark	20	69	180	1788
244814		Sebastian	Mann	CM	Austria	24	70	174	2017
245084		Maxime	Busi	CB	Belgium	21	75	181	670
245435		Rakan	Al Najjar	GK	Saudi Arabia	26	82	189	607
245524		Hamad	Al Shaie	ST	Saudi Arabia	23	59	167	113222
50553756		Ally	Gilchrist	CB	Scotland	26	68	188	445
50562455		Hayden	Coulson	LB	England	23	70	172	12
50571856		Richie	Bennett	ST	England	30	87	193	357
67339671		Hayden	Coulson	LB	England	23	70	172	1944
199008		Sean	Harding	RB	Republic of Ireland	32	80	178	838
219872		Dylan	Hayes	RB	Republic of Ireland	26	72	168	838
222195	Zhao Xuebin	Xuebin	Zhao	ST	China PR	28	73	180	112378
231387		Noel	Mbo	ST	Congo DR	22	82	185	1802
231924		Adam	Curry	CB	England	24	79	187	1952
232635		Kazunari	Ichimi	ST	Japan	23	77	181	112093
232954		Ryoichi	Kurisawa	CDM	Japan	38	64	170	101145
233442		Jordi	Osei-Tutu	RB	England	22	72	178	1
234820		Harvey	St Clair	LW	Scotland	22	65	175	205
235428		Florian	Fischerauer	CM	Austria	22	63	170	111821
236350		Ignacio	Lara	LM	Chile	25	75	175	112668
236650		Jacob	Brown	RM	England	23	62	178	1932
237415		Jordan	Williams	RB	England	21	75	179	1932
237705		Dylan	Pierias	RB	Australia	21	63	168	112224
237863		Aidan	Keena	ST	Republic of Ireland	22	68	180	80
237933		Brandon	Fleming	LB	England	21	70	175	1952
238309		Tobias	Damsgaard	RB	Denmark	23	77	185	1786
238930		Thorben	Deters	CM	Germany	25	62	172	110597
239410		Mirko	Kos	GK	Austria	24	80	183	256
239887		Yanik	Frick	ST	Liechtenstein	23	75	187	1844
240310		Aaron	Eichhorn	RB	Germany	22	65	172	110169
240894		Rohan	Ferguson	GK	Scotland	23	86	184	83
241310	Liu Heng	Heng	Liu	CB	China PR	25	74	180	111779
241597		Brendan	White	GK	Australia	29	75	183	111395
242090		Ola	Solbakken	RW	Norway	22	82	186	112200
242305		Joachim	Olufsen	LW	Norway	26	75	184	112200
242564		Daiki	Tomii	GK	Japan	31	74	182	113161
243175	Lee Hyun Sik	Hyun Sik	Lee	CM	Korea Republic	25	64	175	112115
243365		Daiki	Miya	CB	Japan	25	82	186	101146
243689		Piotr	Pierzchała	CB	Poland	22	88	190	111083
243717		Allan	Høvenhoff	CM	Denmark	31	71	175	111660
243883		Joshua	Endres	ST	Germany	24	74	179	167
243959		Leon	Schneider	CDM	Germany	21	77	184	162
244188		Samuel	Abifade	LW	Germany	21	84	186	110500
244400		Kemal	Ademi	ST	Switzerland	25	85	195	435
244572		Brandon	García	LM	Mexico	24	63	169	1879
244759		Matteo	Catenacci	RB	Sweden	20	73	177	710
244887		Robbe	Decostere	CDM	Belgium	23	68	180	1750
245233		Michael	Steinwender	CB	Austria	21	76	190	1785
245420		Hussain	Salem	LB	Saudi Arabia	23	68	174	112096
50555557		Alex	Palmer	GK	England	24	72	191	1937
50562827		Jaman Abdullah	Al Dossary	LB	Saudi Arabia	27	76	178	112390
50565906		Steve	Seddon	LB	England	23	68	179	361
50568969		Mergim	Berisha	CF	Kosovo	23	79	186	191
50575019		Mathias	Jørgensen	ST	Denmark	20	70	184	689
138083		Nicky	Hunt	RB	England	37	86	185	121
209244		Michael	Barker	RB	Republic of Ireland	27	75	180	423
213535		Kyle	Zobeck	GK	United States	31	81	183	695
220611		James	Hamon	GK	England	26	70	185	143
222182	Zhu Xiaogang	Xiaogang	Zhu	CDM	China PR	33	75	182	112378
222187	Jin Qiang	Qiang	Jin	CDM	China PR	28	72	180	112378
223029		Hasan Hüseyin	Acar	CM	Turkey	26	75	183	101020
225245		Ronan	Coughlan	ST	Republic of Ireland	24	75	178	422
225940		Kevin	Mellado	ST	Chile	23	77	179	112531
227706		Jakub	Hromada	CDM	Slovakia	25	76	180	266
228040	Mai Jiajian	Jiajian	Mai	LM	China PR	25	67	179	112429
229644		Tariq	Issa	ST	England	23	70	170	1935
230807		Hayden	Coulson	LB	England	23	70	172	100805
231630		Bradley	Stevenson	CAM	England	22	73	183	1802
232634		Hiroki	Noda	CB	Japan	24	73	181	112093
233375		Darragh	Leahy	LB	Republic of Ireland	23	72	185	305
233804		Tyreeq	Bakinson	CM	England	22	70	191	112254
234614		Levi	Lumeka	LM	England	22	71	171	1799
235556		Abdulaziz	Al Shehry	GK	Saudi Arabia	26	67	184	112391
236706		Pontus	Almqvist	LW	Sweden	22	67	178	702
237059		Berat	Şahiner	LB	Turkey	23	70	175	113142
237365		Karvan	Ahmadi	LM	Sweden	22	64	172	113458
237869		Mauricio	Godoy	RW	Chile	24	68	171	111327
238260		Jamie	Stott	LB	England	23	79	188	1920
239075		Carlos	Martínez	RB	Costa Rica	22	65	177	2013
240553		Alex	Kapp	GK	United States	26	86	183	111138
241201		Pierce	Waring	ST	Japan	22	78	185	101148
241953		Regan	Slater	CM	England	21	65	173	1480
242115		Mamadou	Kamissoko	CB	France	28	82	188	217
242452		Cam	Lindley	CM	United States	24	73	175	112606
242638		Dan	Kelly	RM	Republic of Ireland	25	67	189	305
242872	Liu Le	Le	Liu	LB	China PR	32	78	184	112165
243012		Błażej	Niezgoda	GK	Poland	21	85	197	110745
243701		Andreas	Kaltoft	CB	Denmark	23	78	193	111660
243905		Robin	Mantel	GK	Belgium	20	87	196	2007
244077		Leon	Bürger	CDM	Germany	21	71	181	110500
244220		Oscar	Aga	ST	Norway	20	70	180	917
244513		Ibrahim	Sadiq	RW	Ghana	21	70	175	1788
244782		Gabriele	Piras	CB	Italy	22	80	189	209
244875		Toni	Stelzer	CB	Germany	21	80	191	110700
245267		Nasser	Khalifa	RB	Saudi Arabia	25	74	176	112391
245510		Abdullah Hassun	Tarmin	RB	Saudi Arabia	24	67	177	112387
50556893		Ronan	Coughlan	ST	Republic of Ireland	24	75	178	563
50561796		Willem	Tomlinson	CM	England	23	74	178	1940
50569450		Christoph	Haas	GK	Austria	29	83	190	111821
50574286		Dan	Kelly	RM	Republic of Ireland	25	67	189	837
211135		Mohammed	Attiyah	CM	Saudi Arabia	29	75	168	113219
217645		Yuzo	Kurihara	CB	Japan	37	80	184	101151
222279	Chang Feiya	Feiya	Chang	ST	China PR	28	72	180	112429
231606		Arnel	Jakupović	ST	Austria	23	70	186	1746
231889		Derek	Daly	LB	Republic of Ireland	23	75	180	753
232654		Luis	Malagón	GK	Mexico	24	77	179	1028
233390	Zuo Yiteng	Yiteng	Zuo	RB	China PR	26	69	179	111769
233932		Connor	O'Toole	LB	Australia	23	65	175	111395
234950		Alfred	Ajdarević	LW	Albania	23	71	186	705
235662		Abdul	Mumin	CB	Ghana	23	75	185	1788
236371	Marc Vito	Marc	Vito Brezmes	GK	Spain	24	80	187	110062
237154		Finn	O'Mara	CB	Republic of Ireland	22	74	183	1802
237509		Bryan	Lasme	ST	France	22	90	192	226
237724		Abdulmajeed	Al Arishi	CB	Saudi Arabia	26	70	175	111674
237885		Cristian	Tovar	CB	Colombia	23	70	182	111722
237937		Felix Horn	Myhre	CDM	Norway	22	75	180	920
238606	Jo Yong Jae	Yong Jae	Jo	RW	Korea Republic	23	68	173	2056
238806		Danny	Breitfelder	ST	Germany	24	73	188	110700
239443		Dan	McNamara	RB	England	22	69	180	97
240207	Liu Yang	Yang	Liu	LM	China PR	26	75	184	111724
240535		Ellis	Chapman	CM	England	20	76	191	149
241279		Adrian	Edqvist	RM	Sweden	22	75	178	1439
241859		Ron-Thorben	Hoffmann	GK	Germany	22	84	192	21
241956		Mathias	Kristensen	ST	Denmark	28	95	201	1446
242200		Tim	Rönning	GK	Sweden	22	80	191	700
242526		Karol	Dybowski	GK	Poland	24	80	186	111086
243103	Yu Zhen	Zhen	Yu	CB	China PR	24	74	178	112378
243287	Lim Eun Soo	Eun Soo	Lim	CM	Korea Republic	25	68	182	110765
243410		Onur	Ünlüçifçi	RM	Germany	24	70	178	110197
243715		William	Saliba	CB	France	20	80	192	1819
243894		Basil	Stillhart	CDM	Switzerland	27	69	178	1715
244028		Semi	Belkahia	CB	Germany	22	83	192	33
244119		Pierre	Patron	GK	France	23	85	191	1815
244380		Vitaliy	Mykolenko	LB	Ukraine	22	71	180	101047
244512		Daniel	Szczepan	ST	Poland	26	78	179	111092
244654		Keisuke	Osako	GK	Japan	22	86	186	113157
244788		Pavel	Bucha	CM	Czech Republic	23	70	173	110468
245085		Abdullah	Al Bahri	GK	Saudi Arabia	26	75	184	112096
245421		Faisal	Omar	CB	Saudi Arabia	24	76	182	112096
245482		Abdulaziz	Al Enazi	RB	Saudi Arabia	24	61	178	112389
50560181	Lee Joon Hee	Joon Hee	Lee	GK	Korea Republic	27	89	192	2056
50563537		Derek	Daly	LB	Republic of Ireland	23	75	180	838
50567389		Charles	Lokoli-Ngoy	ST	Australia	24	81	188	111395
50569481		Mark	Harris	ST	Wales	22	75	182	1961
67343122		Steve	Seddon	LB	England	23	68	179	112259
11793		Steve	Collis	GK	England	40	83	185	1955
181685		Shane	Tracy	LB	Republic of Ireland	32	74	178	111285
212167		Charles	Vernam	ST	England	24	74	170	92
220564		Maxim	Rudakov	GK	Russia	25	75	189	100325
222081		Niklas	Sandberg	CM	Norway	26	65	180	1524
222524		Robin	Kamber	ST	Switzerland	25	82	187	322
224515		Jeppe	Simonsen	RB	Denmark	25	76	184	1447
225740	Dong YanFeng	YanFeng	Dong	RB	China PR	25	71	180	112378
227219		Easah	Suliman	CB	England	23	78	188	100628
228667		Erlend	Segberg	CM	Norway	24	65	176	1524
229268		Filip	Tägtström	CB	Sweden	23	75	183	1596
230148		Willem	Tomlinson	CM	England	23	74	178	3
231617		Leon	Davies	RB	England	21	70	180	1944
232476		Keiya	Shiihashi	CB	Japan	24	69	177	112836
232821		Daigo	Araki	CM	Japan	27	73	178	101144
233741		William Arne	Hanssen	ST	Norway	23	75	178	918
234121		Omar Salman	Al Suhaymi	CDM	Saudi Arabia	28	63	176	112389
235267		Akin	Famewo	CB	England	22	66	180	92
235624		Yerko	Aguila	LB	Chile	25	73	176	112709
235806		Giacomo	Satalino	GK	Italy	22	75	188	111974
236811		Romir	Balanta	ST	Colombia	28	72	174	101099
237262		Kwame	Awuah	CM	Canada	25	73	170	112828
237802		Christoph	Haas	GK	Austria	29	83	190	254
238367		George	Hughes	CM	Wales	22	74	176	127
239729		Adam	Wolniewicz	RB	Poland	28	78	183	420
240330		Hamad	Hawsawi	GK	Saudi Arabia	24	76	175	113057
240838		Bradley	Wade	GK	England	21	74	178	1955
241236		Antoine	Semenyo	ST	England	21	63	178	112254
241582		William	Fitzgerald	LM	Republic of Ireland	22	73	187	111285
242070		So	Nakagawa	CB	Japan	22	71	184	101145
242262		Mathias	Karlsson	GK	Sweden	25	80	185	705
242325		Malcom	Edjouma	CDM	France	24	84	189	217
242568		Hirokazu	Ishihara	LM	Japan	22	65	169	113161
242669		Lavdrim	Rexhepi	CAM	Switzerland	23	74	175	894
242774		Yuya	Oki	GK	Japan	21	82	184	101147
242913	Luo Hao	Hao	Luo	CB	China PR	26	79	186	112165
243356		Valentin	Reitstetter	CB	Germany	23	79	187	110591
243860		Jan	Kronig	CB	Switzerland	21	78	185	900
243895		Dennis	Salanovic	RM	Liechtenstein	25	74	178	1715
244074		Roman	Birjukov	GK	Germany	22	71	188	110500
244177		Daniël	Camara Bos	RB	Holland	22	65	174	100628
244256		Daniel	Bielica	GK	Poland	22	76	189	420
244510		Marius	Hauptmann	RM	Germany	21	67	178	503
244785		Jakub	Šiman	GK	Czech Republic	26	92	197	110468
244928		Amar	Hodzic	ST	Austria	22	80	185	111822
245414		Radhi	Al Otaibi	RB	Saudi Arabia	21	57	170	112408
245499		Abdulbasit	Hindi	CB	Saudi Arabia	24	64	181	112387
50553729		Niklas	Sandberg	CM	Norway	26	65	180	1463
50561703		Niko	Hämäläinen	LB	Finland	24	64	178	112996
50566490		Florian	Kraft	GK	Germany	23	80	184	110169
50572884		Antoine	Semenyo	ST	England	21	63	178	1919
67345649		Tristan	Abrahams	ST	England	22	67	175	346
214032		Brayan	Lucumí	RM	Colombia	27	62	170	111723
220939		Luke	Pilling	GK	Wales	24	69	180	15048
231267		Jason	Lokilo	RM	Congo DR	22	65	175	217
232206		Matías	Parada	CAM	Chile	23	64	168	112533
232460		Masato	Tokida	CB	Japan	23	81	187	112836
232878		Toshiya	Tanaka	CM	Japan	23	65	175	101147
233915		Jordan	Ponticelli	ST	England	22	70	180	1800
234692		Zak	Mills	RB	England	29	83	182	357
235168	Liu Hao	Hao	Liu	RB	China PR	25	70	176	112977
235913		Elliot	Embleton	CM	England	22	64	173	106
236788		Matty	Gillam	ST	England	22	73	176	1955
237653		Carlos	Rojas	ST	Colombia	23	71	177	112526
237714		Dane	Ingham	RB	New Zealand	22	73	186	111395
237886		Chris	Goslin	CM	United States	21	66	170	112885
238035		Andreas	Hoven	RM	Norway	23	84	184	922
238466		Jordan	Thompson	CB	England	22	76	183	1800
239005		Lorenz	Grabovac	LW	Austria	24	66	178	112075
239595		Nathan	Rodes	CDM	Belgium	23	74	191	670
240129		Mathias	Haarup	RB	Denmark	25	70	178	112425
240424		Ziad	Al Haniti	CB	Saudi Arabia	25	87	180	113219
241219		Wachpirom	Jakkit	RM	Thailand	24	70	173	101150
241354		Tom	Powell	ST	England	22	64	170	1952
241955		Simon	Amin	CM	Syria	23	68	182	705
242062		Hampus	Finndell	CM	Sweden	21	74	177	710
242230		Jamie	Lennon	CM	Republic of Ireland	23	61	178	423
242515		Wessam Abou	Ali	ST	Denmark	22	78	186	820
242924	Ko Jae Hyun	Jae Hyun	Ko	RM	Korea Republic	22	67	180	2056
243240		Naif	Abdali	ST	Saudi Arabia	23	60	170	113057
243409		Ian	Opdenakker	CDM	Belgium	21	68	179	680
243679		Emil	Bijlsma	CM	Holland	22	73	186	100628
243737		Matti	Kamenz	GK	Germany	22	80	188	110592
243935		Ugur Mustafa	Türk	CAM	Turkey	24	77	182	33
244088		Manato	Shinada	CM	Japan	21	66	180	101150
244254		Wiktor	Biedrzycki	CDM	Poland	24	74	189	420
244407	Pol Lozano	Pol	Lozano Vizuete	CM	Spain	21	68	176	452
244558		Idekel	Domínguez	RB	Mexico	21	65	171	1881
244780		Edoardo	Masciangelo	LB	Italy	25	69	177	10032
244974		Anthony	Goelzer	LB	France	22	75	182	110456
245415		Abdullah	Abdulhameed	GK	Saudi Arabia	27	72	182	113222
50530539		Conor	Clifford	CM	Republic of Ireland	29	77	182	111285
50563254		Arnel	Jakupović	ST	Austria	23	70	186	209
50567561		Elliot	Embleton	CM	England	22	64	173	92
50571688		Carlo	Holse	RM	Denmark	22	68	175	1445
67346801		Felix Horn	Myhre	CDM	Norway	22	75	180	918
169515		James	Sinclair	RB	England	33	80	175	357
210330		Alex	Addai	ST	England	27	74	178	1936
215451		Mikkel	Wohlgemuth	CM	Denmark	26	70	179	111660
222108		Ally	Gilchrist	CB	Scotland	26	68	188	306
222703	Choe Pil Soo	Pil Soo	Choe	GK	Korea Republic	30	91	192	2055
225068		Jamie	McDonagh	RM	Northern Ireland	25	70	180	445
225589		Jason	Kerr	CB	Scotland	24	75	180	100804
226352		Jack	Sowerby	CM	England	26	78	175	112260
227929		Ryan	Wintle	CM	England	24	64	180	121
228049	Sun Ya	Ya	Sun	RM	China PR	24	72	184	111774
229130		Kevin	Horgan	GK	Republic of Ireland	24	82	192	306
230136		Jordan	Thompson	CM	Northern Ireland	24	70	175	1926
231481		Theo	Vassell	CB	England	24	70	184	1928
231683		Mario	Shabow	LM	Australia	23	74	178	111396
232638		Akito	Takagi	ST	Japan	24	65	175	112093
233523		Abdul-Basit	Agouda	ST	Norway	22	70	179	917
234039		Rarmani	Edmonds-Green	CB	England	22	73	181	1939
234842		Florian	Kraft	GK	Germany	23	80	184	160
235535		Rhys	Lovett	GK	England	24	74	183	1936
235994		Danny	Amos	LB	England	21	68	180	142
237201		Kendall	McIntosh	GK	United States	27	79	183	111140
237596		Cristian	Carletti	ST	Italy	25	84	185	112409
238335		Jordan	Simpson	CM	England	22	72	179	561
238447		Hiroto	Ishikawa	CM	Japan	23	64	172	113160
239801		Ryan	Clampin	LM	England	22	70	180	1935
240208		Richie	Bennett	ST	England	30	87	193	1480
241087		Patrick	Bahanack	CB	Cameroon	24	78	185	379
241916		Jakob	Tromsdal	CM	Norway	23	70	185	112200
242229		Brian	Maher	GK	Republic of Ireland	20	58	178	423
242393		Bilal	Hussein	CM	Sweden	21	70	175	433
242606		Sebastian	Strózik	ST	Poland	22	76	179	110747
242867		Arnar Thór	Gudjónsson	CB	Norway	22	75	187	922
243295		Michael	Fuentes	CF	Chile	23	71	170	112531
243687		Harry	Pritchard	LM	England	28	79	183	1926
243921		Jakub	Łabojko	CDM	Poland	23	78	179	111092
244121		Denis	Jäpel	ST	Germany	23	70	178	110591
244216		Lewis	Gibbens	CB	England	20	71	182	1940
244430		Tjorve	Mohr	CB	Germany	24	84	194	576
244651		Ayumu	Kawai	LB	Japan	21	65	177	113157
244796		Matej	Valenta	CM	Czech Republic	21	75	181	266
245069		Yasufumi	Nishimura	CM	Japan	21	71	184	101149
245472		Maciej	Śliwa	CAM	Poland	20	70	175	1873
245518		Mohammad Fuad	Al Thani	RM	Saudi Arabia	24	64	174	112389
50558000		Jack	Sowerby	CM	England	26	78	175	1480
50563004		Matthew	Millar	RB	Australia	24	80	178	111398
50568433		Tristan	Abrahams	ST	England	22	67	175	1792
50573973		Malcom	Edjouma	CDM	France	24	84	189	111273
208932		Abdullah Hamdan	Al Shammari	GK	Saudi Arabia	29	83	186	112392
218170		Silas	Songani	RM	Zimbabwe	32	63	170	1447
222190	Lü Peng	Peng	Lü	CM	China PR	31	76	182	111768
231682		Thomas	Heward-Belle	GK	Australia	24	80	192	111400
232370		Rikiya	Motegi	CB	Japan	24	68	174	111575
232672		Jan	Kaye	ST	France	25	83	188	294
233161	Lee Rae Joon	Rae Joon	Lee	ST	Korea Republic	24	72	192	1474
234358		Joseph	Ceesay	RM	Sweden	23	69	178	710
235058		Osama Saleem	Al Saleem	LB	Saudi Arabia	24	63	183	112096
235742		Sam	Nombe	ST	England	22	74	180	1798
236717		Erik Tobias	Sandberg	CB	Norway	21	76	190	299
237321		Mergim	Berisha	CF	Kosovo	23	79	186	110588
237704	João Virgínia	João	Virgínia	GK	Portugal	21	80	191	7
237824		Moisés	Galé	CDM	Colombia	25	75	181	112523
237929		Aaron	Simpson	LB	England	22	64	176	1802
238051		Rasmus	Vinderslev	CM	Denmark	23	73	184	1447
238662		Tymoteusz	Puchacz	LB	Poland	22	74	180	111089
239076		Abdul Manaf	Nurudeen	GK	Ghana	22	77	190	2013
239633		Florian	Schikowski	ST	Poland	23	74	181	111091
240040		Carlo	Holse	ST	Denmark	22	68	175	819
240340		Chris	Zuvela	CM	Australia	24	78	179	111400
241200		Daniel	Stynes	CAM	Australia	22	70	184	111399
241328	Wei Zhen	Zhen	Wei	CB	China PR	24	78	188	112540
241944		Moussa	Guel	RW	Côte d'Ivoire	22	80	172	217
242088		Yasuto	Wakizaka	CM	Japan	26	65	172	111730
242203		Kevin	Politz	CB	United States	25	79	183	689
242337		Daniel	Moreno	CAM	Colombia	25	67	174	112528
243065	Li Siqi	Siqi	Li	CM	China PR	23	77	183	111768
243371		Mathias	Jørgensen	ST	Denmark	20	70	184	272
243449		Lucas	Perrin	CB	France	22	71	187	219
243718		Rowen	Koot	GK	Holland	22	80	185	634
243897	Philippe	Philippe	Almeida Costa	ST	Brazil	21	65	185	110770
244076		Yari	Otto	ST	Germany	22	71	180	110500
244174		Dylan	Parker	ST	England	21	70	178	1803
244281		Nils	Anhölcher	ST	Germany	21	74	184	550
244519		Okan	Yilmaz	ST	Austria	23	80	190	2045
244634		Simon	Sohm	CDM	Switzerland	20	85	188	894
244860		Luca	Gelzleichter	ST	Germany	21	71	184	110502
245014		Simon	Janssen	CM	Holland	20	67	178	100651
245377		Nawaf	Al Harthi	RM	Saudi Arabia	22	58	169	112408
245449		Takuma	Mizutani	RM	Japan	25	62	162	101149
245516		Hussain	Hawsawi	CB	Saudi Arabia	23	76	183	112389
50561577		Vashon	Neufville	LB	England	22	67	172	112254
50565563		Jordan	Ponticelli	ST	England	22	70	180	1959
50568824		Ryan	Schofield	GK	England	21	70	190	1937
50573893		Fahad	Al Rashidi	LM	Saudi Arabia	24	68	176	113219
67346185		Mergim	Berisha	CF	Kosovo	23	79	186	15009
151135		Jonathan	Smith	CM	England	34	68	181	361
181109		Tadaaki	Hirakawa	RM	Japan	42	72	172	111575
215656		Kevin Ray	Mendoza Hansen	GK	Denmark	26	81	187	1446
222121	Xiang Hantian	Hantian	Xiang	RM	China PR	25	63	175	112537
222297	Wang Liang	Liang	Wang	RB	China PR	32	68	182	112378
224650	Sun Kai	Kai	Sun	RB	China PR	30	77	180	110955
225770		Kristopher	da Graca	CB	Sweden	23	80	188	319
227895		Kris	Twardek	LM	Canada	24	79	185	563
228018	Zhou Dadi	Dadi	Zhou	LM	China PR	25	64	176	111769
229006		Przemysław	Macierzyński	ST	Poland	22	74	182	111091
230055		Niko	Hämäläinen	LB	Finland	24	64	178	15
231356		Matthew	Millar	RM	Australia	24	80	178	111396
231659		Zayn	Hakeem	ST	England	22	72	188	1940
232679		Tatsuro	Okuda	GK	Japan	32	84	185	112448
233328		Emre	Selen	GK	Turkey	26	75	183	113259
233824		Christian	Oxlade-Chamberlain	RB	England	23	65	187	1937
234260		Andy	Fisher	GK	England	23	73	189	3
235421		Benjamin	Ozegovic	GK	Austria	21	78	184	15009
236244		Toby	Sibbick	CB	England	22	69	183	112259
237208		Paul	Lewis	CDM	England	26	72	186	1944
237751		Yohei	Nishibe	GK	Japan	40	79	187	101149
237935		Kristoffer	Klaesson	GK	Norway	20	76	189	920
238378		Magnus	Kaastrup	LM	Denmark	20	70	176	271
238715		Edvin	Crona	ST	Sweden	21	76	186	1439
240111		Yannik	Nuxoll	CB	Germany	23	85	190	110597
240649		John	Roberts	ST	Australia	20	68	170	112427
240869		Korrey	Henry	ST	England	21	70	178	346
241577		Laorent	Shabani	CDM	Sweden	21	78	180	320
242057		Walter	Scott	LB	Australia	21	70	175	111399
242114		Ibrahim	Mahnashi	CM	Saudi Arabia	21	70	171	112096
242301		Jason	Beaulieu	GK	Canada	27	88	193	111139
242525		Carlo	Sickinger	CDM	Germany	24	73	183	29
242594		Daiki	Kaneko	CM	Japan	22	66	176	113161
242759		Allan	Arigoni	LB	Switzerland	22	77	184	322
242903		Jordan	Cano	RB	United States	25	77	185	695
243301		Ricky	Lopez-Espin	ST	United States	25	91	191	111065
243750	Gianluca Zanette	Gianluca	Zanette	GK	Brazil	24	80	189	822
243893		Kenan	Fatkic	CAM	Slovenia	23	75	186	1715
244167		Sebastian	Milewski	CM	Poland	23	76	175	111089
244211		Flavius	Botiseriu	LB	Germany	22	74	179	29
244439		Matthias	Minder	GK	Switzerland	28	85	188	435
244768		Moataz	Akjah	GK	Saudi Arabia	23	72	178	112408
244916		Atsushi	Zaizen	CAM	Japan	22	68	177	2045
245268		Hamad	Al Yami	ST	Saudi Arabia	22	70	170	112391
245508		Omar	Al Zayni	CDM	Saudi Arabia	25	70	177	112387
50540892		Michael	Barker	RB	Republic of Ireland	27	75	180	305
50558867		Easah	Suliman	CB	England	23	78	188	2
50566915		Akin	Famewo	CB	England	22	66	180	1792
50573705		Walter	Scott	LB	Australia	21	70	175	111766
192542		Shaun	Kelly	RB	Republic of Ireland	31	74	180	111285
213793		Eric	Grimes	GK	Republic of Ireland	26	69	183	445
222174	Shi Liang	Liang	Shi	CM	China PR	32	69	175	112537
224819		Robin	Huser	CM	Switzerland	23	70	180	896
224947		Daniel	Grimshaw	GK	England	23	77	185	10
228109		Tommy	Holland	GK	Republic of Ireland	23	75	180	111285
229559		Jamie	Veale	CM	Wales	24	70	173	1961
231590		Lewis	Butroid	LB	England	22	67	175	1949
233237		Felipe	Acosta	RM	Colombia	27	70	190	112019
233689		Julius	Lindgren	GK	Sweden	24	80	184	702
235770		Harry	Pickering	LB	England	22	78	178	121
236551		Harry	Darling	CB	England	21	75	181	1944
237324		Vlad Mihai	Dragomir	CAM	Romania	22	67	178	199
238368		John	McAtee	ST	England	22	75	180	127
238746		Kacper	Laskoś	CM	Poland	21	74	184	1873
239424		Miguel	Rodrigues	CB	Switzerland	24	75	184	1715
239859	Li Hailong	Hailong	Li	RB	China PR	25	75	181	111724
240321		Jeff	King	CM	England	25	70	175	100805
240650		Ramy	Najjarine	LM	Australia	21	71	176	112224
241138		Alexander	Ammitzbøll	ST	Denmark	22	78	188	271
241519	Li Lei	Lei	Li	GK	China PR	28	95	196	112977
242103		Emil	Kalsaas	RB	Norway	21	75	180	919
242415	Xu Yougang	Yougang	Xu	RB	China PR	25	72	180	110955
242851	Shen Shuaishuai	Shuaishuai	Shen	GK	China PR	22	75	188	112429
243343		Matias	Contreras	ST	Chile	23	72	174	112535
243957		Tim	Stawecki	GK	Germany	20	88	191	162
244093		Enes	Küc	CAM	Germany	24	76	179	110197
244356		Migel-Max	Schmeling	LB	Germany	21	77	180	1825
244551		Filip	Majchrowicz	GK	Poland	21	93	194	110747
244966		Abdulrahman	Al Dhafeeri	CM	Saudi Arabia	24	61	169	112990
245135		Gabriel	Rogers	RM	England	21	70	178	346
245356		Faisal	Darisi	CB	Saudi Arabia	24	79	180	112387
50566588		Aden	Baldwin	CB	England	24	70	183	1919
50573290		James	Finnerty	CB	Republic of Ireland	22	68	176	305
50575840		Thomas	Isherwood	CB	Sweden	23	88	195	113173
206077		Hugh	Douglas	RB	Republic of Ireland	28	85	191	838
223488		Morten	Sætra	GK	Norway	24	78	198	922
227676		Mikhail	Kennedy	RM	Northern Ireland	24	76	180	89
229047		Will	Longbottom	ST	England	22	62	175	142
230971		Nikola	Tzanev	GK	New Zealand	24	72	195	112259
231722		Aubin	Long	GK	France	24	80	185	226
233377		Callum	Maycock	CM	England	23	71	182	1959
236702		Reagan	Ogle	RB	Australia	22	66	173	110313
237167		Ryuki	Miura	GK	Japan	29	75	181	101144
237930		Sebastian	Hausner	CB	Denmark	21	78	188	271
239084		Kevin	Ackermann	CM	Sweden	20	83	179	711
239811	Lee Yunoh	Yun Oh	Lee	GK	Korea Republic	22	88	190	112836
240096		Lachlan	Brook	CAM	Australia	20	69	178	111393
240306	Jeong Chung Yeob	Chung Yeob	Jeong	LW	Korea Republic	23	71	184	2056
240596		Kyle	McClean	CM	Northern Ireland	22	69	184	100804
241413		Lucas	Hedlund	LW	Sweden	22	70	181	711
241832		Yagoub	Mustafa	ST	Australia	22	70	175	111399
242058		Kai	Shibato	CDM	Japan	25	70	180	111575
242302		Brandon	Servania	CAM	United States	22	73	178	695
242590		Shumpei	Fukahori	ST	Japan	23	68	178	112092
242941		Marius	Bustgaard Larsen	LW	Norway	21	65	175	1456
243109	Wen Junjie	Junjie	Wen	CB	China PR	24	72	184	112983
243524		Sigurd	Grønli	CF	Norway	20	64	170	418
243729		Nicholas	Sette	RW	Australia	21	70	183	111397
244091		Nico	Ochojski	CDM	Germany	22	72	182	110169
244326		Philippos	Selkos	ST	Greece	21	70	183	10030
244479		Adrian	Klimczak	LB	Poland	24	68	183	111082
244815		Artur	Piróg	CM	Poland	21	73	181	111083
245245		Dexter	Walters	LM	England	22	75	178	1800
245463		Michał	Ozga	CB	Poland	21	70	181	110745
245507		Yahya	Al Qarni	CDM	Saudi Arabia	22	57	167	112387
50570732		Kevin	Ackermann	CM	Sweden	20	83	179	110374
50573607		Dan	Smith	ST	England	21	62	178	422
210714		Jannik	Skov Hansen	RM	Denmark	28	70	175	1786
225342		Jack	Stevens	GK	England	24	77	188	1951
228117		Oscar	Jonsson	GK	Sweden	24	79	186	710
233681	Liu Shibo	Shibo	Liu	GK	China PR	24	79	189	111839
234073		Ross	Cunningham	CM	Scotland	23	70	178	184
235139	Long Wei	Wei	Long	CB	China PR	26	70	182	111779
236737		Joe	Iaciofano	ST	England	22	64	178	1930
238455		Valtteri	Vesiaho	CB	Finland	22	82	183	100325
239540		Eoin	Toal	CB	Northern Ireland	22	70	191	445
240218		Alexander	Weidinger	GK	Germany	24	88	197	543
240386		Gustav	Nyberg	GK	Sweden	23	91	190	113458
240605		Archie	Collins	CAM	England	21	63	175	143
240998		Matías	Ormazábal	RW	Chile	22	72	173	112655
241329	Yu Hao	Hao	Yu	CB	China PR	23	67	185	112540
241559		Chriss	Gutiérrez	ST	Chile	21	65	168	112533
242031		Casper	Hauervig	GK	Denmark	22	88	192	269
242621		Ryo	Niizato	CM	Japan	25	68	180	112448
242699	Xue Yanan	Yanan	Xue	RB	China PR	31	75	182	111769
242893		Ibrahima	Koné	ST	Mali	22	75	180	1463
243041		Julian	Guttau	CM	Germany	21	70	180	110482
243161		Peshraw	Azizi	CB	Sweden	33	78	178	113876
243620		Adam	Hellborg	CM	Sweden	23	77	185	1439
243917		Joe	Gauci	GK	Australia	21	78	193	111396
244813		Marcel	Zapytowski	GK	Poland	20	80	190	1569
245090		Laurenz	Beckemeyer	GK	Germany	21	75	185	487
245422		Abdulaziz	Al Moghir	CB	Saudi Arabia	24	70	175	112393
50538125		Niall	Corbet	GK	Republic of Ireland	26	78	185	305
50576777		Mateusz	Hołownia	LB	Poland	23	70	184	111092
229615		Josh	Heaton	CB	England	24	68	185	100805
233727		Connor	McLennan	ST	Scotland	21	69	182	77
234705		Andrew	Eleftheriou	RM	England	23	64	172	1795
226490		Steven	Boyd	ST	Scotland	24	70	180	184
228998		Dario	Marzino	GK	Switzerland	24	77	184	900
231131		James	McGarry	LW	New Zealand	23	72	179	1907
232668		Liam	Gordon	CB	Scotland	25	77	182	100804
233481		Ethan	Ross	GK	England	24	94	196	1935
234953		Jacob	Marsden	GK	England	24	70	185	184
236468		Aksel	Aktas	CAM	Turkey	22	70	177	379
237126		Sam	Osborne	RM	England	22	65	177	1937
238046		David	Camacho	CM	Colombia	24	71	178	112523
238448		Akira	Fantini	GK	Japan	23	78	182	113160
238775		Sebastian	Kowalczyk	RM	Poland	22	54	169	110746
239429		Gjelbrim	Taipi	CM	Albania	28	76	175	322
240117		Maren	Haile-Selassie	RM	Switzerland	22	68	176	894
240538		Aleksandar	Vucenovic	ST	Austria	23	73	182	112075
240968		Reece	McGinley	LM	Northern Ireland	21	65	175	1797
241269		Andreas	Bruus	ST	Denmark	22	69	184	269
242064		Riku	Tanaka	RM	Japan	22	62	167	101145
242409	Jin Hui	Hui	Jin	ST	China PR	32	80	183	112537
242615		Ross	Treacy	GK	Republic of Ireland	22	80	187	837
243176		Stefan	Wolf	CM	Switzerland	22	75	177	897
243721		Dylan	Wenzel-Halls	ST	Australia	23	68	173	111395
243958		Niklas	Geisler	CAM	Germany	20	67	178	162
244141		Nsana	Simon	CM	France	21	62	171	64
244413		Manuel	Pfeifer	CB	Austria	21	70	189	2017
244533		Damian	Gąska	CM	Poland	24	65	176	111092
244812		Nemanja	Celic	CDM	Austria	22	74	184	252
245125		Patryk	Plewka	CAM	Poland	21	70	174	1873
245462		Szymon	Łapiński	CAM	Poland	20	71	181	110745
50566720		Kevin	Lynch	LB	Republic of Ireland	29	76	185	753
50571994		Shamal	George	GK	England	23	75	191	9
50575347		Frederik	Ibsen	GK	Denmark	24	80	186	819
207829		Luke	Coddington	GK	England	26	75	181	1930
224681	Wen Zhixiang	Zhixiang	Wen	GK	China PR	28	96	192	111779
225986		Dylan	Mottley-Henry	RM	England	24	71	178	15048
228048	Sun Weizhe	Weizhe	Sun	CDM	China PR	24	72	180	112537
230691		Michael	Kempter	LB	Switzerland	26	73	181	894
231553		Frankie	Musonda	CB	England	23	71	183	1923
232839		Miro	Muheim	LM	Switzerland	23	77	182	898
234074		Ryan	Tierney	ST	Scotland	23	70	178	184
235912		Khuwailed	Al Mozaibri	GK	Saudi Arabia	24	96	193	112990
237269		Jake	McGuire	GK	United States	26	79	191	112134
238767		Javier	Urzúa	CAM	Chile	21	68	172	111327
239279		Łukasz	Krakowczyk	ST	Poland	23	69	178	111086
240006		Tim	Mannek	ST	Germany	24	85	191	10030
240143		Cristian	Magerusan	ST	Romania	21	72	178	305
240433		Enoch	Banza	RW	Congo	21	75	176	100325
240696		Malachi	Napa	RM	England	22	65	166	1959
241418	Gao Tianyi	Tianyi	Gao	CDM	China PR	23	79	185	112162
241623	Yan Hao	Yan	Hao	ST	China PR	22	75	185	111779
241959		Dan	Smith	ST	England	21	62	178	1790
242173		Johan	Brannefalk	CM	Sweden	23	75	179	703
242636		Evan	Moran	GK	Republic of Ireland	24	77	182	838
242977		Francisco	Sasmay	LM	Chile	23	73	174	112533
243130		Daniel	Andersen	GK	Denmark	20	75	194	271
243350		Felix	Agu	RW	Germany	21	60	165	487
244015		Maximilian	Schlosser	GK	Germany	22	75	180	506
244132		Lukas	Sedlak	GK	Germany	21	79	187	110591
244323		Sascha	Heil	CB	Germany	22	72	184	10030
244457		Craig	Henderson	LM	Scotland	20	67	173	621
244620		Loïc	Jacot	GK	Switzerland	21	85	190	897
245176		Jan-Christoph	Bartels	GK	Germany	22	80	187	31
245457		Waleed Khaled	Al Enezi	RB	Saudi Arabia	22	66	175	112990
245496		Muhannad	Al Shudukhi	RM	Saudi Arabia	22	54	170	112392
50573077		Adam	Crookes	LB	England	23	77	182	1928
50574151		Eryk	Williamson	CAM	United States	24	70	175	111140
182461	Zhou Ting	Ting	Zhou	CM	China PR	42	74	185	112378
220216		Sean	Heaney	CB	Republic of Ireland	25	81	193	838
230722		Sean	Boyd	ST	Republic of Ireland	23	84	195	306
232888	Chen Zhechao	Zhechao	Chen	CM	China PR	26	70	177	111724
233912		Emil	Damgaard	RWB	Denmark	22	70	180	1788
235669		Aaron	Comrie	RB	Scotland	24	65	181	100804
237205		Ashley	Maynard-Brewer	GK	Australia	22	63	171	89
237889		Jack	Keaney	CM	Republic of Ireland	22	66	185	563
239019		James	Delianov	GK	Australia	21	85	188	112224
240313		Ahkeem	Rose	ST	Jamaica	22	68	175	92
240381		Zehn	Mohammed	CB	England	21	80	185	110313
240606		Jack	Sparkes	LM	England	20	63	175	143
241088		Brian	Chevreuil	CAM	Haiti	24	78	176	212
241342	Su Yuanjie	Yuanjie	Su	ST	China PR	26	70	180	112983
241483	Lei Wenjie	Wenjie	Lei	ST	China PR	24	80	184	112540
241883		Kota	Sanada	GK	Japan	22	88	190	113161
242243		Haruki	Saruta	GK	Japan	22	79	190	101145
242549		Vjačeslavs	Kudrjavcevs	GK	Latvia	23	80	188	1871
242873	Zhang Lingfeng	Lingfeng	Zhang	RM	China PR	24	70	176	112162
242912		Declan	O'Hare	CAM	England	21	73	176	149
243154		Adrian	Benedyczak	ST	Poland	20	75	187	110746
243584		Sean	Bohan	GK	Republic of Ireland	20	70	180	305
243637		Reece	Hutchinson	LB	England	21	75	179	15015
244450		Adrian	Knüver	CM	Germany	22	72	174	531
244996		Remaye	Campbell	ST	England	20	75	180	1937
245407		Nino	Ziswiler	GK	Switzerland	21	76	186	1715
245567		Gianluca	Tolino	GK	Switzerland	21	80	186	898
50573646	Dong Honglin	Honglin	Dong	ST	China PR	25	70	180	112165
224927		Tom	Smith	CM	England	23	68	170	1936
232789		Teruhito	Nakagawa	RW	Japan	29	57	161	101151
234477		Aaron	Dobbs	ST	Republic of Ireland	22	81	175	306
225390		Hampus	Strömgren	GK	Sweden	25	83	198	1439
228799		Mikkel	Mejlstrup Pedersen	CM	Denmark	25	80	182	112425
231237		Peter Vindahl	Jensen	GK	Denmark	23	89	194	1788
232565		Goro	Kawanami	GK	Japan	30	84	192	112836
233629		Shaun	Want	CB	Scotland	24	70	180	184
235072		Kevin	Lynch	LB	Republic of Ireland	29	76	185	838
235804		Benjamin	Lund	LB	Denmark	24	75	185	111660
236800		Iván	Angulo	RM	Colombia	22	62	170	112526
238237		Morten	Renå Olsen	RB	Norway	22	70	177	917
238545		Firas	Al Birekan	ST	Saudi Arabia	21	75	181	112139
238800		Jamie	Hamilton	CM	Republic of Ireland	22	55	165	305
239773		Alex	Reid	ST	England	25	78	178	361
240236		Luke	Russe	CM	England	22	64	165	1962
240460		Basil	Al Bahrani	GK	Saudi Arabia	26	76	176	112390
241108		Pedro	Teixeira	LM	Switzerland	22	72	178	900
241401		Scott	Moloney	GK	England	21	70	180	1945
242040		Olaus Jair	Skarsem	CM	Norway	23	74	183	298
242347		Isaac	Angking	CDM	United States	21	73	178	691
242624		Jon	Gallagher	ST	Republic of Ireland	25	71	175	112885
243212		Johann	Berger	CDM	Germany	22	73	184	27
243603		Lars Mogstad	Ranger	RB	Norway	22	65	176	299
244070		Tim	Kircher	RB	Germany	22	68	180	1832
244192		Thomas	Isherwood	CB	Sweden	23	88	195	1804
244465		Jack	Hamilton	ST	Scotland	21	80	184	621
244563		Cammy	MacPherson	CM	Scotland	22	71	175	100805
244939		Leonardo	Zottele	CB	Austria	22	80	185	15009
245127		Mateusz	Sopoćko	CAM	Poland	22	65	175	111091
245469		Adam	Tymiński	CB	Poland	22	75	187	111086
50561023		Elijah	Adebayo	ST	England	23	89	193	144
50571765		Maren	Haile-Selassie	LM	Switzerland	22	68	176	435
50576908		Salah	Aziz Binous	ST	Switzerland	21	82	192	894
212392		Ross	Stewart	GK	Scotland	26	71	188	621
224555	Xu Jiamin	Jiamin	Xu	GK	China PR	27	83	193	112537
227975		Herman Børreson	Fossdal	GK	Norway	22	74	184	1463
228369		Jack	Walton	GK	England	23	77	184	1932
231199		Hakeem	Odoffin	RB	England	23	81	191	1930
231651		Valon	Fazliu	CM	Switzerland	25	75	183	10032
232822		Rikiya	Uehara	CM	Japan	24	66	174	101144
234114		Kenneth	Yao	CB	England	22	78	185	89
236431		Emanuel	Alarcón	GK	Argentina	28	75	183	110581
237168		Masaya	Matsumoto	CM	Japan	26	69	175	101144
238009		Martin	Frese	LW	Denmark	23	75	179	1788
238939		Julian	Püschel	RB	Germany	24	69	168	110597
240003		Dardan	Karimani	CAM	Kosovo	22	70	176	10030
240066		Damien	Dumont	CB	France	21	65	176	110316
240210		Mathias	Nilsson	GK	Sweden	22	79	191	320
240489		Mads	Christiansen	GK	Norway	20	80	197	299
241294	Li Fang	Fang	Li	RB	China PR	28	67	175	112165
241429		Adam	Crookes	CDM	England	23	77	182	149
241943		Leverton	Pierre	ST	Haiti	23	74	181	614
242068		Lennart	Moser	GK	Germany	21	88	196	1831
242463		Freyn	Figueroa	CAM	Venezuela	23	66	175	112528
242642		Foster	Langsdorf	ST	United States	25	75	178	111140
243069	Cui Jingming	Jingming	Cui	CM	China PR	24	73	182	111769
243252		Tom	Hamer	RB	England	21	80	188	1920
243625	Choi Beom Kyung	Beom Kyung	Choi	CM	Korea Republic	24	73	176	110765
244071		Janis	Hanek	CM	Germany	22	67	179	1832
244168		Jannik	Hoormann	CB	Germany	22	75	185	110597
244455		Matthew	Knox	ST	Scotland	21	66	172	621
244565		Ethan	Erhahon	CM	Scotland	20	64	173	100805
245163		Kalvin	Lumbombo-Kalala	ST	France	23	79	184	1936
245427		Monther	Al Nakhli	RM	Saudi Arabia	25	63	172	112390
245494		Abdullah	Al Meqran	ST	Saudi Arabia	24	71	176	112392
50569567		Kaina	Yoshio	CAM	Japan	23	63	168	112836
50573591		Leverton	Pierre	ST	Haiti	23	74	181	68
50574421		Daniel	Valdelamar	CM	Colombia	24	69	175	112903
213715		Noe	Baba	CB	Republic of Ireland	24	74	178	753
228108		Killian	Brouder	CB	Republic of Ireland	22	77	188	111285
232629		Naoya	Senoo	CAM	Japan	24	60	172	112093
233685	Yu Bin	Bin	Yu	RB	China PR	25	63	178	112537
234095		Yao	Dieudonne	ST	Côte d'Ivoire	24	75	178	272
235508		Nimo	Gribenco	LM	Denmark	24	70	188	271
237434		Gaku	Harada	GK	Japan	23	84	188	101151
237952		Cathal	Farren	ST	Northern Ireland	23	75	183	445
238907		Hossam	Abdulmajeed	GK	Saudi Arabia	24	75	182	113219
239767		Adrian	Kappenberger	GK	Denmark	24	85	194	112425
240348		Daniel	Łuczak	LM	Poland	25	72	178	111092
240565		Gabriel	Meli	GK	Italy	22	75	188	1746
240715		George	Lloyd	ST	England	21	63	173	1936
241245		Apostolos	Stamatelopoulos	ST	Australia	22	84	184	111393
241387		Andreas	Öhman	RWB	Sweden	23	72	180	319
241610		George	Hornshaw	CM	England	21	70	180	1949
241998	Dong Honglin	Honglin	Dong	ST	China PR	25	70	180	112378
242368	Anwar Memet Ali	Anwar	Memet Ali	ST	China PR	23	70	176	112977
242633		Morten	Frendrup	CM	Denmark	20	63	178	269
242786		Anthony	Lesiotis	CDM	Australia	21	65	170	112224
242910	Liu Boyang	Boyang	Liu	RB	China PR	24	68	176	112537
243096	Liang Jinhu	Jinhu	Liang	CB	China PR	24	80	184	112162
243222		Bartosz	Slisz	CM	Poland	22	70	179	110749
243651		Max	Sheaf	RM	England	21	75	183	1952
244355		Jonas	Brendieck	GK	Germany	22	88	194	1825
245129		Mateusz	Hołownia	LB	Poland	23	70	184	1871
245479		Adrian	Czaplak	GK	Poland	24	89	194	111089
50572990	Su Yuanjie	Yuanjie	Su	ST	China PR	26	70	180	111774
50577150		Raghid	Al Najjar	GK	Saudi Arabia	24	80	186	112389
225771		Chiori	Johnson	RB	England	23	68	175	4
227881		Shaun	McWilliams	CM	England	22	69	180	1930
229375		Elijah	Adebayo	ST	England	23	89	193	1934
231298		Joshua	Macdonald	ST	Australia	25	67	174	111396
233383		Paul	Kalambayi	CB	England	22	70	183	112259
233832		Tyler	Garratt	LB	England	24	72	182	112259
235143		Miles	Welch-Hayes	RB	England	24	77	181	1959
236530		Lewis	O'Brien	RM	England	22	63	173	1939
237235		Abraham	Majok	ST	Kenya	22	72	185	112427
238334		Daniel	Higgins	CB	Scotland	23	78	185	82
238705		Virgile	Piechocki	CAM	France	24	70	178	379
239006		Jesper	Isaksen	CM	Norway	21	68	183	113459
240009		Noah	Feil	CM	Germany	22	71	178	550
240346		Shamal	George	GK	England	23	75	191	15048
240578		Pavel	Ovchinnikov	GK	Russia	23	78	187	315
241206		Daiya	Maekawa	GK	Japan	26	86	191	101146
241487		Jesus	Ferreira	ST	Colombia	20	64	173	695
242106		Mohammad	Al Sharimi	RB	Saudi Arabia	26	71	175	112392
242582		Yuki	Ogaki	ST	Japan	21	70	175	112092
243106	Wang Chu	Chu	Wang	CM	China PR	30	66	178	112537
243445		Fatih	Kaya	ST	Turkey	21	79	183	111239
243898	Baltazar	Baltazar	Oliveira	CDM	Brazil	21	80	180	110770
244092		Joey	Breitfeld	RM	Germany	24	73	189	111239
244328		Sergio	Gucciardo	ST	Turkey	22	65	170	10030
244522		Murat	Şatin	RM	Austria	24	69	178	2045
244781		Christopher	Giuliani	GK	Austria	22	80	187	209
245067		Yuta	Taki	CM	Japan	21	56	167	101149
245260		Salah	Aziz Binous	ST	Switzerland	21	82	192	10032
50545680		Brayan	Lucumí	RM	Colombia	27	62	170	112526
50568178		Lewis	O'Brien	RM	England	22	63	173	1804
50573688		Olaus Jair	Skarsem	CM	Norway	23	74	183	112200
67338239		Elijah	Adebayo	ST	England	23	89	193	361
213893		Louis	John	CB	England	27	85	190	1944
225831		Rhys	Gorman	CB	Republic of Ireland	27	75	182	838
228022	Liu Yu	Yu	Liu	GK	China PR	26	75	185	111769
229770		Connor	Ellis	ST	Republic of Ireland	24	70	172	111285
231273		Brayan	Manosalva	GK	Chile	24	78	185	111327
232633		Mizuki	Hayashi	GK	Japan	24	75	181	112093
233820		Sheriff	Sinyan	CM	Norway	25	80	188	299
234393		Marco	Ramkilde	ST	Denmark	23	74	187	820
236758		Oliver	Christensen	GK	Denmark	22	82	190	272
237919		Kaina	Yoshio	CAM	Japan	23	63	168	101151
238458		Eetu	Vertainen	CM	Finland	22	82	189	100325
239407		Ole	Breistøl	CM	Norway	23	73	185	1757
240008		Antonios	Papadopoulos	CB	Germany	21	78	185	550
240298		Elliot	Hodge	LW	England	25	68	178	15015
240525		Marius	Bildøy	RW	Norway	21	67	171	919
241326	Shi Xiaodong	Xiaodong	Shi	GK	China PR	24	75	185	112540
241471	Xu Tianyuan	Tianyuan	Xu	LM	China PR	24	70	182	112978
241870		Matt	Casey	CB	England	21	70	204	1790
242065		Connor	Simpson	ST	England	21	85	195	1801
242503		Eryk	Williamson	CAM	United States	24	70	175	1438
242773		Daniel	Valdelamar	CM	Colombia	24	69	175	101104
243042		Niklas	Kastenhofer	CB	Germany	22	75	185	110482
243162		Peter	Kekeris	LW	Australia	21	65	173	111396
243690		Wiktor	Długosz	CAM	Poland	21	66	182	111083
244069		Mario	Schragl	GK	Austria	22	83	189	1832
244232		Simon	Haubrock	CB	Germany	21	76	186	487
244440		Federico	Nicastro	GK	Italy	39	78	183	435
244604		Kornel	Kordas	LB	Poland	21	72	182	111083
244891		Mateusz	Żyro	CB	Poland	22	78	187	1871
245224		Donovan	Makoma	CM	France	22	78	185	361
245470		Kamil	Broda	GK	Poland	20	85	190	1873
245506		Hani	Al Sibyani	LB	Saudi Arabia	23	70	175	112387
50562847		Hakeem	Odoffin	RB	England	23	81	191	621
50573713		Connor	Simpson	ST	England	21	85	195	1480
206477		Niall	Corbet	GK	Republic of Ireland	26	78	185	753
224905		Evan	Gumbs	CB	England	24	76	178	15048
230700		George	Newell	ST	England	24	68	184	83
232880		Kazune	Kubota	CDM	Japan	24	62	170	101147
233815		Darragh	Noone	CM	Republic of Ireland	24	74	185	838
234988		Mohammed	Al Saeed	LM	Saudi Arabia	24	71	175	112390
236783		Kasper	Lunding	RM	Denmark	22	69	175	271
237917		Ayaki	Suzuki	GK	Japan	34	80	184	101151
239748		Filip	Blažek	CDM	Slovakia	23	85	188	269
240118		Izer	Aliu	CM	Switzerland	21	70	180	894
240391	Feng Boxuan	Boxuan	Feng	RM	China PR	24	63	177	111839
240822		Scott	Martin	CM	Scotland	24	68	173	81
241309	Jin Qi	Qi	Jin	CB	China PR	24	67	176	111779
241593	Yang Wanshun	Wanshun	Yang	CDM	China PR	25	75	178	111774
242145		Bartłomiej	Gradecki	GK	Poland	21	91	194	1569
242623		Odin Luras	Björtuft	CB	Norway	22	75	185	1456
242874	Yang Fan	Fan	Yang	RB	China PR	25	75	182	111774
243090	Nan Xiaoheng	Xiaoheng	Nan	ST	China PR	25	80	177	112162
243160		Alexander	Ekblad	CB	Sweden	34	83	185	113876
243605		Billy	Chadwick	CM	England	21	75	173	1952
243785		Tate	Russell	RB	Australia	21	75	178	112427
244783		Tobias	Koch	CDM	Austria	20	75	180	209
245230		Manuel	Salaba	GK	Austria	21	77	188	1785
245471		Piotr	Świątko	CB	Poland	22	79	184	1873
50572470		Scott	Martin	CM	Scotland	24	68	173	184
50574434		Anthony	Lesiotis	CDM	Australia	21	65	170	111397
230000		Will	Jääskeläinen	GK	Finland	23	73	183	121
234096		Benjamin	Hvidt	CM	Denmark	21	80	184	271
235769		Owen	Dale	ST	England	22	65	175	121
237435		Ryotaro	Meshino	ST	Japan	23	68	171	112093
214641		Scott	Tanser	LB	England	26	65	182	100804
215546		Michael	Brouwer	GK	Holland	28	91	190	100634
234412		Ashley	Nadesan	ST	England	26	70	188	1480
235710		Abdullah	Al Yousif	LB	Saudi Arabia	24	74	186	112390
215090		Luis	Sotomayor	GK	Chile	24	72	178	112531
215660		Jonas	Thorsen	CM	Denmark	31	79	184	110500
216407		Andreas	Bruhn	RM	Denmark	27	76	187	1786
218576		Will	Aimson	CB	Wales	27	70	179	1945
219813		Mike	Havekotte	GK	Holland	25	80	187	650
221339		Michele	Rocca	CM	Italy	25	72	175	1844
221764		Dominic	Thomas	RM	Scotland	25	65	170	82
222007		Conor	O'Malley	GK	Republic of Ireland	27	83	190	1938
222282	Zhu Baojie	Baojie	Zhu	LM	China PR	31	65	175	112537
222625		Nathan	Smith	CB	England	25	72	182	1928
223352		Luis	López	GK	Honduras	27	86	180	112996
223670		Marvin	Egho	ST	Austria	27	75	187	1786
223679		Tim	Rieder	CB	Germany	27	77	186	110502
223823		Timo	Königsmann	GK	Germany	24	86	184	165
223947		Jonathan	Benteke	ST	Belgium	26	76	187	1920
223982		Rory	Watson	GK	England	25	75	185	1949
224097		Tyler	Denton	LB	England	25	66	176	1938
224188		Tomasz	Mokwa	RB	Poland	28	77	181	111086
224204		Steve	Kroll	GK	Germany	24	87	191	110700
224266		Calum	Dyson	ST	England	24	73	187	1929
224335		Lucas	Cueto	LM	Germany	25	64	175	531
224592		Filippo	Perucchini	GK	Italy	29	88	191	1847
224651	Tang Jiashu	Jiashu	Tang	CB	China PR	30	79	184	112165
224675	Zhong JinBao	JinBao	Zhong	CM	China PR	26	69	181	111779
224949		Javairô	Dilrosun	LM	Holland	23	67	175	166
225079		Faress	Al Aiyaf	CM	Saudi Arabia	29	62	167	113222
225102	Maikel Santana	Miguel	Santana Luna	LB	Spain	29	89	193	435
225486		Louis	Béland-Goyette	CM	Canada	25	68	178	111139
225561		Maurice	Litka	LM	Germany	25	68	180	167
225586		Ben	Kennedy	RM	Northern Ireland	24	70	178	361
225600		Abdullah	Al Ammar	LB	Saudi Arabia	27	72	177	112390
225855		Antonin	Bobichon	RM	France	25	70	180	224
226021	Guo Hao	Hao	Guo	CDM	China PR	28	67	173	111774
226260		Andrea	Cistana	RB	Italy	24	69	177	190
226697		Mauro	Laínez	RM	Mexico	25	66	171	111035
226544		Daniel	Olave	RB	Colombia	27	77	182	111722
227498		Kaiyne	Woolery	ST	England	26	78	181	1934
227515		Diego	Moreno	CM	Colombia	25	75	180	112526
227653		Earl	Edwards Jr.	GK	United States	29	93	191	112606
227603		Patrick	Kpozo	LB	Ghana	24	77	180	113173
228073	Cheng Yuan	Yuan	Cheng	ST	China PR	27	73	183	111724
228148		Rushian	Hepburn-Murphy	ST	England	22	81	173	2
228210		Lachlan	Jackson	CB	Australia	26	83	194	111398
228212		Andreas	Helmersen	ST	Norway	23	82	190	112200
228456	Juan Pérez	Juan Manuel	Pérez Ruiz	GK	Spain	25	83	191	479
228483	Kim Yong Jin	Yong Jin	Kim	ST	Korea Republic	28	80	192	1473
228573		Peter	Wilson	ST	Sweden	24	74	182	1596
228691		Hatim	Belal	CDM	Saudi Arabia	27	74	186	112391
228658		Kevin	O'Connor	LB	Republic of Ireland	26	75	188	1801
228769		Santiago	Ruiz	LB	Colombia	23	79	185	112526
229172		Ken	Gipson	RB	Germany	25	69	178	110178
229173		Gökhan	Gül	CB	Germany	23	75	180	110636
229378		Adetayo	Edun	CM	England	23	74	171	94
229433		Adrián	Zendejas	GK	United States	25	84	196	696
229436		Stefan	Gartenmann	RB	Denmark	24	75	185	1447
229438		Mario	Piccinocchi	CDM	Italy	26	67	172	10032
229530		Rick	Wulle	GK	Germany	27	84	188	110178
229974		Thomas	Robinet	RW	France	24	75	180	226
230064		Yannick	Schmid	CB	Switzerland	26	76	186	897
230635		Diego	Soto	LB	Chile	22	70	170	112534
230713		Abdulelah	Al Malki	CDM	Saudi Arabia	26	69	176	112408
230854		Matteo	Cortesi	ST	Italy	23	73	180	190
230882		Jack	Simpson	CB	England	24	83	184	1943
231178		Nico	Beyer	CB	Germany	24	80	189	110592
231120		Khaled	Al Barakah	LB	Saudi Arabia	30	77	179	113222
231241		Tobias	Svendsen	CM	Norway	21	66	172	1463
231354		Miloš	Pantović	LM	Serbia	25	70	185	160
231522		Andrew	Stadler	ST	United States	33	71	179	113876
231650		Jan	Bamert	CB	Switzerland	23	75	183	110770
231613		Shawn	McCoulsky	ST	England	24	70	183	1954
231936		Ben	White	CB	England	23	72	182	1808
231954	Xu Xin	Xin	Xu	CDM	China PR	27	71	179	111839
231993	Chi Wenyi	Wenyi	Chi	GK	China PR	33	70	183	111768
231947	Oh Se Hun	Se Hun	Oh	ST	Korea Republic	22	80	190	1473
232187		Adam	Berry	CDM	Australia	24	70	175	111396
232194		Salvador	Cordero	LB	Chile	25	60	177	112533
232203		Anton	Donkor	LM	Germany	23	81	185	27
232357		Joe	Caletti	CM	Australia	22	65	170	111395
232410		Florian	Escales	GK	France	25	78	184	219
232504		Bödvar	Bödvarsson	LB	Iceland	26	80	186	110745
232511		Sho	Sasaki	LB	Japan	31	70	176	113157
232519		Glenn	Middleton	LM	Scotland	21	68	176	86
232590		Ryohei	Yamazaki	LM	Japan	32	76	173	101145
232603		Kyohei	Yoshino	CB	Japan	26	75	182	113157
232826		Francis	Mac Allister	CM	Argentina	25	71	176	111019
232873		Koki	Machida	CB	Japan	23	80	190	101147
232930		Masashi	Kamekawa	LB	Japan	28	64	176	101145
233051		Luke	Bolton	RM	England	21	72	174	10
233092		Joaquín	Pereyra	CM	Argentina	22	71	181	110580
233128		Maziar	Kouhyar	LM	Afghanistan	23	69	173	1803
233181		Shuhei	Otsuki	CF	Japan	32	73	178	101146
233281	Jeong Dong Yun	Dong Yun	Jeong	RB	Korea Republic	27	70	175	110765
233603		Sofien	Moussa	ST	Tunisia	33	80	188	180
233703		Zakaria	Grich	LW	France	25	69	175	1813
233808		Simone	Palombi	ST	Italy	25	75	182	347
233780		Alexis	Maldonado	CB	Argentina	23	85	187	110404
236826		Frederik	Mortensen	CDM	Denmark	22	77	176	1446
215285		Daniel	Carr	ST	England	27	77	180	306
216190		Jak	McCourt	CM	England	26	68	178	1934
216318		Stephen	Warmolts	CB	Holland	27	69	175	100628
217584		Samy	Bourard	CAM	Belgium	25	69	176	680
219467		Bradley	Halliday	RB	England	26	68	180	1944
220851		Franco	Leys	CM	Argentina	27	70	177	110406
221574		Wilfrido	de la Rosa	ST	Colombia	28	64	166	112526
221760	Song Soo Yeong	Soo Yeong	Song	LW	Korea Republic	30	70	175	2055
222024		Tino	Casali	GK	Austria	25	82	191	1785
222236	Yang Xiaotian	Xiaotian	Yang	LM	China PR	31	72	178	112162
222702	Baek Dong Gyu	Dong Gyu	Baek	CB	Korea Republic	30	79	184	2055
223580		Ricky	Miller	ST	England	32	76	175	1928
223744		Stephen	Dooley	LM	Northern Ireland	29	80	180	1955
223902		Tom	Pett	LM	England	29	70	173	149
224164	Roger Riera	Roger	Riera Canadell	CB	Spain	26	76	187	483
224088		Nigel	Atangana	CM	France	31	72	187	1936
224238		William	Boyle	CB	England	25	84	191	1936
224303		Adam	Ryczkowski	LM	Poland	24	71	178	420
224620	Zhang Yi	Yi	Zhang	CM	China PR	27	67	181	112540
224691	Wang Jie	Jie	Wang	CB	China PR	32	83	185	112983
225067		Joel	Coustrain	LM	Republic of Ireland	25	68	173	306
225479		Astemir	Gordyushenko	CM	Russia	24	71	176	315
225336		Egzon	Binaku	LB	Sweden	25	70	185	320
225734		Christopher	Hamilton	LM	England	26	74	185	1940
225915		Agustín	Fontana	ST	Argentina	25	72	176	110404
226231		Vinnie	Vermeer	CDM	Holland	26	69	173	1904
226770		Junes	Barny	ST	Sweden	31	78	177	708
226822		Callum	Roberts	RM	England	24	65	173	13
227576		Óscar	Balanta	CDM	Colombia	33	73	187	112019
227908		Tarik	Kada	RW	Holland	25	70	170	100634
228098		Kevin	Garcia	CB	United States	30	87	183	698
228106		Paudie	O'Connor	CB	Republic of Ireland	24	77	191	1926
228461	Ryu Jae Moon	Jae Moon	Ryu	CM	Korea Republic	27	72	184	2056
228401		Kyle	Howkins	CB	England	25	81	195	109
228611		Dawood	Al Saeed	GK	Saudi Arabia	30	86	180	113222
228637		Cian	Harries	CB	Wales	24	73	185	1960
228970	Fran Sánchez	Francisco José	Sánchez Rodriguez	LM	Spain	31	70	177	1785
229105		Din	Sula	ST	Belgium	23	75	182	110913
229176		Görkem	Sağlam	CAM	Germany	23	72	178	160
229266		Joe	Rodon	CB	Wales	23	76	190	1960
229557		Sebastián	Macías	LB	Colombia	25	72	175	101103
229731		Mathew	Stevens	ST	England	23	74	180	1938
230590		Darren	Oldaker	CM	England	22	78	176	1802
230876		Matt	Butcher	CM	England	24	83	188	1943
230890		Brandon	Wilson	CM	Australia	24	81	185	111399
231228		Fabian	Benko	CAM	Germany	23	74	180	252
231346		Alexis	Alégué	RM	Cameroon	24	68	175	71
231479		Leonel	Mosevich	CB	Argentina	24	81	187	898
231554		James	Justin	RB	England	23	71	183	1923
231840		Valentino	Müller	CDM	Austria	22	68	175	15009
231945	Kim Jong Min	Jong Min	Kim	ST	Korea Republic	28	78	188	983
232085		Mathias	Bringaker	ST	Norway	24	73	179	1524
232185		Callum	Brittain	RB	England	23	68	181	1798
232190		Nikolaj	Hagelskjær	RB	Denmark	31	75	186	1445
232290	Li Xiaoming	Xiaoming	Li	CB	China PR	25	74	183	110955
232461	Kim Min Tae	Min Tae	Kim	CB	Korea Republic	27	78	187	112444
232506		Takuya	Masuda	GK	Japan	32	84	184	112448
232520		Diallang	Jaiyesimi	LM	England	23	72	181	346
232636		Ryo	Hatsuse	LB	Japan	24	64	175	112093
232746	Park Jeong Su	Jeong Su	Park	CB	Korea Republic	27	76	188	101145
232928		Yoshiki	Matsushita	LM	Japan	27	67	174	101146
232941		Hokuto	Nakamura	RB	Japan	36	69	167	112448
232937	Kim Hyun Hun	Hyun Hun	Kim	CB	Korea Republic	30	76	185	111588
233164		Arijanet	Muric	GK	Montenegro	22	81	197	10
233245		Shane	McLoughlin	CAM	Republic of Ireland	24	70	175	94
233691		Marius	Adamonis	GK	Lithuania	24	80	192	46
233846	Wang Fei	Fei	Wang	RB	China PR	28	62	175	111779
234087		Callum	Styles	CM	England	21	60	167	1945
234159		Pierrick	Fito	CDM	France	25	72	175	70
234377		David	Choinière	LM	Canada	24	69	170	111139
234288		Markus	Uusitalo	GK	Finland	24	91	189	100325
234400		Dorian	Grange	GK	France	25	75	184	66
234528		Alexis	Larriere	CM	France	24	76	180	68
234501		Daniel	Anyembe	RB	Denmark	23	80	186	1445
234686		Jordan	Lotomba	LB	Switzerland	22	69	177	900
234858		Marius	Funk	GK	Germany	25	88	187	165
234882		Marcin	Warcholak	LB	Poland	31	79	180	1569
234979		Hadier	Borja	RB	Colombia	24	66	170	101099
234982		Magnus	Christensen	CM	Denmark	23	75	182	820
235162		Hassan Jamal	Al Habib	CM	Saudi Arabia	26	81	183	112096
235234		Bismar	Córdoba	CAM	Colombia	28	74	185	101106
235228		Nahum	Gómez	RW	Mexico	23	61	167	110147
235242		Daan	Heymans	CAM	Belgium	22	79	189	110913
235288		Sam	Schreck	CAM	Germany	22	68	180	32
235303		Kamil	Pestka	LB	Poland	22	67	188	110747
235369		Stefan	Mladenovic	LW	Norway	27	65	177	1456
235422	Chico	F. Hyun Sol	Kim	CM	Korea Republic	30	69	174	1474
235387		Baboucarr	Gaye	GK	Gambia	23	87	194	159
235472	Diego Ferraresso	Diego Gustavo	Ferraresso Scheda	RB	Brazil	29	71	171	110747
235633		Yehvann	Diouf	GK	France	21	75	187	294
235655		Muhanna	Al Enazi	RB	Saudi Arabia	37	59	161	112990
235799		Abdoulaye	Sissako	CM	France	23	77	185	57
235661		Dogucan	Haspolat	CM	Holland	21	75	177	1971
235995		Alexandar	Borkovic	CB	Austria	22	74	184	256
236217		Phil	Neumann	RB	Germany	24	82	192	111239
225735		Dominic	Baumann	ST	Germany	26	81	178	110197
225955		Marko	Kvasina	ST	Austria	24	82	194	1785
226267		Enrico	Baldini	LW	Italy	24	70	178	1847
226650	Kim Won Gun	Won Gun	Kim	CB	Korea Republic	29	77	186	982
227371		Wilder	Mosquera	GK	Colombia	36	85	191	112903
227705		Alan	Empereur	CB	Brazil	27	79	186	206
227876		Lucas	Campana	ST	Argentina	28	75	181	112709
228325		Oliver	Berg	CM	Norway	27	74	178	1596
228526	Hwang ByeongGeun	Byeong Geun	Hwang	GK	Korea Republic	27	93	193	1477
228692		Hassan Essa	Jafry	CDM	Saudi Arabia	30	69	177	113057
229067		Nikolai	Rehnen	GK	Germany	24	82	191	110169
229343	Wanderson	Wanderson	Carvalho Oliveira	LM	Brazil	32	60	172	1475
229507		Thorsten	Mahrer	CB	Austria	31	81	191	1785
229817		Rene	Swete	GK	Austria	31	79	186	2017
230557		Alessio	Da Cruz	ST	Holland	24	75	184	50
230819		Olamide	Shodipo	LM	Republic of Ireland	24	70	176	15
231137		Domen	Crnigoj	RW	Slovenia	25	70	185	10032
231407		Shaun	Donnellan	CB	Republic of Ireland	24	69	183	346
231735		Abdulmohsen	Fallatah	CB	Saudi Arabia	27	70	181	112391
232057		Patrik	Karlsson Lagemyr	RW	Sweden	24	58	167	319
232175		Dzenis	Kozica	RM	Sweden	28	78	180	710
232706		Masato	Fujita	RB	Japan	35	75	176	113160
233033		Marcos	Minetti	CDM	Argentina	32	82	185	110581
233123		Ibrahim	Soumaoro	CDM	Guinea	25	76	188	1844
233212		Andreas	Skovgaard	CB	Denmark	24	75	184	1788
233885		Eray	Cömert	CB	Switzerland	23	80	183	896
234162		Benedikt	Kirsch	CM	Germany	25	75	178	165
234382		Niklas	Landgraf	CB	Germany	25	68	180	110482
234717		Sebastián	Pérez	GK	Chile	30	86	180	111328
234846		Sven	Müller	GK	Germany	25	82	190	1832
235022		Niklas	Schmidt	CAM	Germany	23	90	184	492
235161		Josh	Maja	ST	England	22	74	180	106
235378		Fabio	Eguelfi	LM	Italy	26	74	178	206
235597		Mazyad Fraih	Al Anazi	GK	Saudi Arabia	32	80	178	112990
235721		Kenan	Horić	CB	Bosnia and Herzegovina	30	80	190	741
235948		Gary	Martin	ST	England	30	79	180	299
235999		Luís	García	GK	Colombia	23	78	183	481
236492	Pedro Díaz	Pedro	Díaz Fanjul	CAM	Spain	23	75	180	459
236636		Anthony	Caci	CM	France	24	70	184	76
236996		Atakan	Akkaynak	CM	Germany	22	77	180	1907
237169		Cohen	Bramall	LB	England	25	72	178	1
237242		Felipe	Román	RB	Colombia	25	80	183	101105
237443		Takuo	Okubo	GK	Japan	31	92	190	101150
237551		Thomas	Ephestion	CM	France	26	87	189	64
237732		Odysseus	Velanas	CM	Holland	23	74	183	1903
237840		Magnus Kofod	Andersen	CM	Denmark	22	64	175	1788
238055		Ammar	Al Najjar	RM	Saudi Arabia	24	68	175	607
238495		Víctor	Retamal	RB	Chile	23	62	169	112535
238578	Lee Jin Hyun	Jin Hyun	Lee	CM	Korea Republic	23	62	172	1474
238902		Sami	Al Khaibari	CB	Saudi Arabia	31	74	185	113057
239038		Romain	Basque	CM	France	26	69	184	1738
239179		Zoran	Arsenić	CB	Croatia	27	75	187	1873
239367		Robin	Hack	LW	Germany	22	69	176	10029
239493		Makana	Baku	RM	Germany	23	67	177	111379
239565		Marius	Grösch	CB	Germany	27	80	188	110591
239807		Davide	Frattesi	CM	Italy	21	74	178	1847
239899	Víctor Fernández	Víctor	Fernández Satué	LM	Spain	23	70	175	13
240126		Wiseman	Meyiwa	CM	South Africa	21	65	173	110929
240434		Jordan	Tell	ST	France	24	74	185	112276
240634		Pietro	Maronilli	CB	Italy	23	78	190	111993
240908		Fatih	Aksoy	CB	Turkey	23	78	189	327
241082		Yusuf	Lawal	RM	Nigeria	23	77	173	2007
241835		Jizz	Hornkamp	ST	Holland	23	75	180	1913
242087		Hidemasa	Morita	CDM	Japan	26	74	177	111730
242217		Edo	Kayembe	CAM	Congo DR	23	80	181	229
242306		Guillermo	Soto	CB	Chile	27	71	175	111328
242547		Jonathan	Scherzer	LB	Austria	26	76	185	111821
242575		Bertrand	Owundi Eko'o	CB	Cameroon	27	86	188	111138
242744		Afeez	Aremu	CDM	Nigeria	21	77	181	1524
242995		Joseph	Mora	LB	Costa Rica	28	60	176	688
243700		Jakob	Hjorth	CB	Denmark	26	83	193	111660
243748		Kevin	Weidlich	RM	Germany	31	78	183	162
243963		Kyle	Magennis	CM	Scotland	22	73	178	100805
244072		Mergim	Fejzullahu	CAM	Albania	27	68	173	110500
244431		Roko	Mišlov	CDM	Croatia	33	77	190	112075
244588		Brandon	Baiye	CDM	Belgium	20	75	177	231
244935		Blessing	Eleke	ST	Nigeria	25	88	190	897
245242		Darko	Todorovic	RB	Bosnia and Herzegovina	24	68	174	191
50501720		Theo	Robinson	ST	Jamaica	32	64	174	1934
50530736	Wang Gang	Gang	Wang	RB	China PR	32	81	188	111768
50533751	Li Jianbin	Jianbin	Li	CB	China PR	32	77	185	112378
50539206		Martin	Broberg	CM	Sweden	30	74	186	705
50543661		Kearyn	Baccus	CDM	Australia	29	75	180	112224
50545519		Kasper	Junker	ST	Denmark	27	76	178	1446
50545927		Hardy	Cavero	CB	Chile	25	71	181	110980
50547700		Fernando	Coniglio	ST	Argentina	29	84	184	260
50553137		Jason	Flores	LW	Chile	24	60	167	110977
50557205		Regan	Poole	CB	Wales	23	74	180	112254
50559227		Deniz	Hümmet	ST	Turkey	25	80	187	700
50561125		Mike Steven	Bähre	CAM	Germany	25	70	177	1932
50563042	Hildeberto Pereira	Hildeberto José	Morgado Pereira	RM	Portugal	25	75	177	1871
50564519	Gao Zhunyi	Zhunyi	Gao	CB	China PR	25	70	186	111839
50566365		Sebastián	Pérez	GK	Chile	30	86	180	112531
50566809		Josh	Maja	ST	England	22	74	180	59
50568792		Brayan	Fernández	ST	Colombia	29	80	183	112527
50569418		Yu	Hasegawa	ST	Japan	34	78	187	112448
225557		Regan	Poole	CDM	Wales	23	74	180	11
225962		Mateo	Palacios	CAM	Colombia	24	70	175	112019
226415		Mohamed	Mara	ST	Guinea	24	64	176	217
226679		Ashley	Hunter	LW	England	25	67	178	112260
227554		Yusuke	Tanaka	RB	Japan	35	77	181	101148
227825	Jang Dae Hee	Dae Hee	Jang	GK	Korea Republic	27	75	187	1475
228044		Fredrik	Krogstad	CM	Norway	26	80	181	299
228385		Harry	Burgoyne	GK	England	24	80	193	1929
228681		Francisco	Sierralta	RB	Chile	24	83	190	50
228863		Tobias	Heintz	LM	Norway	23	69	173	112199
229127		Jens	Teunckens	GK	Belgium	23	85	189	230
229477		Mike Steven	Bähre	CAM	Germany	25	70	177	485
229707		Jonathan	Lewis	LW	United States	24	68	171	112828
229819		Martin	Rasner	CM	Austria	26	72	177	112075
230070		Jacob	Davenport	CDM	England	22	73	177	3
230888		Aiden	O'Neill	CM	Australia	23	70	178	111396
231105		Alexandre	Olliero	GK	France	25	85	193	71
231394	Hildeberto Pereira	Hildeberto José	Morgado Pereira	RW	Portugal	25	75	177	665
231678		Ruon	Tongyik	CB	Australia	24	80	185	112427
232064		Marco	Tumminello	ST	Italy	22	76	180	39
232117		Julien	Dacosta	RB	France	25	77	182	1813
232399		Antony	Otero	ST	Colombia	25	70	179	112970
232793		Takashi	Kanai	LB	Japan	31	70	175	112092
232949		Danilson	Córdoba	CDM	Colombia	34	80	185	112903
233079		Christian	Rivera	CDM	Colombia	25	65	183	101102
233158		Yuto	Misao	CB	Japan	30	70	175	101147
233670		Akito	Fukumori	CB	Japan	28	75	183	112444
233917		Dereck	Kutesa	LM	Switzerland	23	67	176	898
234516		Jaime	Soto	RB	Chile	29	75	175	112709
234760		Arkadiusz	Reca	LB	Poland	26	76	187	39
234921		Gerald	Nutz	LM	Austria	27	64	170	111822
235037		Emmanuel	Sowah	RB	Ghana	23	65	182	229
235201		Nicholas	Siega	CM	Italy	30	73	178	111993
235518	Bolaños	Roberto Jesús	Melián Bolaños	CM	Spain	26	71	188	260
235626		Mikey	Ambrose	LB	United States	27	75	175	112885
235849		Mamadou	Fofana	CB	Mali	23	75	186	68
236298		Eduard	Atuesta	CDM	Colombia	24	71	180	112996
236507		Tomás	Conechny	ST	Argentina	23	65	170	111140
236689		Khaled	Al Samiri	CM	Saudi Arabia	24	58	168	607
237144		Brayan	Fernández	ST	Colombia	29	80	183	111723
237218		Jacori	Hayes	CM	United States	26	75	183	695
237361		Ian	Sirelius	LM	Sweden	33	78	177	113458
237477		Marcus	Tavernier	LW	England	22	70	177	12
237721		Abdullah	Al Khaibari	CDM	Saudi Arabia	24	66	175	111674
237787		Noriyuki	Sakemoto	RB	Japan	36	73	175	101148
238038		Jordy	Wehrmann	CM	Holland	22	71	176	246
238269		Jason	Pendant	LB	France	24	64	177	226
238563		Danilo	Wiebe	CDM	Germany	27	78	187	531
238667		Ali	Odabas	CB	Germany	27	78	187	543
238956		Dominik	Bock	RM	Germany	26	75	182	110591
239077		Thomas	Hagn	LM	Germany	26	81	186	172
239200		Tibor	Halilović	CM	Croatia	26	70	176	1873
239405		Jamie	Jacobs	CM	Holland	23	74	182	1906
239523		Maximilian	Rossmann	CB	Germany	26	90	192	100634
239740		Ablie	Jallow	RM	Gambia	22	62	166	68
239833		Mohammed Sayed	Al Dhaw	RM	Sudan	27	67	169	113219
240007		Mattia	Trianni	LM	Germany	28	73	180	550
240092		Francesco	Cernuto	CB	Italy	29	72	180	205
240335		Bjarke	Jacobsen	CM	Denmark	27	85	190	1446
240550		Oğuz Kağan	Güçtekin	CDM	Turkey	22	71	173	326
240797		Mattéo	Tramoni	CAM	France	21	68	175	614
241050		Alexander	Meyer	GK	Germany	30	88	195	36
241704		Christopher	Rocchia	LB	France	23	64	172	219
241993		Oliver	Steurer	CB	Germany	26	83	191	111235
242221		Ali	Al Nemer	CAM	Saudi Arabia	29	60	173	112408
242437		Carlos	López	ST	Colombia	27	75	182	101105
242572		Kharlton	Belmar	RW	United States	28	72	180	696
242635		Igoh	Ogbu	CB	Nigeria	21	78	187	298
242768		Giorgi	Kharaishvili	LW	Georgia	25	73	183	319
243357		Franck	Evina	LM	Germany	21	73	177	21
243714		Eris	Abedini	CDM	Switzerland	22	76	190	10032
243868	Emmersón	Vladis Emmersón	Illoy-Ayet	CB	Congo	25	85	195	822
243967		Ahmad	Mendes Moreira	LM	Holland	26	70	178	1915
244040		Patrick	Schmidt	ST	Germany	27	83	185	111235
244528		Hakim	Ouro-sama	CB	Togo	23	74	185	65
244602		Othman	Boussaid	CAM	Belgium	21	66	166	1903
244820		Stefan	Gölles	RB	Austria	29	80	188	111822
245241		Alkhali	Bangoura	RM	Guinea	25	70	174	112390
50521557		Sam	Slocombe	GK	England	33	75	183	1962
50529422		Conor	McAleny	ST	England	28	66	178	82
50533960		Cian	Bolger	CB	Republic of Ireland	29	78	193	149
50540637		Freddie	Ladapo	ST	Nigeria	28	79	183	1797
50541892		Lee	Angol	ST	England	27	75	188	149
50545445		Joe	Bunney	LB	England	27	75	188	1955
50546760		Rodrigo	Contreras	ST	Argentina	25	84	186	101121
50551443		Joel	Coleman	GK	England	25	82	198	1939
50552815		Cameron	Dummigan	RB	Northern Ireland	25	70	180	837
50558302		Sebastian	Ring	LWB	Sweden	26	74	178	92
50560033		Harry	Burgoyne	GK	England	24	80	193	110
50560645		Charlie	Goode	CB	England	26	75	196	1930
50562205		Alessio	Da Cruz	ST	Holland	24	75	184	110741
50564783		Thomas	Blomeyer	CB	Germany	25	85	191	110700
50566639		Moses	Opondo	CM	Uganda	23	72	174	272
50567348		Jordan	Green	RM	England	26	72	168	1932
50569091		Takuo	Okubo	GK	Japan	31	92	190	113160
50569591		Dan	Scarr	CB	England	26	85	188	1803
50571474		Orrin McKinze	Gaines	RM	United States	23	74	181	110592
50572556		Fatih	Aksoy	CB	Turkey	23	78	189	101041
225731		Amidou	Diop	CM	Senegal	29	75	196	113459
226167		Jannik	Dehm	RB	Germany	25	72	181	576
226654		Sebastian	Ring	LWB	Sweden	26	74	178	705
227418		Jesper	Manns	RB	Sweden	26	74	174	700
227754	Kim Seon Woo	Seon Woo	Kim	CM	Korea Republic	28	62	174	1475
228249		Hamad	Al Juhayyim	ST	Saudi Arabia	33	74	178	112390
228515		Karlo	Lulić	CAM	Croatia	25	81	186	110913
228651		Gian Filippo	Felicioli	LB	Italy	23	77	180	199
228886		Giuseppe	Panico	ST	Italy	24	69	171	111993
229284		Dominik	Widemann	ST	Germany	25	70	177	172
229367		Stephen	Humphrys	ST	England	23	91	185	1949
229579		Andrea	Accardi	CB	Italy	26	75	180	1843
230015		Ibrahim	Diallo	CB	Mali	24	66	175	2013
230818		Hakan	Canbazoğlu	GK	Turkey	33	83	188	749
230912		Paolo	Ghiglione	RM	Italy	24	80	187	111657
231376		Manuel	Berrío	CB	Colombia	25	75	180	112528
231445		Josh	Dasilva	CDM	England	22	75	185	1925
232011		Jordan	McCrary	RB	United States	28	75	175	111144
232118		Antoine	Rabillard	ST	France	25	70	175	113948
232413		Anfernee	Dijksteel	RB	Holland	24	72	183	89
232871	Gao Zhunyi	Zhunyi	Gao	CB	China PR	25	70	186	112978
233078		Pablo	Sabbag	ST	Colombia	24	81	188	112516
233083		Hakan	Demir	CM	Turkey	23	75	178	111339
233514		Joël	Abu Hanna	LB	Germany	23	80	184	110588
234049		Babacar	Niasse	GK	Senegal	24	65	195	2013
234196		Jordy	Bruijn	CM	Holland	25	67	171	1913
234521		Sammy	Skytte	CM	Denmark	24	95	190	1446
234795		Antoine	Bernede	CAM	France	22	74	177	73
234991		Moses	Opondo	CM	Uganda	23	72	174	111660
235151		Takahiro	Ogihara	CDM	Japan	29	71	184	101151
235222		Siebe	Horemans	CB	Belgium	23	72	183	1971
235527		Emmanuel	Oti Essigba	LW	Ghana	24	65	170	1445
235700		Jordan	Green	RM	England	26	72	168	346
235818		Nicolas	Basin	LB	France	23	75	181	68
235970	Mario González	Mario	González Gutiérrez	LW	Spain	25	68	182	483
236342		Nikola	Mileusnic	RW	Australia	28	71	180	111393
236587		Marco	Farfan	LB	United States	22	68	175	111140
236885		Brandon	Vazquez	ST	United States	22	79	191	112885
237041		Maximiliano	Barreiro	ST	Argentina	36	78	173	112528
237202		Giovanni	Terrani	LW	Italy	26	70	178	199
237350		Karl	Larson	RB	Sweden	29	70	176	113458
237529	Maximiano	Luiz Fernando	F. Maximiniano	CDM	Brazil	26	75	180	111138
237581		Dever	Orgill	ST	Jamaica	31	68	183	111822
237756		Shoma	Kamata	RB	Japan	32	68	172	101149
237943		Dan	Scarr	CB	England	26	85	188	88
238049		Paxton	Pomykal	RM	United States	21	66	170	695
238341		Alan	Dzabana	ST	France	24	71	171	1738
238593		Moritz	Heyer	CDM	Germany	26	76	182	110482
238925		Dominik	Ernst	RB	Germany	30	72	178	110169
239145		Eden	Massouema	CDM	France	24	73	184	110456
239191		Shkelqim	Demhasaj	ST	Switzerland	25	78	191	897
239432		Adrian	Grbic	ST	Austria	25	82	188	15009
239499		Kai	Eisele	GK	Germany	26	76	191	110482
239724		Steffen	Puttkammer	CDM	Germany	32	81	192	110597
239826		Orrin McKinze	Gaines	LM	United States	23	74	181	110502
240000		Elias	Abouchabaka	CAM	Germany	21	73	183	165
240136	João Tavares	João	Tavares Almeida	CM	Portugal	22	70	175	10019
240385		Niccolò	Zanellato	CM	Italy	23	80	187	110734
240729		Lorenzo	Rajot	CDM	France	23	68	179	1815
240837		Mert Hakan	Yandaş	CAM	Turkey	26	73	175	101041
241093		Samuel	Oum Gouet	CDM	Cameroon	23	76	185	15009
241537	André Luis Neitzke	André Luis	Neitzke	CB	Brazil	34	80	186	110770
241958		José	Hernández	LB	Venezuela	24	71	170	112885
242191		Marijan	Ćavar	CM	Bosnia and Herzegovina	23	70	184	1824
242284		Mohammed	Dauda	CF	Ghana	23	70	175	229
242516		Cody	Gakpo	LW	Holland	22	76	179	247
242634		Isaac	Twum	CM	Ghana	23	63	175	1524
242707		Grant	Lillard	CB	United States	25	88	193	693
243322	Lim Jae Hyeok	Jae Hyeok	Lim	ST	Korea Republic	22	66	180	2056
243523		Shunya	Suganuma	CB	Japan	31	78	182	112093
243739		Lasse	Schlüter	LB	Germany	29	78	185	162
243802		Benjamin	Kindsvater	RM	Germany	28	67	176	33
243888		Mićo	Kuzmanović	LM	Bosnia and Herzegovina	25	74	178	111560
244041		Muhammed	Kiprit	ST	Germany	22	80	184	166
244499		Stefan	Meusburger	CB	Austria	27	81	187	2045
244621	Vinícius	Carlos Vinícius	Alves Morais	ST	Brazil	26	83	190	744
244789		Aleš	Čermák	CAM	Czech Republic	26	75	181	110468
245212		Roberts	Uldrikis	ST	Latvia	23	92	198	110770
50508090		Robert	Milsom	CM	England	34	72	179	1937
50525261		James	Hanson	ST	England	33	78	193	92
50532492		Jimmy	Keohane	CDM	Republic of Ireland	30	72	180	1955
50540575		Hussain Omar	Sulaimani	LB	Saudi Arabia	44	70	173	112387
50543754		Dylan	Connolly	RM	Republic of Ireland	26	69	176	112259
50544837	Joo Min Kyu	Min Kyu	Joo	ST	Korea Republic	31	79	183	1473
50546119		Arled	Cadavid	GK	Colombia	30	74	180	101099
50551179		Sebastián	Olivarez	CB	Argentina	29	82	180	111706
50552701		Elias	Gómez	LB	Argentina	27	72	176	111019
50557078		Pierre Desiré	Zebli	CDM	Côte d'Ivoire	23	75	180	673
50560112	Kim Jin Hyuk	Jin Hyuk	Kim	CB	Korea Republic	28	78	187	2055
50561015		Stephen	Humphrys	ST	England	23	91	185	144
50562536		Aiden	O'Neill	CM	Australia	23	70	178	1796
50564047		Antony	Otero	ST	Colombia	25	70	179	112903
50564860		Andreas	Skovgaard	CB	Denmark	24	75	184	1913
50567026		Fabio	Eguelfi	LM	Italy	26	74	178	1844
50568914		Marcus	Epps	RM	United States	26	70	178	689
225748		Todd	Cantwell	CAM	England	23	66	180	1792
226191	Wu Qing	Qing	Wu	LM	China PR	40	70	170	112165
226656		Edvinas	Gertmonas	GK	Lithuania	25	92	192	74
227288		Jordan	Flores	CM	England	25	75	180	113173
227579		Deniz	Hümmet	ST	Turkey	25	80	187	703
227926		Travis	Worra	GK	United States	28	79	191	688
228299		Rewan	Amin	CM	Holland	25	75	179	113173
228607		Dominik	Reimann	GK	Germany	24	84	186	576
228682		Raimundo	Rebolledo	RB	Chile	24	63	171	110975
228997		Charlie	Goode	CB	England	26	75	196	1949
229354		Arianit	Ferati	CAM	Germany	23	71	169	28
229500	Jaquité	João	Lamine Jaquité	CDM	Guinea-Bissau	25	65	172	112516
229816		Fabian	Schubert	ST	Austria	26	80	194	209
229942		Axel	Disasi	CB	France	23	86	190	379
230906		Kelvin	Osorio	CM	Colombia	27	76	182	112527
231353		Emmanuel	Iyoha	LW	Germany	23	86	191	506
231672		Luis	Sierra	CDM	Colombia	33	79	176	101106
231847		Birkan	Öksüz	LB	Turkey	25	75	176	741
232105		Roni	Peiponen	RB	Finland	24	69	175	100325
232225		Janni	Serra	ST	Germany	23	87	193	576
232467		Hirotaka	Mita	CM	Japan	30	63	173	101146
233018	Kim Dae Won	Dae Won	Kim	LW	Korea Republic	24	64	172	2056
233152		Ko	Itakura	CB	Japan	24	75	186	112836
233445		Jeppe Arctander	Moe	LB	Norway	26	70	175	917
234152	Sito	Andrés	Pascual Santonja	LM	Spain	24	70	180	461
234437	Diga	Diogo Miguel	Guedes Almeida	RB	Portugal	23	69	173	10019
234651		David	Stec	RB	Austria	27	70	179	110746
234799		Yohan	Demoncy	CM	France	25	68	180	112276
234967		Diego	Giraldo	CDM	Colombia	24	70	173	112578
235054		Ivan	Vujica	LB	Australia	24	83	180	111398
235207		Sören	Reddemann	CB	Germany	25	79	190	492
235439		Ryan	Moon	ST	South Africa	24	74	180	110929
235652		Utku	Yuvakuran	GK	Turkey	23	81	192	327
235729		David	Bates	CB	Scotland	24	83	190	28
235957		Jordy	Gaspar	RB	France	24	58	172	69
236339		Zakaria	Sanogo	CF	Burkina Faso	24	60	169	2017
236467		Felix	Götze	CB	Germany	23	78	185	100409
236883		Mikael	Anderson	RM	Iceland	23	69	180	1971
237050		Oleg	Kudryk	GK	Ukraine	24	71	185	101059
237217		Niko	Hansen	RM	Denmark	26	77	178	687
237266		Marcus	Epps	RM	United States	26	70	178	112134
237475		Hasan	Özkan	CM	Turkey	23	70	178	682
237563		Aliou	Badji	ST	Senegal	23	75	189	710
237762		Yosuke	Kawai	CM	Japan	32	59	166	101149
237983		Miguel	Nazarit	CB	Colombia	23	79	186	101106
238235		Hugo Vegard	Vetlesen	CDM	Norway	21	66	175	917
238577	Kang Ji Hoon	Ji Hoon	Kang	RB	Korea Republic	24	62	177	112115
238803		Tom	Baumgart	LM	Germany	23	72	181	506
238958		Rekeem	Harper	CM	England	21	64	183	109
239127		Alejandro	Mayorga	LB	Mexico	24	69	177	101121
239352		René	Guder	ST	Germany	26	79	183	492
239461		José Alberto	Castillo	GK	Mexico	26	83	187	1881
239571		Tim	Handwerker	LM	Germany	23	81	182	1915
239754		Martin	Košťál	RM	Slovakia	25	62	179	1873
239852		Diego	Barreto	CAM	Paraguay	28	77	181	112579
240017		Andreas	Skov Olsen	RW	Denmark	21	70	180	1788
240311		Luca	Zidane	GK	France	23	77	183	243
240361		Ivan Francesco	De Santis	CB	Italy	24	77	184	1847
240742		Zeki	Erkilinc	LW	Holland	23	72	175	100634
241067		Aristóteles	Romero	CM	Venezuela	25	75	184	110734
241652		Kevin	Kabran	LW	Sweden	27	82	182	1524
242006		Daiki	Hashioka	RM	Japan	22	75	182	111575
242237		Brent	Lepistu	CM	Estonia	28	78	185	113459
242535		Saša	Jovanović	LM	Serbia	27	78	184	111822
242619		Cheick	Doucouré	CM	Mali	21	73	180	64
242708		Mo	Adams	CDM	England	24	75	168	693
243245		Orkun	Kökçü	CM	Holland	20	70	180	246
243661		Albert	Vallci	LB	Austria	26	82	191	2045
243841		Scott	Pittman	ST	Scotland	29	72	176	621
244029		Alessandro	Abruscia	CAM	Italy	31	72	178	33
244213	Jorge Félix	Jorge Félix	Muñoz García	LM	Spain	29	62	172	111086
244564		Jurich	Carolina	LB	Curaçao	23	74	178	1904
244724		Emil	Frederiksen	CAM	Denmark	20	72	174	1913
245065		Diego	Palacios	LB	Ecuador	22	67	169	1907
50501567		Paul	Anderson	RM	England	33	65	175	1929
50523644		Fahad Hamad	Al Yamani	CDM	Saudi Arabia	31	73	179	113219
50531960		Tyrone	Barnett	ST	England	35	85	191	1936
50536701		Rhys	McCabe	CM	Scotland	29	74	173	423
50541220		Abdullah	Al Owayshir	GK	Saudi Arabia	30	73	185	113219
50544398		Erik	Hurtado	ST	United States	30	79	178	696
50545829		Yílmar	Filigrana	RM	Colombia	30	80	180	111723
50547210		Rob	Hunt	LB	England	26	67	171	1934
50552223	PC	Victor	Pagliari Giro	LB	Brazil	27	73	173	101112
50553420		Abdulaziz	Al Bishi	RM	Saudi Arabia	27	69	169	607
50559221		Duckens	Nazon	ST	Haiti	27	87	182	100805
50560495		Christopher	Lindquist	RB	Norway	25	69	181	113459
50561355		Jonathan	Lewis	LW	United States	24	68	171	694
50563326		Ruon	Tongyik	CB	Australia	24	80	185	111395
50566443		Antoine	Bernede	CAM	France	22	74	177	191
50568155		Tomás	Conechny	ST	Argentina	23	65	170	1013
50569100		Shinya	Yajima	CM	Japan	27	67	171	112093
50569703		Ammar	Al Najjar	RM	Saudi Arabia	24	68	175	112390
50571000		René	Guder	ST	Germany	26	79	183	110597
50571784	João Tavares	João	Tavares Almeida	CM	Portugal	22	70	175	1896
50573732	Carlos Miguel	Carlos Miguel	Coronel	GK	Brazil	24	88	192	112134
50575689		Muhammed	Kiprit	ST	Germany	22	80	184	2045
225843		Onurcan	Güler	CAM	Turkey	26	74	180	111340
226259		Lorenzo	Andrenacci	GK	Italy	26	77	188	190
226538		Haukur Heiðar	Hauksson	CB	Iceland	29	79	187	433
227143		Denis	Gómez	RM	Colombia	29	70	174	112578
227573		Duckens	Nazon	ST	Haiti	27	87	182	680
227857		Beni	Badibanga	RM	Belgium	25	71	176	110913
227995		Liam	Walsh	CM	England	23	63	168	1919
228464	Kim Jin Hyuk	Jin Hyuk	Kim	CB	Korea Republic	28	78	187	2056
228625		Abdullah	Kanno	CB	Saudi Arabia	31	67	181	113057
228847		Christopher	Lindquist	RB	Norway	25	69	181	922
229079		Joe	McNerney	CB	England	31	84	193	110890
229379		Luca	de la Torre	CAM	United States	23	68	177	144
229666		Uroš	Korun	CB	Slovenia	34	79	188	111086
229895		Dion	Donohue	LB	Wales	27	71	180	1790
230802		Hassan Mohammed	Al Amiri	LM	Saudi Arabia	27	56	167	112391
230933		Lucas	Schoofs	CDM	Belgium	24	72	185	1904
231303		Lee	Grace	CB	Republic of Ireland	28	82	185	306
231486		Abdulwahab	Jafar	RM	Saudi Arabia	27	62	166	113222
231836		Jesper	Karlsson	ST	Sweden	23	70	171	700
232101		Santiago	Hernández	GK	Mexico	24	75	183	101114
232372		Takuya	Okamoto	CB	Japan	29	73	175	113161
232465		Shingo	Tomita	CM	Japan	35	64	169	112836
232950		Hiroki	Akino	CDM	Japan	26	68	176	113161
233135		Thomas	Blomeyer	CB	Germany	25	85	191	1825
233508		Bruno	Miranda	ST	Bolivia	23	75	180	688
234135	Rafaelson	Rafaelson	Bezerra Fernandes	ST	Brazil	24	93	183	112836
234298		Nikolai	Alho	RM	Finland	28	76	172	100325
234677		Rasmus	Thellufsen	LM	Denmark	24	74	185	820
234915		Blair	Alston	RM	Scotland	29	78	183	100804
235049		Ian	Escobar	LB	Argentina	25	63	172	112670
235221	Tang Shi	Shi	Tang	RM	China PR	26	62	183	111839
235483		Ohoulo	Framelin	GK	Cameroon	24	82	185	1891
235608		Sultan	Al Mutairi	CB	Saudi Arabia	31	80	182	112990
235931		Muhammed	Şengezer	GK	Turkey	24	78	188	742
236247		Herbie	Kane	CM	England	22	67	177	142
236586	Kim Jin Ya	Jin Ya	Kim	RM	Korea Republic	23	63	177	110765
236869		Yiğithan	Güveli	CB	Turkey	23	85	194	326
237161		Sean	Longstaff	CM	England	23	65	180	13
237198		Antoine	Leautey	RW	France	25	68	172	1813
237331		Thibault	De Smet	CB	Belgium	23	69	183	674
237452		Shinya	Yajima	CAM	Japan	27	67	171	112836
237681		Takefusa	Kubo	CAM	Japan	20	67	173	101151
237770		Yu	Hasegawa	ST	Japan	34	78	187	101149
237959		Jordy	Delem	RB	France	28	71	180	111144
238203		Juha	Pirinen	LB	Finland	29	81	184	100325
238379		Nikolas	Nartey	CM	Denmark	21	80	185	31
238580		Idriz	Voca	CDM	Kosovo	24	74	181	897
238947		Justin	Gerlach	CB	Germany	31	75	193	110591
238986		Felix	Luckeneder	CB	Austria	27	73	190	15009
239170		Vito	Hammershøj-Mistrati	CM	Denmark	29	76	177	112425
239364		Philipp	Köhn	GK	Switzerland	23	75	191	191
239486	Zé Pedro	José Pedro	Costa Leite	RM	Portugal	24	69	175	10019
239691		Fabian	Eisele	ST	Germany	26	78	183	110592
239817		Boubakary	Soumaré	CM	France	22	82	188	65
239901		Sasa	Kalajdzic	CAM	Austria	24	76	195	111821
240044	Luan	Luan	Leite da Silva	CB	Brazil	25	68	186	112075
240347		Arthur	Gnahoua	LM	France	29	80	187	127
240575	Prendes	Alejandro	Prendes Reina	CB	Spain	24	75	187	110827
240733		Giovanni	Pinto	LB	Italy	29	76	182	50
241002		Emmanuel	Sabbi	ST	United States	23	70	178	112425
241190		Törles	Knöll	ST	Germany	23	80	182	171
241925		Chris	Führich	CM	Germany	23	69	178	31
242084	Carlos Miguel	Carlos Miguel	Coronel	GK	Brazil	24	88	192	191
242268		Can	Özkan	RB	Germany	21	70	182	159
242527		Stephan	Ambrosius	CB	Germany	22	80	182	28
242580		Kazuki	Kushibiki	CB	Japan	28	84	182	112092
242692		Keita	Nakamura	LW	Japan	28	73	178	112448
242836		Ken	Krolicki	CM	Japan	25	70	178	111139
243364		Daiki	Watari	ST	Japan	28	70	176	113157
243742		José-Junior	Matuwila	CB	Germany	29	80	186	162
243857		Paseka	Mako	LB	South Africa	27	59	163	110930
244024		Oliver	Batista Meier	LM	Germany	20	60	178	21
244175		Hassan	Amin	LB	Afghanistan	29	69	174	110597
244571		Daniel	Zamora	CB	Mexico	23	78	186	1879
244742		Andreas	Ivan	RM	Romania	26	75	178	689
245098		Leo	Osaki	CB	Japan	30	82	187	101146
245461		Facundo	Colidio	ST	Argentina	21	68	179	44
50524299		Osama	Malik	CDM	Australia	30	75	185	112990
50530813	Yang Jun A	Jun A	Yang	CB	Korea Republic	32	81	188	110765
50536176		Wilmar	Jordán	ST	Colombia	30	87	180	112528
50541482		Kwabena	Appiah-Kubi	RW	Australia	29	70	180	111398
50544272		Daniel	Bohl	CDM	Germany	27	69	172	162
50545720		Felipe	Salinas	CB	Chile	39	84	188	110975
50547503		Ben	Purrington	LB	England	25	73	178	89
50551797		Tom	Field	LB	Republic of Ireland	24	70	177	1936
50553173		Sid	Nelson	CB	England	25	75	185	97
50558936		Jordan	Flores	CM	England	25	75	180	1917
50560511		Tobias	Heintz	LM	Norway	23	69	173	111339
50561464		Fabian	Schubert	ST	Austria	26	80	194	2017
50563712		Marco	Tumminello	ST	Italy	22	76	180	347
50564800		Ko	Itakura	CB	Japan	24	75	186	111730
50566697		Ian	Escobar	LB	Argentina	25	63	172	111713
50568517		Yiğithan	Güveli	CB	Turkey	23	85	194	113259
50569199		Thomas	Ephestion	CM	France	26	87	189	112276
50569369		Abdullah	Al Khaibari	CDM	Saudi Arabia	24	66	175	112139
50570143		Víctor	Retamal	RB	Chile	23	62	169	112534
50571402		Martin	Košťál	LM	Slovakia	25	62	179	110745
50569851		Juha	Pirinen	LB	Finland	29	81	184	418
50570827		Zoran	Arsenić	CB	Croatia	27	75	187	110745
50571995		Arthur	Gnahoua	LM	France	29	80	187	1480
50573352		Christopher	Rocchia	LB	France	23	64	172	226
50575309		Albert	Vallci	LB	Austria	26	82	191	191
67312001		Robin	Jansson	CB	Sweden	29	87	187	112606
67342378		Joël	Abu Hanna	LB	Germany	23	80	184	110169
53363		Adam	Collin	GK	England	36	78	191	1480
139317		Jonathan	Stead	ST	England	38	76	191	1937
152552		Yves	Ma-Kalambay	GK	Congo DR	35	96	198	1933
155534		Keith	Lowe	CB	England	35	87	188	1959
164645		Stephen	Dawson	CM	Republic of Ireland	35	71	183	1945
169474		Andy	Taylor	LB	England	35	77	183	1920
170743		Igor	Djuric	CB	Switzerland	32	77	181	435
173660		Paul	Caddis	RB	Scotland	33	67	170	3
177959		Giampietro	Perrulli	CAM	Italy	36	71	171	111434
180760		Fahad	Al Shammari	GK	Saudi Arabia	40	75	181	113057
182385	Liu Weidong	Weidong	Liu	RW	China PR	34	68	177	112165
183648		Christoph	Kröpfl	LM	Austria	31	73	170	2017
186136		Christy	Fagan	ST	Republic of Ireland	32	66	175	423
186539		Burim	Kukeli	CM	Albania	37	72	180	110770
187830		Barry	Maguire	CM	Holland	31	80	180	111285
189233		Tommi	Vaiho	GK	Sweden	32	78	188	710
190934		Paúl	Uscanga	CM	Mexico	30	60	166	110150
191331		Tomonobu	Yokoyama	CB	Japan	36	75	184	112444
192125		Tim	Björkström	RB	Sweden	30	76	180	113458
193478		Jamie	Grimes	CB	England	30	76	188	1959
195219		Luke	Wilkinson	CB	England	29	74	188	361
196983		Aslak	Falch	GK	Norway	29	81	185	112199
198825		Mark	Cullen	ST	England	29	75	175	1926
199311	Lee Hyun Woong	Hyun Woong	Lee	CM	Korea Republic	33	68	175	111588
200485		Jermaine	McGlashan	RM	England	33	60	170	1934
201117		Wojciech	Pawłowski	GK	Poland	28	80	190	420
202795		Kgosi	Ntlhe	LB	South Africa	27	66	175	1955
203310		Chris	Harold	RM	Australia	29	78	176	111399
203835		Dirk	Orlishausen	GK	Germany	38	94	197	27
204282		Chris	Kane	ST	Scotland	26	76	180	100804
206297		Saša	Balić	LB	Montenegro	31	76	184	110749
207811	Yeo Reum	Reum	Yeo	CM	Korea Republic	32	69	175	2055
208831		Steve	McNulty	CB	England	37	88	186	15048
209315		Dan	Butler	LWB	England	26	75	177	112254
209844		Mounir	Bouziane	LM	France	30	85	183	27
210508		Signori	Antonio	GK	Switzerland	27	78	185	896
210924		Abdulrahman	Al Barakah	CDM	Saudi Arabia	30	69	175	113057
211299		Kelle	Roos	GK	Holland	29	90	196	91
211593		Shay	Facey	RB	England	26	64	177	1930
212329		Jordan	Cranston	LB	Wales	27	79	180	357
50514329		Colin	Daniel	LB	England	33	73	180	15015
50531147		Piero	Mingoia	RM	England	29	70	169	357
50544466	Kim Do Hyung	Do Hyung	Kim	RM	Korea Republic	30	70	180	1474
50549366		Sonni	Nattestad	CB	Faroe Islands	27	95	197	1446
50554120		Daniel Fredrik	Granli	CB	Norway	27	78	188	433
50557271		Moses	Makasi	CM	England	25	72	180	361
50560294		Nicolás	Delgadillo	LW	Argentina	23	70	177	111714
50562487		Zak	Jules	CB	Scotland	24	72	190	1959
50566277		Kristian	Dirks Riis	CB	Denmark	24	84	187	1516
50567963		Alfie	Jones	CB	England	23	70	182	17
50569844		Arnór	Sigurðsson	CF	Iceland	22	71	180	315
50571864		Marco	Carraro	CM	Italy	23	74	187	199
50573939		Kai	Brünker	ST	Germany	27	78	190	111379
50574780		Ruben	Droehnle	CB	France	23	74	183	65
67335371		Jerry	Yates	ST	England	24	68	175	1934
67346486		Nicolás	Roa	RWB	Colombia	27	70	181	112528
212560		Nick	Townsend	GK	England	26	80	181	112254
212973		Marko	Marić	GK	Croatia	25	89	191	299
213280		Connor	Pain	LM	Australia	27	68	175	111396
213673		Alex	Kiwomya	RM	England	25	67	179	142
213767		Liam	Nolan	CM	Northern Ireland	26	69	174	110313
214385		Óscar	Rodas	ST	Colombia	34	75	175	112019
214752		Camilo	Ponce	ST	Chile	30	77	179	112584
215423		Kodjovi	Koussou	RM	Germany	29	64	169	33
216226		Alex	Kenyon	CDM	England	29	76	182	357
216817		Óttar Magnús	Karlsson	ST	Iceland	24	84	190	703
218633		Fabian	Piasecki	LM	Poland	26	77	186	112505
219957		Jacob Barrett	Laursen	LB	Denmark	26	76	181	272
220695		Rodin	Quiñones	RW	Colombia	26	75	185	101103
221349		Joe	Nuttall	ST	England	24	72	182	3
221531		Marko	Maroši	GK	Slovakia	27	80	190	142
222051	Kim Dae Jung	Dae Jung	Kim	CB	Korea Republic	28	83	188	110765
222294	Sun Shilin	Shilin	Sun	CDM	China PR	32	72	178	110955
222472		Daniel Fredrik	Granli	CB	Norway	27	78	188	917
223271		Sinan	Kurt	LM	Germany	25	71	173	166
223750		Daniel	Steininger	RM	Germany	26	79	187	165
224032		Jérémie	Porsan-Clemente	ST	France	23	69	179	70
224433		Korbinian	Burger	CB	Germany	26	74	189	111379
224662		Maurice	Multhaup	RM	Germany	24	74	173	111235
225125		Harry	Anderson	RM	England	24	71	179	149
225532		Ibrahim	Cissé	CB	France	25	74	185	1530
225694		Terell	Thomas	CB	England	25	71	185	112259
225853		Rayan	Raveloson	CB	Madagascar	24	73	182	294
226107		Luka	Marić	CB	Croatia	34	79	182	111082
226553		Savaş	Polat	RB	Turkey	24	72	179	101033
226844	Jiang Jihong	Jihong	Jiang	CB	China PR	31	88	191	112429
227913	Pedro López	Pedro	López Rodríguez	CB	Spain	24	70	179	110831
228410		Daniel	Iversen	GK	Denmark	24	80	193	1920
228610		Omar Mohammed	Muzayil	RB	Saudi Arabia	29	61	173	607
228788		Jeremy	Broh Tonye	CM	Italy	24	75	180	110912
50570775		Alejandro	Mayorga	LB	Mexico	24	69	177	1880
50571500		Diego	Barreto	CAM	Paraguay	28	77	181	112528
50572715		Aristóteles	Romero	CM	Venezuela	25	75	184	110066
50574340		Keita	Nakamura	LW	Japan	28	73	178	101149
67293578		Matt	Green	ST	England	34	81	184	92
67342016		Ko	Itakura	CB	Japan	24	75	186	1915
19521		Jabo	Ibehre	ST	England	38	92	194	1944
102593		Craig	Woodman	LB	England	38	68	175	143
138086		Lasse	Kryger	ST	Denmark	38	75	188	1446
152598		Mounir	Hamoud	LB	Norway	36	69	177	922
155795		Wojciech	Łobodziński	RM	Poland	38	80	188	112505
163768		Michael	Rose	CM	England	39	78	180	1959
166879		Lars	Grorud	CB	Norway	38	86	188	1757
169333		Siegfried	Rasswalder	LB	Austria	34	67	175	2017
170660		Fulvio	Sulmoni	CB	Switzerland	35	72	182	10032
172068		Louis	Dodds	ST	England	34	80	178	1928
177549		Dominic	Oduro	RM	Ghana	35	73	183	111928
180717		Liam	Reddy	GK	Australia	39	90	189	111399
181457		Chris	Robertson	CB	Scotland	34	74	191	1934
182469	Liu Yu	Yu	Liu	LB	China PR	36	70	182	112165
183342		Benjamin	Schwarz	CDM	Germany	35	75	180	531
185256		Jason	Hoffman	RM	Australia	32	79	189	111398
187029		Daniel	Mullen	RB	Australia	31	85	187	111766
188985		Liridon	Kalludra	CM	Sweden	29	68	170	113459
189307		Lewis	Young	RWB	England	31	61	175	110890
191006		Antony	Golec	CB	Australia	31	85	191	111396
191863	Jiang Jiajun	Jiajun	Jiang	RB	China PR	31	73	183	112165
192158		Mauricio	Albornoz	CDM	Sweden	33	80	183	113458
193957		Cristian	Montano	LM	Colombia	29	76	180	1928
196921		Lennard	Sowah	LB	Germany	28	80	187	184
198373		Scott	Robinson	CM	Scotland	29	68	168	621
199235	Jo Jae Cheol	Jae Cheol	Jo	CM	Korea Republic	35	63	176	111588
199893		Magnus	Stamnestrø	CM	Norway	29	69	178	112200
200742		Ben	Heneghan	CB	England	27	79	195	1926
201094		Ben	Garratt	GK	England	27	66	185	121
202959	Choi Hyun Tae	Hyun Tae	Choi	CM	Korea Republic	33	75	179	1478
203312		Louis	Dennis	CAM	England	28	69	185	1790
204222		Matthew	Dolan	CM	England	28	70	175	112254
204459		Ben	Nugent	CB	England	27	83	196	361
206031	Jefté	Jefté	Betancor Sánchez	ST	Spain	28	82	186	1785
207430		Ryan	Edwards	CAM	Australia	27	73	170	80
208776		Florian	Stritzel	GK	Germany	27	92	197	110502
209041		Yahya	Al Musallam	CB	Saudi Arabia	34	84	184	112392
209526		Sean	Kavanagh	LB	Republic of Ireland	27	62	174	306
210009		Kevin	McHattie	LB	Scotland	28	73	181	445
210739		Casper	Nielsen	CM	Denmark	27	76	181	272
211127		Mattias	Håkansson	LM	Sweden	28	82	186	703
211511		Luke	McCullough	CDM	Northern Ireland	27	84	188	15048
211610		Jermaine	Anderson	CM	England	25	75	188	142
211817		Aaron	Berzel	CDM	Germany	29	79	184	33
50511390		Sho	Ito	ST	Japan	33	76	184	101147
50529064	Kim Keun Hoan	Keun Hoan	Kim	CDM	Korea Republic	34	86	193	110765
50543258		Jermaine	Anderson	CM	England	25	75	188	1938
50550035		Nelson	Espinoza	GK	Chile	25	84	190	15029
50555873		Adam	Phillips	CM	England	23	76	180	1792
50557596		Rasmus	Lauritsen	CB	Denmark	25	78	187	702
50559432		Kristján Flóki	Finnbogason	ST	Iceland	26	85	190	1524
50563560	Kim Geon Ung	Geon Ung	Kim	CDM	Korea Republic	23	78	186	1475
50565582		Aaron	Ramsdale	GK	England	23	77	188	112259
50567255		Tony	Rocha	LB	United States	27	75	175	112828
50569270		Nicolás	Roa	RWB	Colombia	27	70	181	101104
50571638		Tom	Broadbent	CB	England	29	90	190	1934
50573829	Neto Borges	Vivaldo	Neto	LB	Brazil	24	85	183	673
50576283		Maximilian	Pronichev	CF	Russia	21	78	183	110482
50577362	Álex Blanco	Alejandro	Blanco Sánchez	LM	Spain	22	70	175	463
67344232		Edson	Torres	RM	Mexico	23	55	165	1880
84121698		Kane	Wilson	RB	England	21	71	178	143
212782		Hiram	Boateng	CM	England	25	80	182	143
213157		Aleksander	Jagiełło	LM	Poland	26	62	170	111086
213665		Jordan	Houghton	CDM	England	25	79	183	1798
213696		Matty	Willock	CM	England	24	72	185	100805
213864		Bjørn Inge	Utvik	CB	Norway	25	75	183	112199
214656		Billy	Nordström	LWB	Sweden	25	73	179	319
215131		Misael	Cubillos	RW	Chile	25	67	175	112531
216110		Dawid	Kudła	GK	Poland	29	84	189	111089
216470		Gregor	Zabret	GK	Slovenia	25	80	187	1960
218387		Nelson	Espinoza	GK	Chile	25	84	190	112668
219627		Joaquin	Verdugo	CAM	Chile	24	70	175	111327
220129		Nader	Ghandri	CB	Tunisia	26	94	195	230
220819		Ryan	Kitto	LW	Australia	26	75	182	111393
221369		Khaled	Al Kaabi	RM	Saudi Arabia	29	69	177	111674
221633		Bent	Sørmo	RB	Norway	24	80	187	113459
222145		Sebastian	Ohlsson	CDM	Sweden	28	78	186	703
222387		Vykintas	Slivka	CM	Lithuania	26	84	190	81
222947		Tom	Davies	CB	England	29	70	185	1800
223381		Mickey	Demetriou	CB	England	31	72	172	112254
223931		Hervé	Matthys	CB	Belgium	25	77	183	1971
224211		Samy	Mmaee	CB	Belgium	24	83	181	680
224553	Min Junlin	Junlin	Min	CDM	China PR	27	70	176	112977
224916		Nicolás	Royón	ST	Uruguay	30	66	172	110581
225198		Ahmad	Al Habib	CB	Saudi Arabia	28	84	187	112096
225623		Moses	Makasi	CM	England	25	72	180	19
225768		Ilias	Chatzitheodoridis	LB	Greece	23	70	178	1884
225998		Aaron	McEneff	CM	Republic of Ireland	26	70	175	445
226186	Luo Xin	Xin	Luo	CB	China PR	31	75	182	112537
226617	Jang Hyun Soo	Hyun Soo	Jang	RM	Korea Republic	28	73	179	983
50572381		Giovanni	Pinto	LB	Italy	29	76	182	200
50573300		Kevin	Kabran	LW	Sweden	27	82	182	700
50576269	Vinícius	Carlos Vinícius	Alves Morais	ST	Brazil	26	83	190	69
67330389		Sid	Nelson	CB	England	25	75	185	15048
10899		Chris	Porter	ST	England	37	83	186	121
53827		Matt	Taylor	LB	England	39	73	177	1934
140418		Richard	Duffy	CB	Wales	35	65	181	1937
153100		Stuart	Nelson	GK	England	39	84	187	346
160293		Tom	Soares	CM	England	35	72	183	112259
166736		Magnus	Andersen	CM	Norway	35	71	179	418
169912		Byron	Moore	RM	England	32	72	175	1945
171816		Michael	Raynes	CB	England	33	76	193	121
175961		Hans	Norbye	RB	Norway	34	76	176	418
178485		Bobby	Olejnik	GK	Austria	34	83	188	1940
182312	Yang Jun	Jun	Yang	GK	China PR	40	78	187	112983
182681		Colin	Daniel	LB	England	33	73	180	1938
184269		Mark	Ellis	CB	England	32	78	188	15048
186152		James	Dunne	CM	England	31	76	180	1934
186722		Fabien	Robert	CAM	France	32	64	174	561
189041		Michael	Gardawski	RM	Germany	30	75	177	111083
189772		Martyn	Woolford	LM	England	35	74	183	92
191684	Jung San	San	Jung	GK	Korea Republic	32	84	191	110765
193473		Ludvig	Öhman	CB	Sweden	29	84	191	111705
194790		Harry	Davis	CB	England	29	83	185	92
197416	Kim Keun Hoan	Keun Hoan	Kim	CDM	Korea Republic	34	86	193	111588
198899	João Pereira	João Duarte	Vieira Pereira	LB	Portugal	31	79	183	1447
199831		Rouven	Sattelmaier	GK	Germany	34	88	187	110502
200693		Daniel	Jarl	CB	Sweden	29	82	196	113458
200928		Ollie	Banks	CM	England	28	75	190	15048
203145		George	Taft	CB	England	28	74	191	1944
203778		Alex	Horwath	GK	United States	34	88	190	111065
204248		Corey	Gameiro	ST	Australia	28	67	177	111396
205159		Charlie	Raglan	CB	England	28	75	185	1951
207588		Anton	Tideman	LB	Sweden	28	80	188	703
208056	Jeon Hyeon Chul	Hyeon Chul	Jeon	CAM	Korea Republic	31	72	175	2056
209222		Awadh Ali	Khrees	RB	Saudi Arabia	30	73	178	112389
209546	Rafhael Lucas	Rafhael Lucas	Oliveira da Silva	ST	Brazil	28	71	174	112903
210347		Ivan	Lučić	GK	Austria	26	98	194	256
210790		Ali	Al Zubaidi	RB	Saudi Arabia	28	78	182	112392
211276		Daniel	Santa	CDM	Colombia	29	72	175	112579
211305		Andrea	Tabanelli	CM	Italy	31	78	192	347
211760		Marcel	Baude	RB	Germany	31	76	179	162
211978		Sean	Hoare	CB	Republic of Ireland	27	75	189	837
50486689		Craig	Mackail-Smith	ST	Scotland	37	78	178	1937
50522654		Antony	Golec	CB	Australia	31	85	191	111766
50539078		Ryan	Edwards	CAM	Australia	27	73	170	100805
50542438		Ali	Al Zubaidi	RB	Saudi Arabia	28	78	182	112387
50548442		Courtney	Duffus	ST	Republic of Ireland	25	76	188	1920
50553699	Kim Dae Jung	Dae Jung	Kim	CB	Korea Republic	28	83	188	2055
50555952		Łukasz	Moneta	LM	Poland	27	70	172	1871
50560258		Omar Mohammed	Muzayil	RB	Saudi Arabia	29	61	173	113057
50563599		Randell	Williams	LW	England	24	76	173	1795
50565074		Anthony	Georgiou	LM	Cyprus	24	73	179	1853
50566959		Mario	Briceño	RW	Chile	25	75	180	15029
50568791		Harlin	Suárez	CDM	Colombia	27	66	171	101106
50570874		Juan	Torres	CDM	United States	22	71	174	112828
50572982	Liu Yiming	Yiming	Liu	CB	China PR	26	82	190	111839
50574700		Henrik	Löfkvist	CB	Sweden	26	76	186	1439
50576438		Ubong	Moses Ekpai	RM	Niger	25	75	176	110468
67340815		Randell	Williams	LW	England	24	76	173	143
84099776		Matty	Willock	CM	England	24	72	185	110890
212366		Josh	Sheehan	CM	Wales	26	75	176	112254
212800	Jwa Joon Hyeop	Joon Hyeop	Jwa	CM	Korea Republic	30	72	177	111588
213281		Paulo	Retre	RB	Australia	28	75	178	111400
213688		James	Weir	CM	England	26	71	177	1952
213821		Francisco	Sepúlveda	RB	Chile	29	70	180	112533
214458		Diego	Rosende	CM	Chile	35	69	172	111328
215420		Robbie	Muirhead	ST	Scotland	25	75	189	1798
216272		Danny	Williams	LM	England	33	77	185	110313
216794		Courtney	Duffus	ST	Republic of Ireland	25	76	188	753
219261		Mario	Jelavić	ST	Croatia	27	80	189	111560
219702		Kamil	Dankowski	RB	Poland	25	67	177	111092
220677		Joe	Morrell	CM	Wales	24	64	168	1919
221149		Harry	Kyprianou	CB	Cyprus	24	69	182	1954
221373		Mohammed	Al Saiari	ST	Saudi Arabia	28	84	182	113222
221653	Fran Serrano	Francisco José	Serrano Santos	CB	Spain	26	85	192	110832
222183	Eddy Francis	Aidi	Fulang Xisi	CB	China PR	30	75	181	110955
222621	Du Jia	Jia	Du	GK	China PR	28	75	186	111774
223264		Stephen	Hendrie	LB	Scotland	26	70	178	1954
223904		Joel	Gerezgiher	LM	Germany	25	71	176	111379
223963		Cameron	Humphreys-Grant	CB	England	22	80	187	10
224418		Samúel Kári	Friðjónsson	CM	Iceland	25	76	186	920
224615	Zheng Dalun	Dalun	Zheng	RM	China PR	27	67	170	112983
224982		Antonio	Palumbo	CM	Italy	25	78	182	110373
225395	Ezkieta	Jokin	Ezkieta Mendiburu	GK	Spain	24	78	193	241
225739	Jin YangYang	YangYang	Jin	CB	China PR	28	70	186	112978
225948		Rasmus	Lauritsen	CB	Denmark	25	78	187	822
226084		Ryan	Hardie	ST	Scotland	24	75	188	621
226552		Caner	Koca	CDM	Turkey	25	74	183	326
226698		Nicolás	Giménez	CM	Argentina	25	77	179	111714
227751	Bae Jae Woo	Jae Woo	Bae	RB	Korea Republic	28	67	175	1473
228021	Yi Fan	Fan	Yi	GK	China PR	29	79	185	111769
228713		Michael	Gómez	ST	Colombia	24	70	180	112526
228772		Nathan	Blissett	ST	England	31	78	192	1959
229135		Mike	Hauptmeijer	GK	Holland	24	70	191	1914
50573932		Mohammed	Dauda	ST	Ghana	23	70	175	1909
67310809		Danny	Amankwaa	RM	Denmark	27	68	176	1447
67341457		Musashi	Suzuki	ST	Japan	27	74	185	112444
16177		Noel	Hunt	ST	Republic of Ireland	38	74	173	753
53756		Lewis	Price	GK	Wales	37	85	191	1797
138180		Jamal	Campbell-Ryce	LM	Jamaica	38	78	170	361
153137		Łukasz	Sapela	GK	Poland	38	81	186	112505
157407		Brendan	Clarke	GK	Republic of Ireland	35	81	185	423
165903	Choi Hyo Jin	Hyo Jin	Choi	RB	Korea Republic	37	70	172	1475
169184		Paul	Dixon	LB	Scotland	34	71	178	92
170280		James	McKeown	GK	Republic of Ireland	32	89	187	92
171320		Gary	Miller	RB	Scotland	34	71	185	1480
176792		Marcus	Pode	ST	Sweden	35	82	188	703
179742		Sho	Ito	ST	Japan	33	76	184	101151
181106		Hajime	Hosogai	CDM	Japan	35	69	177	101145
182788	Wan Houliang	Houliang	Wan	CB	China PR	35	80	187	112537
183665		Boris	Prokopič	CM	Austria	33	74	181	15009
184980		Ian	Bermingham	LB	Republic of Ireland	32	73	177	423
186572		Will	Atkinson	CM	England	32	67	178	1940
189238		Florian	Hart	RB	Austria	31	69	176	1785
189891		Fraser	Franks	CB	England	30	69	183	112254
191093		Rémi	Pillot	GK	France	31	82	187	212
192101		Markus	Thorbjörnsson	CB	Sweden	33	80	187	113876
193404		Max	Veloso	RM	Switzerland	29	72	177	435
194148		Mark	O'Brien	CB	Republic of Ireland	28	77	180	112254
197776		Thomas	Drage	LW	Norway	29	62	174	918
198689		Keanu	Marsh-Brown	RM	England	28	78	185	112254
199499		Piero	Mingoia	RM	England	29	70	169	110313
200356	Marcus Vinícius	Marcus Vinícius	Silva de Oliveira	RM	Brazil	37	72	182	111082
200821		Lawson	D'Ath	RM	England	28	77	175	1798
202075		Kofi	Sarkodie	RB	United States	30	75	175	703
203289		Max	Clayton	ST	England	26	70	175	1926
203969		Edson	Seidou	LB	France	29	85	182	111273
204501		Daniel	Leadbitter	RB	England	30	76	183	1962
206535		Paul	Digby	CDM	England	26	70	195	561
207723		Stefan	van der Lei	GK	Holland	28	79	186	113876
208988		Hussain Abdoh	Shaian	GK	Saudi Arabia	32	79	190	112393
209462		Rakish	Bingham	ST	England	27	75	180	184
209702		Mikkel	Agger	ST	Denmark	28	73	180	112199
210639		Junior	Morias	ST	Jamaica	26	88	173	1930
210922		Bader Mansour	Al Seliteen	CM	Saudi Arabia	31	67	176	112392
211283		Konrad	Nowak	RM	Poland	26	69	175	420
211597		George	Glendon	CM	England	26	72	177	1480
211814		Matthias	Kühne	RB	Germany	33	78	179	110591
245714	Álex Blanco	Alejandro	Blanco Sánchez	LM	Spain	22	70	175	461
50501544		Ritchie	Sutton	CB	England	35	85	183	357
50530473		Mark	Cullen	ST	England	29	75	175	1480
50541110		Rakish	Bingham	ST	England	27	75	180	1936
50545217		Aaron	Taylor-Sinclair	LB	Scotland	30	82	187	121
50548465		Óttar Magnús	Karlsson	ST	Iceland	24	84	190	417
50555687		Ismail Mohammed	Al Maghrabi	ST	Saudi Arabia	30	70	176	113219
50557646		Aaron	McEneff	CM	Republic of Ireland	26	70	175	306
50560537		Jake	McGing	RB	Australia	27	74	184	1569
50564400		Shingo	Hyodo	CM	Japan	36	68	172	112836
50566863		Giovanni	Crociata	CAM	Italy	23	67	174	112409
50568896		Germán	Berterame	RM	Argentina	22	72	178	110581
50569862		Marcus	Degerlund	CB	Sweden	23	80	194	708
50573795		Wilson	Piñones	CDM	Chile	33	70	176	112531
50574773		Simon	Strand	RB	Sweden	28	70	175	700
67320474		Jermaine	Anderson	CM	England	25	75	188	1804
67344482		Kane	Wilson	RB	England	21	71	178	109
212358		Michael	Petrasso	RB	Canada	26	74	168	111139
212683		Jamille	Matt	ST	Jamaica	31	75	185	112254
213093		Jack	Clisby	LB	Australia	29	72	180	111396
213569		Aaron	Taylor-Sinclair	LB	Scotland	30	82	187	83
213693		Joe	Rothwell	CM	England	26	77	185	3
213837		Orri Sigurður	Ómarsson	CB	Iceland	26	78	187	112199
214679		Henrik	Gjesdal	CB	Norway	28	87	192	113459
215501		Eldis	Bajrami	RM	FYR Macedonia	28	62	172	112075
216459		Alex	Bray	RM	England	26	66	178	1797
217826		Josh	Laurent	CM	England	26	70	188	127
218397		David	Ochieng	CB	Kenya	28	89	189	111705
219967		Dominik	Hładun	GK	Poland	25	77	190	110749
220422		Mansour Ibrahim	Hamzi	RM	Saudi Arabia	29	61	172	112390
220964		Morten Ågnes	Konradsen	CM	Norway	25	72	176	918
221499		Dan	Gardner	CM	England	31	80	182	1920
221788	Yun Sang Ho	Sang Ho	Yun	CM	Korea Republic	29	64	179	110765
222209		Gabriel	Mutombo	CB	France	25	75	186	112276
222618	Kim Sang Won	Sang Won	Kim	LM	Korea Republic	29	71	176	1478
223083		Mitch	Austin	LW	Australia	30	78	186	111398
223821	Yeo Seong Hae	Seong Hae	Yeo	CB	Korea Republic	34	81	186	111588
224039		Ismail Mohammed	Al Maghrabi	ST	Saudi Arabia	30	70	176	112393
224304		Łukasz	Moneta	LM	Poland	27	70	172	110749
224618	Lin Chuangyi	Chuangyi	Lin	CAM	China PR	28	70	178	112540
225026		Eric	Björkander	CB	Sweden	25	73	184	1596
225364		Will	Miller	LM	England	25	66	168	15015
225650		Tom	King	GK	England	26	80	186	112259
225872		Jamie	McGrath	CAM	Republic of Ireland	24	70	175	837
226182	Sui Weijie	Weijie	Sui	GK	China PR	38	88	188	112165
226220		Memo	Rodriguez	LW	United States	25	65	173	698
226721		Gil	Alcalá	GK	Mexico	29	73	179	110150
227237		Miloš	Zukanović	ST	Serbia	25	82	186	111273
228156		Álvaro	Angulo	LB	Colombia	24	68	173	112578
228701		Sultan Mohammed	Al Masrahi	CB	Saudi Arabia	34	87	185	112990
228889		Jake	McGing	RB	Australia	27	74	184	111396
67336152		Jordan	Flores	CM	England	25	75	180	837
67352221		Franck	Evina	LM	Germany	21	73	177	576
53818		Matt	Bloomfield	CM	England	37	73	173	1933
134968		Robbie	Haemhouts	CM	Belgium	37	63	174	1904
149662		Alan	Bennett	CB	Republic of Ireland	39	85	188	422
155041		Craig	Mackail-Smith	RW	Scotland	37	78	178	1933
162072		Barry	Fuller	RB	England	36	75	177	1802
163852		Dawid	Sołdecki	CDM	Poland	34	78	185	111082
169896		Ritchie	Sutton	CB	England	35	85	183	15048
170445		Andy	Mangan	ST	England	34	74	183	110313
173538		Mark	Randall	CM	England	31	82	182	110890
177971		Jim	McNulty	CB	Scotland	36	77	183	1955
182156		Greg	Bolger	CDM	Republic of Ireland	32	73	180	306
183025		Matt	Simon	ST	Australia	35	78	188	111396
184065		Sal	Zizzo	RB	United States	34	75	179	112885
186230	Feng Zhuoyi	Zhuoyi	Feng	CM	China PR	32	75	184	111779
188924		Tadeusz	Socha	RB	Poland	33	70	183	111082
189695		Jamie	Devitt	RM	Republic of Ireland	31	66	178	1480
190962		Tom	Aldred	CB	Scotland	30	83	188	83
191937	Kang Ji Yong	Ji Yong	Kang	CB	Korea Republic	31	84	187	110765
192761		Emil	Jonassen Sætervik	LB	Norway	28	78	176	918
194094		Raphael	Koczor	GK	Germany	32	78	194	110591
196159		Elvis	González	LB	Colombia	39	69	174	112903
198491		Johan	Eiswohld	CB	Sweden	31	74	185	113458
199130		Gustav	Jansson	GK	Sweden	35	92	195	702
200259		Michael	Schimpelsberger	RB	Austria	30	73	181	2045
200718		Johan	Hammar	CB	Sweden	27	84	197	711
201217		Janick	Kamber	LB	Switzerland	29	65	171	435
202809		Roarie	Deacon	RM	England	29	68	170	180
203428		Elliott	Hewitt	CM	Wales	27	75	180	1937
204269		Zander	Clark	GK	Scotland	29	85	191	100804
204892		Daniel	Schütz	LM	Austria	30	66	169	112075
206584		Jon Helge	Tveita	RB	Norway	29	80	184	112199
208067	Lee Jin Hyung	Jin Hyung	Lee	GK	Korea Republic	33	88	188	110765
208999		Drey	Wright	RM	England	26	69	175	100804
209532		Daniel	Bachmann	GK	Austria	27	81	191	82
210424		Kieran	Kennedy	CB	England	27	70	183	127
210812		Dennis	Olsson	LWB	Sweden	26	73	182	1596
211006		Mohammed	Al Amri	LB	Saudi Arabia	29	73	177	112392
211362		Adam	Dźwigała	CB	Poland	25	80	185	1569
211739		Erdoğan	Yeşilyurt	RM	Germany	27	72	178	101041
245653		Jordan	Murray	ST	Australia	25	74	180	111396
50505308		Paul	Caddis	RB	Scotland	33	67	170	1804
50525121		Ludvig	Öhman	CB	Sweden	29	84	191	92
50536807		Charlie	Raglan	CB	England	28	75	185	1936
50545344		Matty	Willock	CM	England	24	72	185	11
50552343		Rodin	Quiñones	RW	Colombia	26	75	185	101100
50554731		Mitch	Austin	LW	Australia	30	78	186	111400
50558155		Jerry	Yates	ST	England	24	68	175	1797
50561466		Dominik	Baumgartner	CB	Austria	25	72	185	160
50564567		Naoyuki	Fujita	CM	Japan	34	72	176	101148
50567016		Edson	Torres	RM	Mexico	23	55	165	111035
50569076		Shogo	Nakahara	CM	Japan	27	68	177	112444
50570989		Luke	Hemmerich	LM	Germany	23	67	180	162
50572589		Lenny	Pintor	ST	France	21	66	179	66
50574646	Klauss	João	Klauss de Mello	ST	Brazil	24	85	190	252
50576300		Kazuaki	Mawatari	RB	Japan	30	70	175	111730
67337283		Mads	Juel Andersen	CB	Denmark	23	78	194	1932
84111730		Tom	King	GK	England	26	80	186	97
212492		Jake	Gray	RM	England	25	70	180	346
212818	Kim Do Hyung	Do Hyung	Kim	RM	Korea Republic	30	70	180	2055
213401		Andrej	Startsev	RB	Kazakhstan	27	72	175	162
213686		Donald	Love	RB	Scotland	26	72	178	106
214007		Ahmed	Al Nazera	CAM	Saudi Arabia	28	69	170	112390
214473		Kevin	Piedrahita	GK	United States	30	80	185	112523
215102		Jonathan	Rebolledo	RM	Chile	29	68	170	112531
215570		Glen	Rea	CB	Republic of Ireland	26	73	184	1923
216172		Mateusz	Piątkowski	ST	Poland	36	75	186	112505
217718		Sonni	Nattestad	CB	Faroe Islands	27	95	197	417
218985		Rafał	Augustyniak	CB	Poland	27	82	185	112505
219761		Gianni	Manfrin	LB	Italy	27	75	182	192
220383	Aarón	Aarón	Escandell	GK	Spain	25	72	183	110832
221106		Ben	Gladwin	CM	England	29	86	186	3
221556		Omenuke	Mfulu	CM	Congo DR	27	76	183	111273
221812		Abdullah	Al Shamekh	LB	Saudi Arabia	28	76	176	112392
222329		Mateusz	Wdowiak	LM	Poland	24	60	174	110747
222566		Talal	Majrashi	RM	Saudi Arabia	30	57	170	113219
223080		Harrison	Dunk	LM	England	30	73	184	1944
223676		Rene	Renner	LM	Austria	27	69	181	1785
224018	Rubén Mesa	Rubén	Mesa Visiga	ST	Spain	29	75	184	483
224225		Adam	Phillips	CM	England	23	76	180	184
224837		Valentin	Belon	GK	France	26	77	180	64
225089		Ryad	Al Ebrahim	LM	Saudi Arabia	27	69	173	112392
225548		Abdulrahman	Dagriri	GK	Saudi Arabia	31	92	184	113222
225670		Jack	Baird	CB	Scotland	25	68	188	100805
225927		Quentin	Lecoeuche	LB	France	27	65	172	112276
226129		Jon	Gorenc Stanković	CB	Slovenia	25	78	190	1939
226507		Jerry	Yates	ST	England	24	68	175	1480
226835		Ammar	Ahmed	CM	Sweden	33	64	173	113876
227698		Pape Sangoné	Sarr	CM	Senegal	29	70	181	894
227989		Eric	Ayuk	RM	Cameroon	24	68	173	112134
228454		Mohamed	Ofkir	LM	Norway	25	71	178	1757
228771		Juan	Mosquera	CDM	Colombia	24	75	176	112526
229036		Søren	Reese	CB	Denmark	28	79	184	1446
229285		Dave	Gnaase	CM	Germany	24	77	179	110197
229638		Mert	Kuleli	GK	Turkey	23	80	183	101037
229818		Dominik	Baumgartner	CB	Austria	25	72	185	2045
227052		Marvin	Vallecilla	LB	Colombia	30	72	175	112992
227784		Kristján Flóki	Finnbogason	ST	Iceland	26	85	190	111705
228382		Dan	Agyei	ST	England	24	77	183	1796
228646		Nicolás	Delgadillo	LM	Argentina	23	70	177	101088
228935		Marcel	Engelhardt	GK	Germany	28	88	191	110500
229249		Jake	Mulraney	LM	Republic of Ireland	25	64	172	80
229353		Mart	Ristl	CDM	Germany	25	77	179	550
229664		Filip	Valenčič	CAM	Slovenia	29	81	183	917
229848		Andreas	Vaikla	GK	Estonia	24	92	197	113459
230583		Florian	Kohls	CM	Germany	26	69	173	110197
231103		Brahim	Konaté	CM	France	25	66	180	1813
231705		Juan David	Jiménez	CDM	Colombia	27	72	176	112992
231912	Kim Geon Ung	Geon Ung	Kim	CDM	Korea Republic	23	78	186	1473
232164		Henrik	Robstad	LB	Norway	30	75	184	1524
232448		Kentaro	Seki	GK	Japan	35	76	178	112836
232678		Ko	Shimura	GK	Japan	25	76	186	101144
232741		Takuya	Matsuura	LM	Japan	32	64	167	101144
232820		Kosuke	Yamamoto	CM	Japan	31	79	179	101144
233283	Jo Ju Young	Ju Young	Jo	ST	Korea Republic	27	80	186	110765
233782		Morgan	Feeney	CB	England	22	77	190	7
234473		Delphin	Tshiembe	CDM	Denmark	30	85	188	184
234615		Réda	Rabeï	CAM	France	27	77	179	1816
234831		Nico	Rieble	LB	Germany	25	80	183	27
235123		Andrés	Iniestra	CM	Mexico	25	79	176	1881
235397		Nick	Freeman	LW	England	25	78	180	1933
235618		Kane	Wilson	RB	England	21	71	178	1803
235980		Iván	Morales	ST	Chile	22	76	180	110980
236554		Justin	Möbius	CAM	Germany	24	73	178	1832
236661		Florian	Baak	CB	Germany	22	75	185	166
236875		Andreas	Poulsen	LB	Denmark	21	80	188	23
237102	Lee Sang Ki	Sang Ki	Lee	RB	Korea Republic	25	79	179	1474
237428		Shogo	Nakahara	CM	Japan	27	68	177	112448
237654		Luis	Rodríguez	CB	Colombia	26	70	182	112526
237718		Steve	Ambri	ST	France	23	64	178	110456
237920		Brandt	Bronico	CM	United States	26	70	172	693
238196		Arnór	Sigurðsson	CF	Iceland	22	71	180	702
238351	Kim Dong Min	Dong Min	Kim	LB	Korea Republic	26	72	180	110765
238461	Luis Perea	Luis	Perea Hernández	CM	Spain	23	79	190	479
238689		Tim	Siedschlag	CM	Germany	33	80	181	576
239095		Jur	Schryvers	RB	Belgium	24	73	181	110913
239158		Rasmus	Minor	CB	Denmark	33	94	198	112425
239226		Juan	Torres	CDM	United States	22	71	174	2007
239341		Luke	Hemmerich	LM	Germany	23	67	180	506
239458		Bozhidar	Kraev	CM	Bulgaria	24	70	185	1516
239706		Doğan	Erdoğan	CM	Turkey	24	79	182	252
239945		Fernando	Beltrán	CM	Mexico	23	66	164	1880
240031		Eldar	Ćivić	LM	Bosnia and Herzegovina	25	76	182	267
240437		Alessandro	Semprini	RB	Italy	23	70	182	190
240638		Tijjani	Reijnders	CM	Holland	23	73	185	1906
240701		Lewis	Spence	CM	Scotland	25	75	179	180
240891		Nicolás	Sessa	CAM	Germany	25	68	170	550
241251	Longchang Lin	Longchang	Lin	CB	China PR	31	82	187	112977
241619	Huang Zichang	Zichang	Huang	RM	China PR	24	67	173	112162
241737		Birk	Risa	RW	Norway	23	76	188	1456
242018		Dayle	Grubb	RM	England	30	82	183	561
242160		Marius	Lode	CB	Norway	28	77	185	918
242202		Ferdy	Druijf	ST	Holland	23	83	190	1906
242303		Fabian	Torres	CB	Chile	32	78	180	101097
242512		Adrian	Gryszkiewicz	LB	Poland	21	81	185	420
242648		Alex	Roldan	LM	United States	25	70	178	111144
242911	Zhang Yu	Yu	Zhang	CB	China PR	27	80	188	111768
243100	Li Shuai	Shuai	Li	LB	China PR	26	70	178	112378
243395		Clint	Essers	RB	Holland	24	66	180	634
243706		Mikkel	Frankoch	CDM	Denmark	25	75	180	111660
243807		Craig	Sibbald	CAM	Scotland	26	70	170	621
244034		David	Kopacz	CAM	Poland	22	70	180	36
244166		Martin	Pribula	LM	Slovakia	35	62	168	111089
244477		Amir	Adouyev	CAM	France	22	77	184	70
244543		Yannis	Ammour	ST	France	22	70	182	70
245211		Jordan	Teze	RB	Holland	21	68	181	247
52679		Joe	Murphy	GK	Republic of Ireland	39	88	188	1945
152961		Mariusz	Pawelec	RB	Poland	35	72	180	111092
163985		Iacopo	La Rocca	CB	Italy	37	77	188	112224
177017		Malaury	Martin	CM	France	32	75	178	80
183142		Kelvin	Etuhu	CM	Nigeria	33	71	185	1480
184726		Joe	Partington	RB	Wales	31	76	188	1962
189811		James	Wallace	CM	England	29	83	180	112260
191569	Gao Di	Di	Gao	ST	China PR	31	75	178	110955
192447		Kevin	Scheidhauer	ST	Germany	29	85	190	162
193707		Sam	Habergham	LB	England	29	73	183	149
198927		Tom	Miller	RWB	England	31	72	176	1945
201052		Florian	Rüter	RM	Germany	31	75	180	167
202244		Bryan	Meredith	GK	United States	32	94	188	111144
203430		George	Ray	CB	Wales	27	71	193	121
204151		Damian	Byrtek	CB	Poland	30	84	193	111086
204881		Papa Demba	Camara	GK	Senegal	28	70	195	1805
206217		Henrik Kjelsrud	Johansen	ST	Norway	28	84	183	919
207828		Cole	Stockton	ST	England	27	75	186	15048
208771		Garry	Buckley	CAM	Republic of Ireland	27	75	185	422
209552		Yahya	Otayn	CDM	Saudi Arabia	30	73	184	112392
210149		Mohammed	Majrashi	ST	Saudi Arabia	30	72	180	112389
210495		Abdullah	Al Harbi	CB	Saudi Arabia	32	72	177	113222
211011		Christopher	Dilo	GK	France	27	87	189	111817
211259		Ali Hissain	Khormi	RM	Saudi Arabia	30	58	160	113222
212693		Tim	Söderström	CM	Sweden	27	76	188	111705
213687		Liam	Grimshaw	CM	England	26	83	180	83
214478		Sebastián	Ayala	CDM	Colombia	25	78	181	101105
229156		Stef	Gronsveld	RB	Holland	25	60	173	100628
229355		Ariajasuru	Hasegawa	CM	Japan	32	78	186	112092
229781		Yusuf	Çoban	ST	Germany	24	77	179	113142
230163		Adam	Frizzell	CAM	Scotland	23	67	175	82
230916		Luca	Zanon	LB	Italy	25	71	177	110374
231661		Moataz	Tombakti	CDM	Saudi Arabia	27	82	180	113219
231834		Nico	Rinderknecht	CM	Germany	23	77	182	111239
231951		Randell	Williams	RW	England	24	76	173	1933
232338	Han Hee Hoon	Hee Hoon	Han	CB	Korea Republic	30	78	183	2056
232477		Sultan Abdullah	Al Ghannam	RB	Saudi Arabia	27	62	174	112139
232686		Nagisa	Sakurauchi	RM	Japan	31	73	176	101144
232892		Yudai	Tanaka	LWB	Japan	32	68	169	112444
232977		Ryo	Shinzato	CB	Japan	31	70	184	101144
233394	Huang Zhengyu	ZhengYu	Huang	CB	China PR	24	73	178	112429
233736		Juan Pablo	Ramírez	CM	Colombia	23	76	182	101100
234241		Beryly	Lubala	CAM	Congo DR	23	73	177	88
234629		Kristian	Dirks Riis	CB	Denmark	24	84	187	1445
235018		Moritz	Nicolas	GK	Germany	23	87	193	23
235147		Trevor	David	RB	Holland	24	70	180	650
235465	Seo Young Jae	Young Jae	Seo	LB	Korea Republic	26	72	182	1825
235607		Tony	Rocha	LB	United States	27	75	175	112606
236043		Daniel	Batty	CM	England	23	73	178	1952
236474		Mustapha	Bundu	ST	Sierra Leone	24	80	188	271
236649		Yanick	van Osch	GK	Holland	24	73	183	247
236813		Quentin	Depehi	ST	France	24	64	175	62
236902	Esteve	Esteve	Monterde Torrents	CM	Spain	25	70	180	1867
237382		Filippo	Melegoni	CM	Italy	22	74	186	200
237543		Marios	Siabanis	GK	Greece	21	82	187	393
237781		Kota	Fujimoto	CB	Japan	35	76	177	101148
238071		Dujon	Sterling	RWB	England	21	81	186	1800
238271		Pál	Dárdai	LM	Germany	22	63	175	166
238581		Ruben	Vargas	LW	Switzerland	23	68	174	897
238918		Omar Ibrahim	Hawsawi	CB	Saudi Arabia	28	78	178	113219
239149		Bernard	Kyere	CB	Ghana	26	89	188	110169
239338		Ali	Ibrahimaj	RM	Germany	29	74	180	167
239620		Jorge	Cruz	CB	Mexico	22	78	184	1970
239741		Julio	Villalba	ST	Paraguay	22	65	174	23
239815		Zotsara	Randriambololona	CAM	Madagascar	27	75	178	230
240001		Sofiane	Ahmed-Kadi	RW	France	24	70	177	110373
240216		Marco	Carraro	CM	Italy	23	74	187	110911
240529	Rayco	Rayco	Rodríguez Medina	CAM	Spain	24	65	178	110831
240647		Vincent	Bezecourt	CAM	France	28	68	170	689
240787		Hamed Junior	Traorè	CAM	Côte d'Ivoire	21	65	172	1746
240888		Trevor	Doornbusch	GK	Holland	22	80	188	1913
241334	Liu Yiming	Yiming	Liu	CB	China PR	26	82	190	112983
241575		Mats	van Kins	CAM	Holland	22	68	182	650
241809		Turki	Al Ammar	CM	Saudi Arabia	21	68	170	111674
242015	Nam Seung Woo	Seung Woo	Nam	CAM	Korea Republic	29	80	179	112115
242147		Wilson	Piñones	CDM	Chile	33	70	176	112535
242183		David	Otto	ST	Germany	22	82	185	10029
242257	Jon Bakero	Jon	Bakero	CF	Spain	24	75	191	111651
242291		Kai	Brünker	ST	Germany	27	78	190	1804
242499		Daniel	Smuga	ST	Poland	24	78	182	420
242714		Chris	Mueller	RM	United States	24	74	175	112606
242980		Meritan	Shabani	CAM	Germany	22	72	185	21
243125		Simon	Strand	RB	Sweden	28	70	175	113876
243526		Mert	Müldür	CB	Turkey	22	75	185	254
243735		Avdo	Spahic	GK	Bosnia and Herzegovina	24	77	190	162
243914		Efkan	Bekiroglu	CAM	Germany	25	76	185	33
244120		Sébastien	Rénot	GK	France	31	80	185	111273
244176		Deniz	Undav	ST	Germany	25	86	178	110597
244491		Christoph	Kobald	CB	Austria	23	80	186	1832
244635		Maximilian	Pronichev	CF	Russia	21	78	183	506
244998	Bruno Michel	Bruno	Michel Santana	CAM	Brazil	22	71	166	113219
18745		Mark	Tyler	GK	England	44	83	183	1938
148700		Azar	Karadas	ST	Norway	39	88	189	919
163731		Ryan	Harley	LM	England	36	70	175	1798
176737		Björn	Ziegenbein	RM	Germany	35	72	174	162
182076	Liu Zhenli	Zhenli	Liu	GK	China PR	36	74	194	111724
189231		Philip	Hellquist	ST	Sweden	30	73	184	111705
189813		Mario	Pacilli	CF	Italy	34	70	173	347
191806	Liao Bochao	Bochao	Liao	RB	China PR	34	70	180	111774
192898		Sander	Puri	CAM	Estonia	33	65	178	753
198039		Mark	Gillespie	GK	England	29	88	192	83
200781		Conor	Thomas	CM	England	27	72	185	1936
202544		Christer	Reppesgård	CB	Norway	28	84	187	1757
203569		Joel	Chianese	RM	Australia	31	75	176	111399
204291		Adil	Nabi	ST	England	27	70	175	180
205932		Jeppe	Illum	ST	Denmark	29	75	186	111660
208009		Wesley	Jobello	LM	France	27	68	179	110316
209040		Majed	Hazazi	RB	Saudi Arabia	33	57	167	112390
209935		Declan	Gallagher	CB	Scotland	30	86	196	621
210773		Kasper	Skaanes	CM	Norway	26	61	175	1524
211594		Greg	Leigh	LB	England	26	73	181	1904
212923		Scott	Galloway	RB	Australia	26	72	176	111393
213519		Brad	Walker	CM	England	25	80	186	121
214634		Jake	Hessenthaler	CM	England	27	64	176	92
215968		Maximilian	Reule	GK	Germany	27	84	188	111379
216453		Liam	Shephard	RB	Wales	26	67	178	561
218057		Janik	Jesgarzewski	RB	Germany	27	75	180	110597
220584		Viljar	Myhra	GK	Norway	25	94	194	1456
221386		Jordan	Allen	LW	United States	26	72	178	111065
221847		Muzepper	Mirahmetjan	CM	China PR	30	72	182	111774
222199	Zheng Kaimu	Kaimu	Zheng	CB	China PR	29	80	185	112977
222449	Cao Haiqing	Haiqing	Cao	RB	China PR	27	69	174	112162
223404		Alex	Fisher	ST	England	31	80	191	346
223717		Dorukhan	Toköz	CM	Turkey	25	75	180	327
229062		Ian	McShane	CM	Scotland	28	64	175	100805
229513		Julius	Ertlthaler	CAM	Austria	24	62	169	1785
229676		Brandon	Haunstrup	LB	England	24	75	172	1790
229881		Ariel	Lassiter	ST	Costa Rica	26	70	178	697
230631		Marco	Festa	GK	Italy	29	85	190	110734
231284		Ryan	Delaney	CB	Republic of Ireland	24	72	188	1955
231753		Jérémy	Livolant	CAM	France	23	70	175	212
231865		Lukas	Lämmel	CM	Germany	23	70	179	550
232014		Michael	Salazar	RM	Belize	28	82	180	111139
232256	Han Pengfei	Pengfei	Han	CB	China PR	28	88	190	112977
232515		Facundo	Cobos	LB	Argentina	28	83	178	111706
232722		Shun	Morishita	CB	Japan	35	71	178	101144
232823		Hayao	Kawabe	CM	Japan	25	70	178	113157
233165		Myles	Beerman	LB	Malta	22	66	177	86
233382	Seol Tae Soo	Tae Soo	Seol	CAM	Korea Republic	26	60	172	1473
233934		Aaron	Ramsdale	GK	England	23	77	188	1943
234207		John	Kitolano	LWB	Norway	21	65	174	110
234586		Dhaifallah	Al Qarni	CDM	Saudi Arabia	32	69	168	113057
234901		Nicklas	Shipnoski	RM	Germany	23	68	184	492
235121		Bryan	Lozano	RW	Mexico	24	54	167	1881
235311		Mario	Briceño	RW	Chile	25	75	180	112655
235600		Bandar	Al Mutairi	LB	Saudi Arabia	31	50	168	112990
235656		Waleed Hezam	Al Anazi	CM	Saudi Arabia	26	68	168	111674
236047		Albin	Granlund	LWB	Finland	31	79	179	705
236626		Johnny	Koutroumbis	CB	Australia	23	73	183	111398
236675		Kilian	Jakob	LB	Germany	23	74	183	100409
236824		Ramón	ten Hove	GK	Holland	23	75	193	246
237143		Harlin	Suárez	CDM	Colombia	27	66	171	112528
237447	Lucas	Lucas	Alves de Araujo	CB	Brazil	29	89	193	897
237580		Daniel	Schmidt	GK	Japan	29	90	196	112836
237747		Takuma	Arano	CAM	Japan	28	60	180	112444
238108	Jiang Tao	Tao	Jiang	RB	China PR	32	76	182	111768
238208		El-Hadji Gana	Kane	CB	Senegal	26	78	190	1757
238460		Rhian	Brewster	ST	England	21	75	176	9
238616	Pedro Neto	Pedro	Lomba Neto	ST	Portugal	21	63	172	46
239078		Stefan	Schimmer	ST	Germany	27	75	185	172
239182		Moritz	Fritz	CB	Germany	28	84	192	110169
239259		Rocky	Bushiri	CB	Belgium	21	91	187	2013
239582		Patrick	Puchegger	LB	Austria	26	79	188	112075
239702		Marvin	Kleihs	RWB	Germany	27	71	178	110197
239776		Jannes	Hoffmann	CM	Germany	25	72	179	111379
239995		Pablo	López	LM	Mexico	23	61	168	110147
240258		Opa	Sanganté	CM	Senegal	30	87	188	212
240628		Dario	Šarić	CM	Bosnia and Herzegovina	24	70	180	112409
240660		Mehdi	Léris	ST	France	23	78	186	192
240807		Oli	Shaw	ST	Scotland	23	72	188	81
240941		Lenny	Pintor	ST	France	21	66	179	378
241339	Zhang Cheng	Cheng	Zhang	RB	China PR	32	72	180	112983
241653		Erik	Figueroa	LB	Sweden	30	79	184	111705
241935		Filip	Kusić	CB	Serbia	25	78	183	506
242128		Takashi	Sawada	RW	Japan	30	63	170	112448
242181	Neto Borges	Vivaldo	Neto	LB	Brazil	24	85	183	708
242212		Luke	Hannant	CM	England	27	67	180	1928
242308		Ibrahim	Chenihi	LM	Algeria	31	75	177	112390
242542		Aaron	Herrera	LB	United States	24	70	180	111065
242661		Haroune	Camara	ST	Saudi Arabia	23	81	184	112391
242766		Niki	Jackson	ST	United States	25	78	186	694
242998	Klauss	João	Klauss de Mello	ST	Brazil	24	85	190	100325
243282		Dwight	McNeil	LM	England	21	68	183	1796
243567		Sam	Barratt	LM	England	25	65	188	1954
243881		Connor	Krempicki	CM	Germany	26	74	178	167
244026		Herbert	Paul	RB	Germany	27	79	187	33
244133		Alexander	Rossipal	LB	Germany	25	77	184	110178
244456		Martin	Erlic	CB	Croatia	23	78	192	110741
244600		Jordan	van der Gaag	CAM	Holland	22	70	177	1904
244708		Kevin	Goden	RB	Germany	22	78	183	171
245491		Pietro	Beruatto	LB	Italy	22	78	184	45
48722		Junichi	Inamoto	CDM	Japan	41	77	181	112444
140164		Yosgart	Gutiérrez	GK	Mexico	40	86	189	101121
163212		Scott	Boyd	CB	Scotland	35	75	188	82
169481		Eddie	Nolan	CB	Republic of Ireland	33	77	185	121
178626		Joe	Thompson	RM	England	32	60	183	1955
182489		Scott	Davies	GK	England	34	70	183	15048
186188		Rhys	Taylor	GK	Wales	31	83	185	1959
191336		Shunsuke	Ando	GK	Japan	30	79	185	111730
192580		Jake	Kelly	LM	Republic of Ireland	31	73	183	838
194791		Ronan	Murray	ST	Republic of Ireland	29	70	170	837
199908		Felicio	Brown Forbes	ST	Costa Rica	29	82	189	111083
202502	Kim Byeong Oh	Byeong Oh	Kim	LW	Korea Republic	32	85	183	2055
203504		Aaron	Amadi-Holloway	ST	Wales	28	83	188	127
203834	Yun Ju Tae	Ju Tae	Yun	ST	Korea Republic	31	78	181	2055
204814		Niclas	Erlbeck	CM	Germany	28	79	184	110591
205331	Zhang Jiaqi	Jiaqi	Zhang	CDM	China PR	29	75	192	112429
208457		Adama	Sarr	ST	Senegal	30	66	174	111817
209169		Hussain	Al Shuwaysh	CB	Saudi Arabia	32	81	183	112392
210264		Thomas	Vollnhofer	GK	Austria	36	75	179	112075
210690		Pål Vestly	Heigre	GK	Norway	26	88	188	922
211237		Samir	Ramizi	RM	Kosovo	30	70	182	435
211667		Patryk	Stępiński	LB	Poland	26	62	178	1569
212038		Abdullah	Al Jadani	GK	Saudi Arabia	30	64	180	112408
212960	Jung Seon Ho	Seon Ho	Jung	CDM	Korea Republic	32	78	182	2056
214039		Nelson	Lemus	RB	Colombia	32	79	183	112526
215489		Maxence	Derrien	CB	France	27	77	181	111273
215693		Thomas	Mikkelsen	GK	Denmark	37	83	190	272
216473		Ted	Smith	GK	England	25	76	185	1954
218661		Jake	Flannigan	CM	England	25	71	180	17
220328		Sylvanus	Nimely	ST	Liberia	22	75	178	100767
229508		Sven	Sprangler	CM	Austria	26	68	182	111822
229756		Steffen	Nkansah	CB	Germany	25	78	188	110500
229970		Ludovic	Soares	LB	France	27	68	175	1815
230534		Stephané	Mvibudulu	ST	Congo DR	28	82	188	111379
230928		Alexander	Sorge	CB	Germany	28	82	192	110592
231711		Carlos	Pérez	CB	Colombia	26	79	185	112579
231929		George	Miller	ST	England	22	64	178	1804
232023		Akseli	Pelvas	ST	Finland	32	77	180	100325
232444		Nicola	Falasco	LB	Italy	27	83	186	199
232558		Izuchukwu	Anthony	CB	Nigeria	23	90	187	1463
232680		Abdulkarim	Al Qahtani	RM	Saudi Arabia	28	65	171	113057
232776		Yuzo	Kobayashi	RB	Japan	35	72	176	113160
232919		Naoyuki	Fujita	CM	Japan	34	72	176	101146
233171		Toshiki	Ishikawa	CDM	Japan	30	66	174	113161
233426		Anthony	Georgiou	LM	Cyprus	24	73	179	18
233969		Fynn	Arkenberg	CB	Germany	25	80	185	110482
234489		Frederik	Gytkjær	ST	Denmark	28	75	180	1463
234671		Jens	Odgaard	ST	Denmark	22	82	188	111974
235089		Yuki	Nogami	CB	Japan	30	72	180	113157
235457		Vegard	Leikvoll Moberg	CM	Norway	30	85	190	918
235932		Ataberk	Dadakdeniz	GK	Turkey	22	84	194	742
236315		Alfie	Jones	CB	England	23	70	182	100805
236556		Martin	Hongla	CB	Cameroon	23	77	182	110832
236721		Lamine	Fomba	CDM	France	23	69	186	57
237008		Yusuf	Çelik	CB	Turkey	25	70	176	741
237248		Germán	Berterame	RM	Argentina	22	72	178	1013
237496		Djordje	Mihailovic	CM	United States	22	69	178	693
237683		Nathan	Holland	LM	England	23	70	178	19
237789		Yasuki	Kimoto	CB	Japan	28	73	183	101148
238104	Zhu Jianrong	Jianrong	Zhu	ST	China PR	30	82	185	110955
238238		Jan-Marc	Schneider	ST	Germany	27	79	178	110329
238587		Ahmed	Ildız	CDM	Turkey	24	81	181	113259
238962		Maximilian	Bauer	RB	Germany	26	76	175	172
239174		Mike	Owusu	RM	Germany	26	77	190	111379
239244		Adrian	Danek	RM	Poland	27	66	180	110747
239605		Moussa	Diallo	ST	Senegal	30	79	183	2013
239746		Lukas	Watkowiak	GK	Germany	25	107	197	492
239909		Dominik	Pelivan	CDM	Germany	25	73	184	111379
240027		Albion	Vrenezi	ST	Kosovo	27	65	177	543
240312		Issouf	Paro	CB	Burkina Faso	26	79	184	1813
240600		Ali Hassan	Al Asmari	CM	Saudi Arabia	24	74	185	113219
240665	Carlos Gracia	Carlos Moros	Gracia	CB	Spain	28	80	183	1596
240901	Idrisa Sambú	Idrisa	Sambú	LW	Portugal	23	78	180	111560
241237		Franck	Kanoute	CM	Senegal	22	78	186	200
241403		Abdoulaye	Dabo	CM	France	20	74	181	71
241695		Jonathan	Amon	LW	United States	22	71	175	1788
241970		Harrison	Delbridge	CB	Australia	29	93	193	112224
242159	Ricardo Friedrich	Ricardo	Schuck Friedrich	GK	Brazil	28	83	188	918
242254		Eirik	Valla Dønnem	CDM	Norway	31	80	183	112200
242275		Arbey	Mosquera	ST	Colombia	33	82	189	112523
242328		Niclas	Stierlin	CDM	Germany	21	74	182	112172
242660		Jordan	Beyer	RB	Germany	21	80	187	23
242767		Luca	Napoleone	CAM	Belgium	27	76	181	111560
243052		Henrik	Löfkvist	CB	Sweden	26	76	186	113876
243311	Josep Martínez	Josep	Martínez Riera	GK	Spain	23	80	191	472
243703		Emmanuel	Ogude	ST	Nigeria	27	71	180	111660
243889		Luka	Luković	CM	Serbia	24	78	189	111560
244047		Liban	Abdulahi	CM	Holland	25	60	178	635
244171		Junior	Torunarigha	ST	Germany	31	90	191	111089
244283		Marvin	Büyüksakarya	RB	Germany	26	70	172	550
244608	Carlitos	Carlos Miguel	Tavares de Oliveira	LM	Portugal	28	65	174	1569
244923		Johan	Branger-Engone	LM	Gabon	28	74	183	1920
13883		Danny	Whitaker	CM	England	40	73	178	1959
138719		Chris	O'Grady	ST	England	35	78	191	1920
156481		Teruyuki	Moniwa	CB	Japan	39	82	181	101148
170252		Alex	Nicholls	ST	England	33	70	178	121
174199		Steven	Old	CB	New Zealand	35	85	190	357
180753		Mark	Bridge	LW	Australia	35	80	180	112427
183542		Mikey	Drennan	ST	Republic of Ireland	27	81	179	563
186646		Naoya	Kikuchi	CB	Japan	36	74	181	112444
190240		Scot	Bennett	CB	England	30	81	178	112254
192154		Josh	Payne	CM	England	30	74	183	110890
193943		Jordan	Cook	CAM	England	31	80	175	92
198990		Ryan	Brennan	CM	Republic of Ireland	29	72	180	423
202014		Roberto	Lopes	CB	Republic of Ireland	29	79	186	306
202594		Steven	Beattie	RB	Republic of Ireland	32	70	178	422
203357		Dan	Potts	LB	England	27	70	172	1923
204437		Andrea	Tozzo	GK	Italy	28	75	192	206
205160		Joe	Davis	CB	England	27	67	183	1928
207528		Ross	Fitzsimons	GK	England	27	75	185	1937
208697		Danny	Rogers	GK	Republic of Ireland	27	77	185	100805
209065		Malkom	Moënza	LWB	Sweden	27	75	180	113876
209893		Jacob	Pepper	CB	Australia	29	75	180	111395
210901		Fahad Ayed	Al Johani	RM	Saudi Arabia	29	67	176	112990
211438		Marco	Bürki	CB	Switzerland	28	79	181	15005
211888		Marius	Willsch	RM	Germany	30	72	180	33
212939		David	Douline	CDM	France	28	80	182	1815
213698		Jack	Barmby	CAM	England	26	74	178	111140
216299		Connor	Randall	RB	England	25	76	180	1955
216656		Jerome	Sinclair	ST	England	24	79	181	106
219260		Felix	Dornebusch	GK	Germany	27	89	193	160
221281		Dominic	Hyam	CB	Scotland	25	70	188	1800
221447		Jalen	Robinson	CB	United States	27	65	175	688
221850	Li Songyi	Songyi	Li	RB	China PR	28	71	183	111724
222233	Zhou Yun	Yun	Zhou	RB	China PR	30	75	183	112162
222372		Davide	Cinaglia	RB	Italy	27	75	183	111434
222997		Marcus	Maier	CM	Austria	25	63	176	111821
229998		Dominik	Schad	LB	Germany	24	70	176	29
230839		Zak	Jules	CB	Scotland	24	72	190	127
231556		Tino	Schmidt	RM	Germany	27	67	174	110700
231863		Yan	Dhanda	CAM	England	22	65	173	1960
231944	Woo Chan Yang	Chan Yang	Woo	LB	Korea Republic	24	66	181	1474
232127		Aboubakar	Keita	CM	Côte d'Ivoire	23	70	188	917
232455		Hiroshi	Futami	CB	Japan	29	75	179	101149
232567		Kazunari	Ono	CB	Japan	32	75	180	113161
232752		Shingo	Hyodo	CM	Japan	36	68	172	112444
232910		Shohei	Takahashi	CB	Japan	29	70	180	101144
233169		Miki	Yamane	CB	Japan	27	69	178	113161
233728		Mamadou	Doucouré	CB	France	23	78	183	23
234158		Alimami	Gory	RM	France	24	72	182	1738
234537		Teddy	Bouriaud	CDM	France	24	66	175	71
234649		Danijel	Petrovic	CB	Serbia	28	80	185	112075
234993		Dele	Alampasu	GK	Nigeria	24	78	199	10019
235215		Giovanni	Crociata	CAM	Italy	23	67	174	110734
235476		Ivan	Varone	CM	Italy	28	74	184	112168
235842		Andrea	Pinamonti	ST	Italy	22	72	188	111657
236490		Kelvin	Arase	RM	Austria	22	62	172	254
236627		Julius	Kade	CAM	Germany	22	67	181	166
236750		Sondre	Sørli	LM	Norway	25	67	178	113459
236938		Mallik	Wilks	LW	England	22	71	183	142
237249		Daniel	Johnson	RM	United States	25	64	175	693
237622		Nicolás	Roa	RWB	Colombia	27	70	181	101102
237745		Hiroki	Miyazawa	CM	Japan	32	72	182	112444
237882		Lasha	Parunashvili	CDM	Georgia	28	72	181	1445
238165		Stefan	Antonijevic	CB	United States	32	88	198	299
238214		Marcus	Degerlund	CB	Sweden	23	80	194	319
238611		Hasan	Bilal	LM	Turkey	23	70	175	111339
238769		Christian	Huérfano	RM	Colombia	25	64	175	101105
239134		Nama	Fofana	RWB	France	31	78	183	212
239208		Danny	Newton	ST	England	30	75	178	361
239337		Robert	Herrmann	RM	Germany	27	72	181	506
239451		Kévin	Appin	RW	France	23	71	177	1750
239636		Ayo Simon	Okosun	CM	Denmark	28	85	197	1516
239775		Fabian	Senninger	LB	Germany	25	70	175	110597
239990		Tom	Broadbent	CB	England	29	90	190	1962
240053		Rayane	Aabid	RM	France	29	71	178	113948
240633		Joseph	Champness	LM	Australia	24	80	189	111398
240755		Pierre-Daniel	Nguinda	RB	Cameroon	25	80	184	1750
240921		Ronald	Hernández	RB	Venezuela	23	67	171	917
241250		Festus	Baise	CB	Hong Kong	41	72	173	112977
241343	Qiu Tianyi	Tianyi	Qiu	CB	China PR	32	82	192	111774
241680		Fritiof	Björkén	RB	Sweden	30	70	181	111705
241913		Aleksander	Foosnæs	LB	Norway	27	69	172	112200
242102		Florian	Mayer	CB	Germany	23	87	191	23
242172		Furkan	Motori	LM	Sweden	25	63	171	703
242238		Oumar	Solet	CB	France	21	81	192	66
242265		Michael	Obafemi	ST	Republic of Ireland	21	71	169	17
242312		Abdulfatah	Adam	ST	Saudi Arabia	26	72	178	112393
242562		Jasper	van der Werff	CB	Switzerland	22	75	188	191
242734		Wyatt	Omsberg	CB	United States	25	81	193	111138
242965		Fraser	Hornby	ST	Scotland	21	77	188	7
243132		Ruben	Droehnle	CB	France	23	74	183	112276
243478		Enzo	Loiodice	CM	France	20	62	176	110569
243745	Marcelo Freitas	Marcelo	de Freitas Costa	CM	Brazil	27	76	183	162
243909		Aboud	Omar	LB	Kenya	28	70	175	1750
244112		Daniel-Kofi	Kyereh	ST	Ghana	25	73	179	492
244246		Anderson	López	RW	Holland	22	73	175	1750
244538		Sebastian	Bauer	CB	Austria	28	75	183	111821
244652		Kazuaki	Mawatari	RB	Japan	30	70	175	113157
245037	Eric García	Eric	García Martret	CB	Spain	20	79	182	10
19410		Alex	Revell	ST	England	38	78	191	361
138091		Anders	Egholm	CB	Denmark	38	86	189	1447
152746		Paul	Keegan	CM	Republic of Ireland	37	73	178	753
164647		Steinar Ryen	Strømnes	CB	Norway	34	75	186	917
172944		Giles	Coke	CM	England	35	79	183	1920
180181		Kenny	Browne	CB	Republic of Ireland	35	86	191	753
180755		Tando	Velaphi	GK	Australia	34	75	186	111399
183807		Pádraig	Amond	ST	Republic of Ireland	33	75	181	112254
186842		Dougie	Imrie	RM	Scotland	38	74	173	184
190200		Tom	Taiwo	CM	England	31	70	170	184
191897	Kim Young Sin	Young Sin	Kim	CAM	Korea Republic	35	66	174	112115
193164		Eduardo	Fernández	GK	Mexico	28	77	191	1970
198132		David	Oberhauser	GK	France	30	82	186	110316
200593	Ha Sung Min	Sung Min	Ha	CDM	Korea Republic	34	78	184	111588
202528		Josh	Ruffels	CM	England	27	75	178	1951
203292		Oliver	Turton	RB	England	28	75	180	1926
203615		Tobias	Kainz	RB	Austria	28	70	174	2017
204725	Lee Bum Soo	Bum Soo	Lee	GK	Korea Republic	30	85	190	111588
205877		Mitch	Hancox	LM	England	27	71	178	1798
208037		Martin	Harrer	LM	Austria	29	76	184	2045
208797		Luke	Gambin	LM	Malta	28	70	168	1923
209842	Christovao	Alexander Domin	Christovao M'Futila	RM	Angola	28	85	186	111089
210474		Philipp	Erhardt	CDM	Austria	27	69	185	1785
210925		Saqer	Otayf	ST	Saudi Arabia	30	66	171	112392
211434		Yuji	Takahashi	CB	Japan	28	78	187	113160
212045		Casper	Højer Nielsen	LB	Denmark	26	77	183	271
212964	Jo Soo Chul	Soo Chul	Jo	CM	Korea Republic	30	69	180	2055
221332		Guido	Guerrieri	GK	Italy	25	78	184	46
221759	Kim Gyeong Min	Gyeong Min	Kim	GK	Korea Republic	29	81	189	1478
221852	Liu Yang	Yang	Liu	CB	China PR	30	78	188	112537
222118	Zhang Chenglin	Chenglin	Zhang	RB	China PR	34	76	183	111839
222622	Hui Jiakang	Jiakang	Hui	LW	China PR	32	75	180	111774
222829		Svend	Brodersen	GK	Germany	24	83	188	110329
226094		Shannon	Brady	RW	Australia	25	64	174	111395
229031		Novem	Baumann	GK	Switzerland	25	81	185	894
230737		Tobias	Lauritsen	ST	Norway	23	70	192	1456
232518		Mateo	Matic	GK	Switzerland	25	76	185	322
233668	Zhang Yan	Yan	Zhang	GK	China PR	24	60	184	112162
234940		Aden	Baldwin	CB	England	24	70	183	1936
235811		Lewis	Morrison	ST	Scotland	22	64	177	563
237036		Ryan	Barnett	CM	England	21	70	180	127
237414		William	Popp	GK	Japan	26	89	192	111730
238465		Chris	Camwell	LB	England	22	71	179	1800
238999		Ryan	Masterson	ST	Republic of Ireland	24	64	185	305
239816		Nico	Mantl	GK	Germany	21	75	180	172
240297		Robin	Källman	GK	Finland	22	80	200	100325
240506		Frank	Arhin	CAM	Ghana	22	65	166	113173
241091		Brady	Scott	GK	United States	22	78	187	31
241207		Kenshin	Yoshimaru	GK	Japan	25	70	184	101146
241642		James	Finnerty	CB	Republic of Ireland	22	68	176	1955
242197		Marokhy	Ndione	ST	Sweden	21	75	185	700
242658		Axel	Björnström	LB	Sweden	25	65	176	113458
243128		Marcelo	Suárez	GK	Chile	20	85	186	110975
243699		Frederik	Ibsen	GK	Denmark	24	80	186	111660
243960		Moritz	Broschinski	ST	Germany	20	78	188	162
244279		Baris	Ekincier	LM	Azerbaijan	22	77	181	160
244478		Kacper	Krzepisz	GK	Poland	21	83	190	111082
244755		Mariusz	Malec	CB	Poland	26	76	189	110746
245068		Daigo	Takahashi	ST	Japan	22	53	163	101149
245269		Emad	Fadda	GK	Saudi Arabia	24	79	185	112391
245558		Gary	Maley	GK	Scotland	39	90	188	621
50568883		Abraham	Majok	LM	Kenya	22	72	185	111396
50574991		Matias	Contreras	ST	Chile	23	72	174	112584
11430		Jamie	McCombe	CB	England	38	79	196	149
220853		Jesse	Curran	CDM	Australia	25	68	172	180
226014		Aaron	Splaine	CM	Scotland	24	74	173	445
228250		Hamdan	Al Ruwaili	RB	Saudi Arabia	26	70	180	112393
230069		Ash	Kigbu	CB	England	22	73	184	111822
231243		Greg	Hurst	ST	Scotland	24	70	181	100804
232009		Dren	Feka	CDM	Kosovo	24	70	183	897
233058		Amaro	Bahtijar	CM	Sweden	22	71	176	1596
236634		Halldor	Stenevik	LW	Norway	21	70	185	919
236794		Jonas	Dakir	GK	Denmark	24	76	191	1786
238230		Jaminton	Campaz	LM	Colombia	21	68	171	111722
239192		Giles	Phillips	CB	England	24	83	187	15
239876		Yassin	Maouche	CM	France	24	71	184	894
240113		Leon	Demaj	RM	Germany	23	80	181	110597
240349		Christos	Shelis	RB	Cyprus	21	75	182	127
241293	Wang Min	Min	Wang	GK	China PR	26	85	193	112165
241327	Chen Wei	Wei	Chen	GK	China PR	23	81	187	112540
241620	Zhao Mingyu	Mingyu	Zhao	ST	China PR	24	70	180	111769
241962		Masaya	Tomizawa	GK	Japan	28	77	189	112448
242251		Tom	Amos	GK	Sweden	23	80	196	319
242617		Shunya	Yoneda	CAM	Japan	25	68	173	112448
242863		Ali	Al Hassan	CDM	Saudi Arabia	25	67	182	112390
243117	Xie Weijun	Weijun	Xie	ST	China PR	23	77	190	111774
243254		Felix	Hörberg	RM	Sweden	22	74	180	703
243730		Tom	Crawford	CAM	England	22	62	178	1937
244094		Leonard	Langhans	RM	Germany	22	58	168	110197
244310		Karol	Jaksik	RB	Poland	22	72	185	420
244534		Dariusz	Szczerbal	GK	Poland	25	81	191	111092
244811		David	Bumberger	CB	Austria	22	75	185	252
245423		Ibrahim	Al Otaibi	CM	Saudi Arabia	24	60	173	112393
245475		Dawid	Pakulski	CM	Poland	23	66	174	110749
50557634		Dylan	Mottley-Henry	RM	England	24	71	178	1932
50572344		Malachi	Napa	RM	England	22	65	166	1951
50576539		Mateusz	Żyro	CB	Poland	22	78	187	112505
211490		Jakub	Miszczuk	GK	Poland	31	76	186	110745
227770		Myles	Boney	GK	England	23	74	180	1926
232676		Naoki	Hatta	GK	Japan	35	76	185	101144
233683	Li Chen	Chen	Li	GK	China PR	24	83	190	112537
234896		Bardhec	Bytyqi	LB	Albania	24	70	180	820
235909		Hassan	Sharahili	ST	Saudi Arabia	31	64	188	112990
237736		Shunta	Awaka	GK	Japan	26	77	188	112444
238766		Jonathan	Riquelme	LB	Chile	21	72	181	111327
239196		Tim	Möller	LM	Germany	22	77	180	487
239803		Marc	Tokich	CAM	Australia	22	72	183	112427
240531		Moataz	Al Baqawi	GK	Saudi Arabia	23	71	180	112393
240703	Ning Weichen	Weichen	Ning	ST	China PR	24	75	185	111768
241203		Taiyo	Hama	CB	Japan	23	73	182	112444
241576		Colm	Walsh-O'Loghlen	LM	Republic of Ireland	22	70	178	111285
242044		Gastón	Zuñiga	RB	Chile	21	70	179	112116
242414	Yao Junsheng	Junsheng	Yao	CM	China PR	25	65	172	111724
242848	Zheng Zhiming	Zhiming	Zheng	CB	China PR	22	68	188	112429
243071	Mao Haoyu	Haoyu	Mao	ST	China PR	24	64	180	111774
243189		Takumi	Nagaishi	GK	Japan	25	86	191	101148
243720		Paweł	Sokół	GK	Poland	21	84	193	111083
244495		Dilan	Qela	CM	Switzerland	23	75	177	435
245131		Giorgi	Tsitaishvili	RM	Ukraine	20	63	171	101047
245502		Raghid	Al Najjar	GK	Saudi Arabia	24	80	186	111674
50574062	Yao Junsheng	Junsheng	Yao	CM	China PR	25	65	172	112983
213914		Jeppe	Svenningsen	CB	Denmark	26	70	184	111660
233215		Corey	Addai	GK	Ghana	23	78	193	1800
234499		Pedro	Sánchez	CM	Chile	23	63	177	112584
236343		Ben	Hedley	CM	England	22	76	178	357
236316		Yan	Valery	RB	France	22	70	180	17
236754		Jonas	Rønningen	RM	Norway	30	82	181	113459
237091	Kim Hyeon Wook	Hyeon Wook	Kim	CM	Korea Republic	26	61	160	1478
237299	Kuk Tae Jeong	Tae Jeong	Kuk	LB	Korea Republic	25	73	178	1474
237371		Leo	Bengtsson	LM	Sweden	23	65	179	708
237500		Dennis	Lippert	LB	Germany	25	63	172	171
237550		Hassan	Ndam	CB	Cameroon	22	95	193	689
237796		Toshiki	Onozawa	LM	Japan	23	62	166	101148
238234		Ayman	Al Khulaif	RM	Saudi Arabia	24	60	166	112387
238516		Leo	Østigård	CB	Norway	21	80	182	1808
238669		Sven	Kopp	CB	Germany	26	88	198	543
238913		Mohammed Mohsen	Harzan	LM	Saudi Arabia	32	65	167	112393
238969		Ross	Laidlaw	GK	Scotland	29	85	201	81
239553		Tom	Bayliss	CM	England	22	78	183	1800
239731		Maciej	Ambrosiewicz	CM	Poland	23	75	184	420
240100		Tommaso	Augello	LB	Italy	26	70	180	110741
240327		Mohammed	Al Bishi	ST	Saudi Arabia	33	63	166	113222
240926		Nathaniel	Phillips	CB	England	24	70	188	9
241172	Diego Barri	Diego	Hernández Barriuso	CDM	Spain	25	81	188	1854
241382		Rayhaan	Tulloch	ST	England	20	60	178	109
241688		Abdurrahim	Dursun	LB	Turkey	22	70	177	436
241995		Lars	Dietz	CDM	Germany	24	79	190	1831
242105		Matvei	Igonen	GK	Estonia	24	78	186	299
242263		Malte	Amundsen	LB	Denmark	23	81	179	110500
242458		Artem	Dovbyk	ST	Ukraine	24	76	185	1516
242573		Déiber	Caicedo	RM	Colombia	21	65	166	101102
242777		Kazuma	Yamaguchi	ST	Japan	25	70	175	101147
242925	Park Hyeong Jin	Hyeong Jin	Park	LM	Korea Republic	31	75	183	983
243308	Álex Dos Santos	Alejandro	Dos Santos Ferreira	GK	Brazil	22	78	185	240
243576	Pedro Porro	Pedro Antonio	Porro Sauceda	RB	Spain	21	70	176	110062
243698		Luca	Meisl	CB	Austria	22	80	184	112075
243808		Haroon	Eisa	ST	Burkina Faso	28	78	188	113219
243954		Ahmed	Mostafa	LM	Egypt	23	63	169	674
244009		Michael	Schüler	CB	Germany	24	80	187	110591
244085		Aygün	Yildirim	ST	Germany	26	75	180	110700
244189		Fahd	El Khoumisti	ST	France	28	75	180	112276
244408		Sékou	Baradji	ST	France	25	72	174	111273
244536		Gold	Omotayo	ST	Switzerland	27	89	193	1945
244941		Manfred	Fischer	RM	Austria	26	73	179	15009
50484394		Paul	Keegan	CM	Republic of Ireland	37	73	178	838
50540445		Luke	Gambin	LM	Malta	28	70	168	110890
50547947		Connor	Randall	RB	England	25	76	180	9
50555471		Timo	Königsmann	GK	Germany	24	86	184	550
50558470		Callum	Roberts	RM	England	24	65	173	1935
50559301		Earl	Edwards Jr.	GK	United States	29	93	191	688
50560049		Kyle	Howkins	CB	England	25	81	195	1928
50564154		Takuya	Masuda	GK	Japan	32	84	184	113157
50564699		Luke	Bolton	RM	England	21	72	174	1933
50567447		Abdoulaye	Sissako	CM	France	23	77	185	212
236471		Markus	Kaasa	CM	Norway	24	60	175	1456
236757		Patryk	Klimala	ST	Poland	23	76	183	110745
237030	Lee Jeong Bin	Jeong Bin	Lee	CAM	Korea Republic	26	65	174	110765
237255		Miles	Robinson	CB	United States	24	84	188	112885
237356		Alexander	Nilsson	RW	Sweden	30	76	180	111705
237411		Mujahid	Al Mania	ST	Saudi Arabia	25	73	185	113222
237605		Hasan Ali	Adıgüzel	CM	Turkey	21	78	177	111340
237800		Ryuji	Sawakami	ST	Japan	27	77	181	101148
238360		Lachlan	Wales	LM	Australia	23	74	180	112224
238558		Tobias	Warschewski	ST	Germany	23	80	187	531
238793		Thore	Jacobsen	LB	Germany	24	76	182	38
238949		Firat	Sucsuz	LB	Turkey	25	67	172	110591
239494		Maximilian	Thalhammer	CM	Germany	24	82	191	543
239552		Maxime	Biamou	ST	France	30	83	185	1800
239656		Bartłomiej	Urbański	CM	Poland	23	68	174	1907
239810		Nicolas	Raskin	CM	Belgium	20	73	177	674
240026		Anthony	Fontana	CAM	United States	21	68	173	112134
240616		Elvis	Bwomono	RB	England	22	63	175	1954
241165		Emmanuele	Cicerelli	LW	Italy	26	60	177	110911
241191		Marko	Kolar	ST	Croatia	26	77	185	1873
241408		Marwin	Reuvers	CAM	Holland	22	70	183	1904
241812		Lars	Kramer	CB	Holland	22	80	192	1915
242022		Laurent	Mendy	ST	Senegal	22	78	184	230
242253		Mason	Toye	ST	United States	22	82	191	111138
242334		Jaylin	Lindsey	RB	United States	21	76	173	696
242543		Oliver	Petrak	CDM	Croatia	30	83	185	111083
242640		Tobias	Christensen	CAM	Norway	21	73	178	1524
242803		Peter Godly	Michael	ST	Nigeria	23	83	186	920
243055	Rafael Camacho	Rafael Euclides	Soares Camacho	CAM	Portugal	21	65	175	9
243378		Manuel	Wintzheimer	ST	Germany	22	77	180	28
243619		Delano	Burgzorg	RM	Holland	22	76	186	635
243778		Marco	Hiller	GK	Germany	24	85	188	33
243906		Urho	Nissilä	CAM	Finland	25	65	174	15005
244007		Felix	Brügmann	ST	Germany	28	80	185	110591
244023		Heinz	Mörschel	CF	Germany	23	81	190	576
244100		Manolo	Rodas	LM	Germany	25	65	169	110592
244280		Adrian	Fein	CM	Germany	22	81	187	21
244453		Keaghan	Jacobs	CM	South Africa	31	69	173	621
244601		Sydney	van Hooijdonk	LM	Holland	21	80	186	1904
245016		Amadou	Ciss	CM	Senegal	21	70	180	634
50515190		Mikey	Drennan	ST	Republic of Ireland	27	81	179	423
50542573		Saqer	Otayf	ST	Saudi Arabia	30	66	171	113219
50544571		Scott	Galloway	LB	Australia	26	72	176	112224
50553500	Liu Yang	Yang	Liu	CB	China PR	30	78	188	111774
50557248		Abdullah	Al Ammar	LB	Saudi Arabia	27	72	177	607
50559701		Shayon	Harrison	ST	England	24	68	183	112224
50559860		Andreas	Helmersen	ST	Norway	23	82	190	298
50563261		Shawn	McCoulsky	ST	England	24	70	183	561
50564168		Diallang	Jaiyesimi	ST	England	23	72	181	1792
50564893		Shane	McLoughlin	CAM	Republic of Ireland	24	70	175	112259
236537		Gerardo	Arteaga	LB	Mexico	22	64	174	110144
236764		Ao	Tanaka	CM	Japan	22	69	177	111730
237227		Ivan	Rozas	RW	Chile	23	78	179	15029
237329		Joseph	Willock	CM	England	21	71	184	1
237378		Mihai	Dobre	RM	Romania	22	71	178	1943
237695		Miguel	Ortega	GK	Mexico	26	74	193	1970
237987	Park Dae Han	Dae Han	Park	GK	Korea Republic	25	77	183	1475
238329		Luciano	Pizarro	CM	Argentina	24	75	186	111706
238648		Felix	Geisler	CAM	Germany	24	64	168	162
238703		Arvid	Brorsson	CB	Sweden	22	81	188	705
238955		Davud	Tuma	LM	Germany	25	70	178	110482
239382		Fernando	Otárola	GK	Argentina	35	80	181	112709
239606		Lukas	Scherff	LM	Germany	25	70	175	27
239742		Jonathan	Klinsmann	GK	United States	24	84	194	166
239821		Luca	Matarese	LM	Italy	23	65	175	111657
240091		Guglielmo	Vicario	GK	Italy	24	76	188	205
240661		Emanuel	Vignato	CAM	Italy	20	68	175	192
241042		Oliver	Skipp	CDM	England	20	70	175	18
241181	Julio Gracia	Julio	Gracia Gallardo	CM	Spain	23	66	170	449
241349	Tian Yinong	Yinong	Tian	CDM	China PR	30	73	181	112162
241628		Nicholas	Pierini	LW	Italy	23	70	176	110741
241855	Genís	Genís	Montolio Lafuente	RB	Spain	25	67	175	452
242136		Usman	Mohammed	CM	Nigeria	27	76	183	112199
242260		Besim	Šerbečić	CB	Bosnia and Herzegovina	23	80	194	298
242491		Felipe	Jaramillo	CM	Colombia	25	83	184	112970
242602		Josha	Vagnoman	LB	Germany	20	86	187	28
242740	Tiago Marques	Tiago	Marques Rezende	ST	Brazil	33	78	193	1478
242883	Lee Min Soo	Min Soo	Lee	CM	Korea Republic	29	73	179	112115
243227		Gerald	Postma	CDM	Holland	23	75	180	1915
243549		Majid	Hosseini	CB	Iran	25	76	183	436
243704		Morten	Knudsen	CM	Denmark	26	70	178	111660
243847		Reo	Griffiths	ST	England	21	75	180	66
243911		Yoann	Etienne	LB	France	24	70	174	1750
244027		Kristian	Böhnlein	CDM	Germany	31	77	183	33
244095		Janik	Mäder	RM	Germany	24	70	178	110592
244219		Toshiya	Takagi	LB	Japan	28	70	177	101145
244434		Philipp	Siegl	CDM	Austria	27	75	185	2017
244529		Arton	Zekaj	CDM	Serbia	21	83	187	65
244881		Nair	Tiknizyan	LM	Russia	22	75	180	315
245265		Slimen	Kchouk	LB	Tunisia	27	72	182	898
50536979	Zhang Jiaqi	Jiaqi	Zhang	CDM	China PR	29	75	192	111839
50544341		Tim	Söderström	CM	Sweden	27	76	188	708
50548304		Jerome	Sinclair	ST	England	24	79	181	1795
50553766	Zhang Chenglin	Chenglin	Zhang	CB	China PR	34	76	183	112983
50556240		Filippo	Perucchini	GK	Italy	29	88	191	1746
50559163		Diego	Moreno	CM	Colombia	25	75	180	112528
50559796		Rushian	Hepburn-Murphy	ST	England	22	81	173	1944
50560306		Kevin	O'Connor	LB	Republic of Ireland	26	75	188	121
50563641	Chi Wenyi	Wenyi	Chi	GK	China PR	33	70	183	112978
50564576		Yoshiki	Matsushita	LM	Japan	27	67	174	112836
50568739	Kim Hyeon Wook	Hyeon Wook	Kim	CM	Korea Republic	26	61	160	112115
236596		Ibrahim	Hajtić	CB	Bosnia and Herzegovina	23	88	193	110197
236906		Carlos	Villanueva	CAM	Chile	22	68	171	110980
237307		Henry	Wingo	RM	United States	25	77	183	111144
237437		Akihiro	Hyodo	CM	Japan	39	73	180	101149
237608		Lukas	Gerlspeck	CB	Germany	22	79	186	111239
237761		Makoto	Kakuda	CB	Japan	38	78	180	101149
238105	Li Peng	Peng	Li	CB	China PR	30	80	187	110955
238519		Hamdan	Al Shamrani	LB	Saudi Arabia	24	80	180	112389
238695		Max	Barnofsky	CB	Germany	26	81	191	112409
238798		Enis	Bytyqi	ST	Kosovo	24	76	179	110197
239090		Philipp	Wiesinger	CB	Austria	27	74	181	252
239529		Frank	Onyeka	RW	Nigeria	23	70	183	1516
239623		Raúl Damián	Torres	CM	Mexico	24	58	172	1970
239682		Nicolás	Fernández	RB	Chile	22	66	170	101097
239892		Yunus	Akgün	CF	Turkey	21	65	172	325
240722	Campos	Gaizka	Campos Bahillo	GK	Spain	26	78	189	477
241102		Michael	Lercher	LB	Austria	25	69	177	1785
241217		Go	Hatano	GK	Japan	23	88	198	101150
241540		Thijmen	Goppel	RW	Holland	24	73	178	650
241736		Yann Aurel	Bisseck	CB	Germany	20	83	194	31
242004	Jeon Se Jin	Se Jin	Jeon	ST	Korea Republic	21	70	182	983
242164		Endre	Kupen	ST	Norway	31	71	172	918
242434		Curtis	Jones	CM	England	20	68	182	9
242554		Brandon	Bye	RB	United States	25	84	183	691
242678		Juan Camilo	Salazar	RM	Colombia	24	70	170	101105
242826	Lee Jae Ik	Jae Ik	Lee	CB	Korea Republic	22	76	185	112115
243172		Lubomir	Tupta	ST	Slovakia	23	72	180	206
243344		Dominik	Lanius	CB	Germany	24	85	195	531
243600		Elliott	Durrell	RW	England	32	75	178	1959
243741		Philipp	Knechtel	CB	Germany	25	81	187	162
243887		Tobias	Mohr	LB	Germany	25	78	183	165
243999		Nerciwan Khalil	Mohammad	CDM	Germany	29	68	175	167
244083		Jonas	Hofmann	CDM	Germany	24	67	171	110700
244114		Batista	Mendy	CB	France	21	82	191	71
244392		Matias	Ferreira	RB	France	24	67	173	111273
244476		Clément	Vidal	CB	France	21	75	185	70
244573		Isaác	Aguilar	CDM	Mexico	24	75	178	1879
244793		Tomáš	Chorý	ST	Czech Republic	26	101	200	110468
245209		Michal	Sadílek	CM	Czech Republic	22	61	169	247
50535482	Yun Ju Tae	Ju Tae	Yun	ST	Korea Republic	31	78	181	982
50541797		Mohammed	Majrashi	ST	Saudi Arabia	30	72	180	113219
50545687		Nelson	Lemus	RB	Colombia	32	79	183	112527
50553847	Zheng Kaimu	Kaimu	Zheng	CB	China PR	29	80	185	111774
50557234		Ben	Kennedy	RM	Northern Ireland	24	70	178	112254
50559224		Óscar	Balanta	CDM	Colombia	33	73	187	112527
50563584		Ben	White	CB	England	23	72	182	1938
50564578		Masashi	Kamekawa	LB	Japan	28	64	176	112448
236651		Brian	Koglin	CB	Germany	24	79	186	110329
237155		Silas	Gnaka	LB	Côte d'Ivoire	22	64	179	2013
237308		Seyi	Adekoya	ST	United States	25	77	180	111660
237396		Pierre	Da Silva	CAM	United States	23	66	175	112606
237506		Charlie	Owens	CM	Northern Ireland	23	62	174	15
237749		Daiki	Suga	LWB	Japan	22	69	171	112444
238056		Julien	Masson	CDM	France	23	76	182	110456
238456		Faith Friday	Obilor	CB	Nigeria	30	95	185	100325
238684		Jeremias	Lorch	CDM	Germany	25	79	188	492
238854		Olivier	Rommens	CDM	Belgium	26	64	170	1904
239096		Atakan	Karazor	CDM	Germany	24	75	190	576
239570		Alessandro	Bordin	CM	Italy	23	72	176	199
239668		Jannes	Vollert	CB	Germany	23	83	186	38
239925		Sebastian	Klaas	CAM	Germany	23	65	178	487
240274		Branislav	Pindroch	GK	Slovakia	29	90	194	1937
240738		Rashad	Muhammed	ST	France	27	82	184	112199
241075		Paul	Smyth	RM	Northern Ireland	23	67	175	15
241258	Wang Fan	Fan	Wang	LB	China PR	34	74	178	112977
241590		Patric	Pfeiffer	CB	Germany	21	91	196	28
241708		Modibo	Sagnan	CB	France	22	71	187	64
242035		Bryan	Álvarez	LB	Mexico	25	72	174	1028
242242		Sébastien	Cibois	GK	France	23	82	192	73
242402		Abo	Eisa	LW	England	24	75	180	127
242507		Nasser	Al Omran	CAM	Saudi Arabia	24	69	170	111674
242611		Kristófer Ingi	Kristinsson	LW	Iceland	22	71	190	1907
242875	Ma Xingyu	Xingyu	Ma	CM	China PR	31	77	181	111779
243157		Iván	Moreno	CAM	Mexico	23	61	167	1879
243346		Niklas	Heidemann	LB	Germany	26	80	185	531
243692		Patrick	Choroba	RB	Germany	25	75	183	111379
243797		Christian	Köppel	LB	Germany	26	79	183	33
243953		Antoine	Bernier	RW	Belgium	23	68	171	230
244078		Ivan	Franjic	CAM	Croatia	23	75	182	110500
244105		Jaber	Asiri	ST	Saudi Arabia	23	69	178	112408
244296		Emil	Riis Jakobsen	ST	Denmark	23	84	190	1786
244500		Florian	Buchacher	LB	Austria	33	79	184	2045
244658		Kazuki	Anzai	RB	Japan	27	68	172	113160
245100		Maxime	Awoudja	CB	Germany	23	86	188	21
50526439		Ronan	Murray	ST	Republic of Ireland	29	70	170	563
50540688		Majed	Hazazi	RB	Saudi Arabia	33	57	167	113219
50546126		Sebastián	Ayala	CDM	Colombia	25	78	181	112903
50550309		Jake	Flannigan	CM	England	25	71	180	15015
50555914		Calum	Dyson	ST	England	24	73	187	361
50558418		Junes	Barny	CM	Sweden	31	78	177	319
50559754		Paudie	O'Connor	CB	Republic of Ireland	24	77	191	1804
50562889		Tobias	Svendsen	CM	Norway	21	66	172	417
50564284		Ryo	Hatsuse	LB	Japan	24	64	175	101146
50565735		Callum	Styles	CM	England	21	60	167	1932
\.


--
-- Data for Name: Teams; Type: TABLE DATA; Schema: public; Owner: user_fifa
--

COPY public."Teams" (team_id, name, abbr_name) FROM stdin;
45	Juventus	Juventus
241	FC Barcelona	Barcelona
243	Real Madrid	R. Madrid
112658	Icons	Icons
73	Paris Saint-Germain	Paris
5	Chelsea	Chelsea
21	FC Bayern München	Bayern
22	Borussia Dortmund	Dortmund
10	Manchester City	Man City
11	Manchester United	Man Utd
9	Liverpool	Liverpool
240	Atlético Madrid	Atlético
1837	Sampdoria	Sampdoria
18	Tottenham Hotspur	Spurs
1	Arsenal	Arsenal
48	Napoli	Napoli
245	Ajax	Ajax
65	LOSC Lille	LOSC Lille
113160	Sagan Tosu	Tosu
697	LA Galaxy	LA Galaxy
66	Olympique Lyonnais	OL
1824	Eintracht Frankfurt	Frankfurt
32	Bayer 04 Leverkusen	Leverkusen
39	Atalanta	Atalanta
112996	Los Angeles Football Club	LAFC
23	Borussia Mönchengladbach	M'gladbach
112172	RB Leipzig	RB Leipzig
47	Milan	Milan
101146	Vissel Kobe	Kobe
246	Feyenoord	Feyenoord
44	Inter	Inter
450	RC Celta	Celta
481	Sevilla FC	Sevilla
110781	Club León	León
76	RC Strasbourg Alsace	Strasbourg
237	Sporting CP	Sporting
234	SL Benfica	Benfica
236	FC Porto	Porto
325	Galatasaray SK	Galatasar.
46	Lazio	Lazio
1860	Getafe CF	Getafe
1970	Tigres U.A.N.L.	Tigres
54	Torino	Torino
219	Olympique de Marseille	OM
224	Nîmes Olympique	Nîmes OL
483	Villarreal CF	Villarreal
461	Valencia CF	Valencia
72	OGC Nice	OGC Nice
10029	TSG 1899 Hoffenheim	Hoffenheim
191	FC Red Bull Salzburg	Salzburg
111339	Kasimpaşa SK	Kasimpaşa
111768	Beijing Guoan	B. Guoan
112139	Al Nassr	Al Nassr
38	SV Werder Bremen	Bremen
52	Roma	Roma
19	West Ham United	West Ham
55	Udinese	Udinese
247	PSV	PSV
7	Everton	Everton
101085	Racing Club	Racing Club
327	Beşiktaş JK	Beşiktaş
101014	Medipol Başakşehir FK	Başakşehir
110374	Fiorentina	Fiorentina
112429	Guangzhou R&F FC	Guangzhou
448	Athletic Club	Athletic
110062	Girona FC	Girona
819	FC København	København
101047	FC Dynamo Kyiv	D. Kyiv
1877	Buenos Aires	B. Aires
112162	Jiangsu Suning FC	Jiangsu FC
1796	Burnley	Burnley
688	D.C. United	D.C. United
112092	Nagoya Grampus	Nagoya
449	Real Betis	R. Betis
457	Real Sociedad	R.Sociedad
110147	Pachuca	Pachuca
1799	Crystal Palace	C. Palace
31	1. FC Köln	Köln
452	RCD Espanyol	Espanyol
1943	Bournemouth	B’mouth
74	Stade Rennais FC	SRFC
694	Colorado Rapids	Colorado
110	Wolverhampton Wanderers	Wolves
111839	Guangzhou Evergrande Taobao	Guangzhou
1876	River Plate	River Plate
101100	Atlético Nacional	Nacional
605	Al Hilal	Al Hilal
69	AS Monaco Football Club SA	AS Monaco
70	Montpellier Hérault SC	MHSC
112378	Dalian Yifang FC	Dalian Y.
112540	Shanghai SIPG FC	SIPG FC
86	Rangers FC	Rangers
112885	Atlanta United	Atlanta
393	PAOK	PAOK
190	Brescia	Brescia
436	Trabzonspor	Trabzon.
110975	Universidad Católica	Católica
8	Leeds United	Leeds
1819	AS Saint-Étienne	ASSE
101101	Junior FC	Junior
1879	Club América	América
95	Leicester City	Leicester
266	Slavia Praha	Slavia
112983	Tianjin Quanjian FC	Tainjin Q.
101103	Independiente Medellín	Medellín
100765	Lokomotiv Moscow	Lokomotiv
231	Club Brugge KV	Cl. Brugge
112393	Al Taawoun	Al Taawoun
1952	Hull City	Hull City
13	Newcastle United	Newcastle
326	Fenerbahçe SK	Fenerbahçe
111817	Paris FC	Paris FC
111651	Toronto FC	Toronto FC
34	FC Schalke 04	Schalke
111974	Sassuolo	Sassuolo
110980	CD Viñazur	CD Viñazur
111722	Deportes Tolima	Tolima
650	ADO Den Haag	ADO
1477	Jeonbuk Hyundai Motors	Jeonbuk
112791	SPAL	SPAL
110955	Shanghai Greenland Shenhua FC	Shanghai
111678	Club Tijuana	Tijuana
36	VfB Stuttgart	Stuttgart
2	Aston Villa	A. Villa
112606	Orlando City Soccer Club	Orlando
50	Parma	Parma
175	VfL Wolfsburg	Wolfsburg
78	Celtic	Celtic
435	Neuchâtel Xamax	Neuchâtel
919	SK Brann	Brann
1792	Norwich City	Norwich
378	Stade Brestois 29	Brest
71	FC Nantes	FC Nantes
1925	Brentford	Brentford
900	BSC Young Boys	Young Boys
101059	Shakhtar Donetsk	Shakhtar
1923	Luton Town	Luton Town
1530	Angers SCO	Angers SCO
111139	Impact Montréal	Impact
110832	Granada CF	Granada
110556	Genoa	Genoa
111710	Defensa y Justicia	Defensa
1795	Watford	Watford
111928	San Jose Earthquakes	San Jose
112387	Al Ahli	Al Ahli
1794	Sheffield United	Sheff Utd
492	SV Wehen-Wiesbaden	Wehen
1909	Vitesse	Vitesse
111674	Al Shabab	Al Shabab
607	Al Ittihad	Al Ittihad
111140	Portland Timbers	Timbers
106	Sunderland	Sunderland
111086	Piast Gliwice	Gliwice
101099	América de Cali	América
91	Derby County	Derby
112828	New York City FC	NYCFC
693	Chicago Fire Soccer Club	Chicago
1960	Swansea City	Swansea
111397	Melbourne Victory	M. Victory
111398	Newcastle Jets	Newcastle
112390	Al Fateh	Al Fateh
1032	Monterrey	Monterrey
1790	Portsmouth	Portsmouth
59	FC Girondins de Bordeaux	Girondins
100409	FC Augsburg	Augsburg
1917	Wigan Athletic	Wigan
229	RSC Anderlecht	Anderlecht
109	West Bromwich Albion	West Brom
1842	Cagliari	Cagliari
467	SD Eibar	Eibar
28	Hamburger SV	Hamburg
110636	Fortuna Düsseldorf	Düsseldorf
1968	Cádiz CF	Cádiz
232	Standard de Liège	Standard
100767	Spartak Moscow	Spartak
192	Chievo Verona	Chievo
17	Southampton	So’ton
1807	Sheffield Wednesday	Sheff Wed
1932	Barnsley	Barnsley
144	Fulham	Fulham
1896	SC Braga	Braga
315	CSKA Moscow	CSKA
166	Hertha BSC	Berlin
149	Lincoln City	Lincoln
112427	Western Sydney Wanderers	Wanderers
111724	Shandong Luneng Taishan	Shandong
25	Sport-Club Freiburg	Freiburg
100081	KV Kortrijk	Kortrijk
298	Rosenborg BK	Rosenborg
711	BK Häcken	Häcken
1939	Huddersfield Town	Hudd'field
1853	Levante UD	Levante
463	D. Alavés	Alavés
1808	Brighton & Hove Albion	Brighton
110093	Independiente	Independ.
673	KRC Genk	Genk
1746	Empoli	Empoli
420	Górnik Zabrze	Zabrze
111774	Tianjin TEDA FC	Tianjin FC
111766	Wellington Phoenix	Wellington
1938	Peterborough United	Peterboro
110745	Jagiellonia Białystok	Jagiellonia
1806	Stoke City	Stoke City
1878	Cruz Azul	Cruz Azul
110144	Santos Laguna	Santos
689	New York Red Bulls	New York
1873	Wisła Kraków	Wisła Kra.
472	UD Las Palmas	Las Palmas
1961	Cardiff City	Cardiff
674	KAA Gent	Gent
1816	Amiens SC	Amiens SC
112134	Philadelphia Union	Phl. Union
112165	Chongqing Lifan FC	Chongqing
111769	Changchun Yatai FC	Changchun
100888	CD Leganés	Leganés
89	Charlton Athletic	Charlton
111144	Seattle Sounders FC	Seattle
1906	AZ	AZ
518	Chaves	Chaves
280	Olympiacos CFP	Olympiacos
837	Dundalk	Dundalk
111065	Real Salt Lake	Salt Lake
101102	Deportivo Cali	Cali
112096	Ettifaq FC	Ettifaq
15005	SV Zulte-Waregem	Waregem
10031	Portimonense SC	PSC
687	Columbus Crew SC	Columbus
896	FC Basel	Basel
111091	Lechia Gdańsk	Gdańsk
2017	TSV Hartberg	Hartberg
691	New England Revolution	N. England
110569	Dijon FCO	Dijon FCO
480	Rayo Vallecano	Rayo
487	VfL Osnabrück	Osnabrück
242	RC Deportivo	Deportivo
379	Stade de Reims	Reims
112978	Hebei China Fortune FC	CFFC
112537	Beijing Renhe	B. Renhe
1516	FC Midtjylland	Midtjyl.
68	Football Club de Metz	FC Metz
1945	Bury	Bury
15048	Tranmere Rovers	Tranmere
696	Sporting Kansas City	Sporting
101112	Vancouver Whitecaps FC	Whitecaps
1940	Mansfield Town	Mansfield
1887	Vitória Guimarães	Guimarães
101033	Atiker Konyaspor	Konyaspor
614	Athlétic Club Ajaccio	AC Ajaccio
111328	CD Palestino	Palestino
111138	Minnesota United FC	Minnesota
160	VfL Bochum 1848	VfL Bochum
112392	Al Raed	Al Raed
101104	Independiente Santa Fe	Santa Fe
171	1. FC Nürnberg	Nürnberg
705	Örebro SK	Örebro
211	GNK Dinamo Zagreb	D. Zagreb
101088	Vélez Sarsfield	Vélez
189	Bologna	Bologna
57	AJ Auxerre	AJ Auxerre
1474	Pohang Steelers	Pohang
101007	MKE Ankaragücü	Ankaragücü
169	1. FSV Mainz 05	Mainz
744	Rio Ave FC	Rio Ave
101026	Göztepe SK	Göztepe
111708	Atlético Tucumán	Tucumán
112584	CD Everton de Viña del Mar	Everton
698	Houston Dynamo	Houston
1013	San Lorenzo de Almagro	San Lorenzo
101114	Club Atlas	Atlas
110929	Kaizer Chiefs	Chiefs
111340	Akhisar Belediyespor	Akhisarspor
112516	Tondela	Tondela
1809	Toulouse Football Club	TFC
210	Stade Malherbe Caen	SM Caen
111706	Godoy Cruz	Godoy Cruz
485	Hannover 96	Hannover
110150	Querétaro	Querétaro
111657	Frosinone	Frosinone
462	R. Valladolid CF	R.Valladolid
111711	Club Atlético Huracán	Huracán
417	Molde FK	Molde
110395	Club Atlético Lanús	Lanús
433	AIK	AIK
1871	Legia Warszawa	Legia
113259	Evkur Yeni Malatyaspor	Malatyaspor
543	SSV Jahn Regensburg	Regensburg
110152	Puebla	Puebla
1913	SC Heerenveen	Heerenveen
982	FC Seoul	Seoul
110404	Club Atlético Banfield	Banfield
1882	Deportivo Toluca	Toluca
112977	Guizhou Hengfeng FC	Guizhou H.
1915	FC Groningen	Groningen
62	En Avant de Guingamp	EAG
110468	Viktoria Plzeň	Plzeň
111327	CD Huachipato	Huachipato
278	AEK Athens	AEK Athens
1898	Boavista FC	Boavista
894	FC Zürich	Zürich
88	Birmingham City	Birmingham
15	Queens Park Rangers	QPR
573	Málaga CF	Málaga
112408	Al Wehda	Al Wehda
1867	Córdoba CF	Córdoba
112026	Benevento	Benevento
1750	KSV Cercle Brugge	Ce. Brugge
244	R. Zaragoza	Zaragoza
1919	Bristol City	Bristol C.
14	Nottingham Forest	N'm Forest
453	RCD Mallorca	Mallorca
172	SpVgg Unterhaching	Unterhaching
322	Grasshopper Club Zürich	Grasshopp.
418	Tromsø IL	Tromsø
205	Venezia	Venezia
97	Millwall	Millwall
1854	Albacete Bpie	Albacete
110765	Incheon United FC	Incheon
983	Suwon Samsung Bluewings	Suwon
112444	Hokkaido Consadole Sapporo	Sapporo
576	Holstein Kiel	Kiel
1907	Willem II	Willem II
741	Antalyaspor	Antalyaspor
112224	Melbourne City	Melb. City
12	Middlesbrough	M’boro
110839	SD Huesca	Huesca
1881	U.N.A.M.	U.N.A.M.
459	R. Sporting	Sporting
113142	Alanyaspor	Alanyaspor
110406	Colón de Santa Fe	Colón
101037	Çaykur Rizespor	Rizespor
111730	Kawasaki Frontale	Kawasaki
199	Perugia	Perugia
1473	Ulsan Hyundai Horang-i	Ulsan
111400	Sydney FC	Sydney
111239	FC Ingolstadt 04	Ingolstadt
2056	Daegu FC	Daegu
1889	CF Os Belenenses	Belenenses
112670	Club Atlético Talleres	Talleres
1861	UD Almería	Almería
110373	Salerno	Salerno
100651	VVV-Venlo	VVV-Venlo
506	FC Erzgebirge Aue	Aue
113173	Östersunds FK	Östersunds
112115	Gangwon FC	Gangwon
110500	Eintracht Braunschweig	Braunschw.
80	Heart of Midlothian	Hearts
1813	Chamois Niortais Football Club	Chamois FC
111716	Unión de Santa Fe	Unión
200	Pescara	Pescara
1715	FC Thun	Thun
695	FC Dallas	FC Dallas
680	Sint-Truidense VV	St. Truiden
100634	Heracles Almelo	Heracles
101148	Cerezo Osaka	C-Osaka
64	Racing Club de Lens	RC Lens
111235	1. FC Heidenheim 1846	Heidenheim
113222	Al-Hazem FC	Al-Hazem
167	KFC Uerdingen 05	Uerdingen
111707	Club Atlético Aldosivi	Aldosivi
111723	Deportivo Pasto	Pasto
111993	Cittadella	Cittadella
873	Lech Poznań	Poznań
294	ESTAC Troyes	ESTAC
10030	SC Paderborn 07	Paderborn
252	LASK Linz	LASK Linz
256	FK Austria Wien	Austria
101151	Yokohama F・Marinos	Yokohama
110911	Foggia	Foggia
230	Royal Antwerp FC	Antwerp
749	Büyükşehir Belediye Erzurumspor	Erzurum BB
111399	Perth Glory	Perth
94	Ipswich Town	Ipswich
110770	FC Sion	Sion
1569	Wisła Płock	Płock
111393	Adelaide United	Adelaide
101144	Júbilo Iwata	Iwata
1831	1. FC Union Berlin	Union Ber.
260	CD Tenerife	Tenerife
2055	Sangju Sangmu FC	Sangju
477	CD Numancia	Numancia
82	Kilmarnock	Kilmarnock
1815	Clermont Foot 63	Clermont
101147	Kashima Antlers	Kashima
110930	Orlando Pirates	Pirates
110313	Accrington Stanley	Accrington
1803	Walsall	Walsall
143	Exeter City	Exeter
1798	Milton Keynes Dons	MK Dons
1880	Guadalajara	Guadalaja.
267	Sparta Praha	Sp. Praha
682	KV Oostende	Oostende
101121	Club Necaxa	Necaxa
665	Vitória Setúbal	Setúbal
111019	Argentinos Juniors	Argentinos
1843	Palermo	Palermo
1884	Panathinaikos FC	Panathin.
110827	R. Oviedo	R. Oviedo
110580	Rosario Central	R. Central
254	SK Rapid Wien	Rapid
112534	CD Universidad de Concepción	Concepción
742	Bursaspor	Bursaspor
1793	Reading	Reading
111575	Urawa Red Diamonds	Urawa
666	Desportivo Aves	Aves
1028	Monarcas Morelia	Monarcas
269	Brøndby IF	Brøndby
101106	Once Caldas	O. Caldas
101020	Kayserispor	Kayserispor
1456	Odds BK	ODD
110734	Crotone	Crotone
111092	Śląsk Wrocław	Wrocław
1933	Wycombe Wanderers	Wycombe
112259	AFC Wimbledon	Wimbledon
1844	Livorno	Livorno
101041	Sivasspor	Sivasspor
206	Hellas Verona	Verona
15029	Universidad de Chile	U. Chile
700	IF Elfsborg	Elfsborg
101083	Estudiantes de La Plata	Estudiantes
111779	Henan Jianye FC	Henan FC
1900	Moreirense FC	Moreirense
111022	Belgrano de Córdoba	Belgrano
101084	Gimnasia y Esgrima La Plata	Gimnasia
111395	Brisbane Roar	Brisbane
77	Aberdeen	Aberdeen
113157	Sanfrecce Hiroshima	Hiroshima
1904	NAC Breda	NAC Breda
1903	FC Utrecht	Utrecht
10019	CD Feirense	Feirense
1801	Preston North End	Preston
101105	Millonarios FC	Millonar.
1893	CS Marítimo	Marítimo
209	SK Sturm Graz	Sturm Graz
1738	Havre Athletic Club	Havre AC
110502	SV Darmstadt 98	Darmstadt
110581	Patronato	Patronato
347	Lecce	Lecce
111434	Cremona	Cremona
531	SC Preußen Münster	Münster
27	FC Hansa Rostock	Rostock
2007	Sporting Lokeren	Lokeren
1891	Funchal	Funchal
217	FC Lorient	FC Lorient
113057	Al Fayha	Al Fayha
898	FC St. Gallen	St. Gallen
110066	Rayo Majadahonda	Rayo M.
1971	Excelsior	Excelsior
110178	SV Sandhausen	Sandhausen
110913	Waasland-Beveren	W. Beveren
111273	Red Star FC	Red Star
1463	FK Haugesund	Haugesund
110456	Valenciennes FC	VAFC
111396	Central Coast Mariners	C. Coast
1475	Jeonnam Dragons	Jeonnam
1951	Oxford United	Oxford Utd
635	De Graafschap	Graafschap
917	Stabæk Fotball	Stabæk
561	Forest Green Rovers	Forest G.
670	Sporting Charleroi	Charleroi
479	CA Osasuna	Osasuna
100805	St. Mirren	St. Mirren
111713	San Martín	San Martín
15019	Nàstic	Nàstic
112527	Patriotas Boyacá FC	Patriotas
271	Aarhus GF	Aarhus
1823	AS Nancy Lorraine	ASNL
113219	Ohod Club	Ohod Club
918	FK Bodø/Glimt	Bodø/Glimt
4	Bolton Wanderers	Bolton
110977	Unión Española	Española
469	Extremadura UD	Extremadura
112535	Unión La Calera	La Calera
110912	Padova	Padova
503	SG Dynamo Dresden	Dresden
110145	Tiburones Rojos de Veracruz	Veracruz
110831	CD Lugo	Lugo
820	Aalborg BK	Aalborg
112836	Vegalta Sendai	Sendai
110329	FC St. Pauli	St. Pauli
634	Fortuna Sittard	Fortuna S.
110741	La Spezia	La Spezia
81	Hibernian	Hibernian
10032	FC Lugano	Lugano
708	Hammarby IF	Hammarby
922	Strømsgodset IF	Strømsgod.
112992	Atlético Bucaramanga	Bucaramanga
1788	FC Nordsjælland	Nordsjæl.
1944	Cambridge United	Cambridge
1446	AC Horsens	Horsens
112668	San Luis de Quillota	San Luis
29	1. FC Kaiserslautern	K'lautern
112579	Alianza Petrolera	Petrolera
112168	Cosenza Calcio	Cosenza C.
83	Motherwell	Motherwell
112709	Club Deportes Temuco	Temuco
110482	Hallescher FC	Halle
1847	Ascoli	Ascoli
112409	Carpi	Carpi
110591	FC Carl Zeiss Jena	Jena
1914	PEC Zwolle	PEC Zwolle
101145	Kashiwa Reysol	Kashiwa
159	DSC Arminia Bielefeld	Bielefeld
111715	Club Atlético Tigre	Tigre
101150	F.C. Tokyo	F.C. Tokyo
1825	MSV Duisburg	Duisburg
100831	AD Alcorcón	Alcorcón
710	Djurgårdens IF	Djurgården
1954	Southend United	Southend
111035	Lobos B.U.A.P.	Lobos
110588	1. FC Magdeburg	Magdeburg
272	Odense Boldklub	Odense
112389	Al Faisaly	Al Faisaly
702	IFK Norrköping	Norrköping
112578	Rionegro Águilas	R. Águilas
112528	Atlético Huila	Huila
112448	V-Varen Nagasaki	VV Nagasaki
212	La Berrichonne de Châteauroux	La Berri
110746	Pogoń Szczecin	Szczecin
319	IFK Göteborg	Göteborg
112533	CD Antofagasta	Antofagas.
305	Bohemian FC	Bohemians
468	Elche CF	Elche
111588	GyeongNam FC	GyeongNam
320	Malmö FF	Malmö
112391	Al Qadisiyah	Qadisiyah
2013	KAS Eupen	Eupen
110396	Newell's Old Boys	Newell's
110854	CF Reus	Reus
3	Blackburn Rovers	Blackburn
112531	Deportes Iquique	Iquique
1439	Kalmar FF	Kalmar
101149	Shimizu S-Pulse	Shimizu
112990	Al Batin	Al Batin
112093	Gamba Osaka	G-Osaka
1438	Santa Clara	Santa Clara
111822	Wolfsberger AC	Wolfsberg
165	SpVgg Greuther Fuerth	Fuerth
110747	Cracovia	Cracovia
1478	Jeju United FC	Jeju
226	FC Sochaux-Montbéliard	FCSM
1447	SønderjyskE	Sønderjys.
110316	Gazélec Football Club Ajaccio	Gazélec
112260	Fleetwood Town	Fleetwood
101097	Audax Italiano	Audax
112116	CD O'Higgins	O'Higgins
1805	Grenoble Foot 38	Grenoble
1949	Scunthorpe United	Scunthorpe
550	VfR Aalen	Aalen
1929	Plymouth Argyle	Plymouth
110169	SC Fortuna Köln	Fort. Köln
112523	La Equidad	La Equidad
113161	Shonan Bellmare	Shonan
15015	Burton Albion	Burton
897	FC Luzern	Luzern
112903	Jaguares Fútbol Club	Jaguares
111714	San Martín de Tucumán	CASM
422	Cork City	Cork City
920	Vålerenga Fotball	Vålerenga
1832	Karlsruher SC	Karlsruhe
111821	FC Admira Wacker Mödling	Admira
111082	Arka Gdynia	Gdynia
100628	FC Emmen	FC Emmen
180	Dundee FC	Dundee FC
110749	Zagłębie Lubin	Z. Lubin
1797	Rotherham United	Rotherham
111560	Royal Excel Mouscron	Mouscron
1786	Randers FC	Randers
112526	Envigado FC	Envigado
112425	Hobro IK	Hobro
299	Lillestrøm SK	Lillestrøm
112199	Sarpsborg 08 FF	Sarpsborg
110197	FC Würzburger Kickers	Würzburg
753	Waterford FC	Waterford
1804	Bradford City	Bradford
100804	St. Johnstone FC	St.Johnstn
112254	Newport County	Newport
1800	Coventry City	Coventry
1802	Gillingham	Gillingham
361	Stevenage	Stevenage
112276	US Orléans Loiret Football	US Orléans
127	Shrewsbury	Shrewsbury
110890	Crawley Town	Crawley
33	TSV 1860 München	TSV 1860
111083	Korona Kielce	Kielce
111379	SG Sonnenhof Großaspach	Großaspach
100325	HJK Helsinki	HJK
1785	SV Mattersburg	Mattersburg
1962	Bristol Rovers	Bristol R.
112655	Curicó Unido	Curicó Un.
15009	SCR Altach	Altach
1596	GIF Sundsvall	Sundsvall
2045	FC Wacker Innsbruck	Innsbruck
184	Hamilton Academical FC	Hamilton
111089	Zagłębie Sosnowiec	Zagłębie S
1445	Esbjerg fB	Esbjerg
142	Doncaster Rovers	Doncaster
1955	Rochdale	Rochdale
1926	Blackpool	Blackpool
1920	Oldham Athletic	Oldham
112200	Ranheim Fotball	Ranheim TF
110592	FSV Zwickau	FSV Zwickau
112505	Miedź Legnica	Miedź L.
113459	Kristiansund BK	Kristian.
822	Vejle Boldklub	Vejle
1935	Colchester United	Colchester
113458	IK Sirius	Sirius
112019	Boyacá Chicó FC	B. Chicó
306	Shamrock Rovers	Shamrock
1937	Notts County	Notts Co
1524	IK Start	Start
92	Grimsby Town	Grimsby
1934	Swindon Town	Swindon
111660	Vendsyssel FF	Vendsyssel
621	Livingston FC	Livingston
110597	SV Meppen	Meppen
1930	Northampton Town	N'hampton
110700	VfL Sportfreunde Lotte	Lotte
1936	Cheltenham Town	Cheltenham
112075	SKN St. Pölten	St. Pölten
1757	Sandefjord Fotball	Sandefjord
423	St. Patrick's Athletic	St. Pats
1480	Carlisle United	Carlisle
1928	Port Vale	Port Vale
162	FC Energie Cottbus	FC Energie
113876	Dalkurd FF	Dalkurd FF
703	Trelleborgs FF	Trelleborg
357	Morecambe	Morecambe
112970	Leones FC	Leones FC
113948	AS Béziers	AS Béziers
346	Yeovil Town	Yeovil
445	Derry City	Derry City
121	Crewe Alexandra	Crewe
111705	IF Brommapojkarna	Brommapoj.
563	Sligo Rovers	Sligo
1959	Macclesfield Town	Macclesf.
111285	Limerick FC	Limerick
838	Bray Wanderers	Bray
\.


--
-- Name: Teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_fifa
--

SELECT pg_catalog.setval('public."Teams_team_id_seq"', 1, false);


--
-- Name: Players Players_pkey; Type: CONSTRAINT; Schema: public; Owner: user_fifa
--

ALTER TABLE ONLY public."Players"
    ADD CONSTRAINT "Players_pkey" PRIMARY KEY (player_id);


--
-- Name: Teams Teams_pkey; Type: CONSTRAINT; Schema: public; Owner: user_fifa
--

ALTER TABLE ONLY public."Teams"
    ADD CONSTRAINT "Teams_pkey" PRIMARY KEY (team_id);


--
-- Name: Players Players_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user_fifa
--

ALTER TABLE ONLY public."Players"
    ADD CONSTRAINT "Players_team_id_fkey" FOREIGN KEY (team_id) REFERENCES public."Teams"(team_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

