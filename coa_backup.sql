PGDMP      *            
    |            hr    16.3 (Debian 16.3-1.pgdg120+1)    16.4 a    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    hr    DATABASE     m   CREATE DATABASE hr WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE hr;
                coa    false            �            1259    16389    adres    TABLE     �   CREATE TABLE public.adres (
    postcode character varying(6) NOT NULL,
    nummer integer NOT NULL,
    id integer NOT NULL,
    toevoeging character varying
);
    DROP TABLE public.adres;
       public         heap    pg_database_owner    false            �            1259    16397    adres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.adres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.adres_id_seq;
       public          pg_database_owner    false    215            �           0    0    adres_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.adres_id_seq OWNED BY public.adres.id;
          public          pg_database_owner    false    217            �            1259    16445    func    TABLE     i   CREATE TABLE public.func (
    datum date NOT NULL,
    rol integer NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.func;
       public         heap    pg_database_owner    false            �            1259    16475    func_id_seq    SEQUENCE     �   CREATE SEQUENCE public.func_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.func_id_seq;
       public          pg_database_owner    false    225            �           0    0    func_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.func_id_seq OWNED BY public.func.id;
          public          pg_database_owner    false    228            �            1259    16439    func_persoon    TABLE     w   CREATE TABLE public.func_persoon (
    func integer NOT NULL,
    persoon integer NOT NULL,
    id integer NOT NULL
);
     DROP TABLE public.func_persoon;
       public         heap    pg_database_owner    false            �            1259    16438    func_persoon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.func_persoon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.func_persoon_id_seq;
       public          pg_database_owner    false    224            �           0    0    func_persoon_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.func_persoon_id_seq OWNED BY public.func_persoon.id;
          public          pg_database_owner    false    223            �            1259    16499    inschrijving    TABLE     �   CREATE TABLE public.inschrijving (
    kvk integer NOT NULL,
    datum date NOT NULL,
    status integer NOT NULL,
    bedrijfsnaam character varying(50) NOT NULL,
    rechtsvorm integer NOT NULL,
    ma integer NOT NULL
);
     DROP TABLE public.inschrijving;
       public         heap    pg_database_owner    false            �            1259    16522    inschrijving_func    TABLE     �   CREATE TABLE public.inschrijving_func (
    inschrijving integer NOT NULL,
    func integer NOT NULL,
    id integer NOT NULL
);
 %   DROP TABLE public.inschrijving_func;
       public         heap    pg_database_owner    false            �            1259    16521    inschrijving_func_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inschrijving_func_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.inschrijving_func_id_seq;
       public          pg_database_owner    false    233            �           0    0    inschrijving_func_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.inschrijving_func_id_seq OWNED BY public.inschrijving_func.id;
          public          pg_database_owner    false    232            �            1259    16488    inschrijving_vestiging    TABLE     �   CREATE TABLE public.inschrijving_vestiging (
    inschrijving integer NOT NULL,
    vestiging integer NOT NULL,
    id integer NOT NULL
);
 *   DROP TABLE public.inschrijving_vestiging;
       public         heap    pg_database_owner    false            �            1259    16487    inschrijving_vestiging_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inschrijving_vestiging_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.inschrijving_vestiging_id_seq;
       public          pg_database_owner    false    230            �           0    0    inschrijving_vestiging_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.inschrijving_vestiging_id_seq OWNED BY public.inschrijving_vestiging.id;
          public          pg_database_owner    false    229            �            1259    16420    ma    TABLE     �   CREATE TABLE public.ma (
    beschrijving character varying(200) NOT NULL,
    sbi integer NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.ma;
       public         heap    pg_database_owner    false            �            1259    16419 	   ma_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ma_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.ma_id_seq;
       public          pg_database_owner    false    220            �           0    0 	   ma_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE public.ma_id_seq OWNED BY public.ma.id;
          public          pg_database_owner    false    219            �            1259    16427    persoon    TABLE     �   CREATE TABLE public.persoon (
    naam character varying(50) NOT NULL,
    voorletters character varying(10) NOT NULL,
    email character varying(50),
    id integer NOT NULL,
    adres integer
);
    DROP TABLE public.persoon;
       public         heap    pg_database_owner    false            �            1259    16426    persoon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.persoon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.persoon_id_seq;
       public          pg_database_owner    false    222            �           0    0    persoon_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.persoon_id_seq OWNED BY public.persoon.id;
          public          pg_database_owner    false    221            �            1259    16541 
   rechtsvorm    TABLE     e   CREATE TABLE public.rechtsvorm (
    type character varying(20) NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.rechtsvorm;
       public         heap    pg_database_owner    false            �            1259    16540    rechtsvorm_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rechtsvorm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.rechtsvorm_id_seq;
       public          pg_database_owner    false    235            �           0    0    rechtsvorm_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.rechtsvorm_id_seq OWNED BY public.rechtsvorm.id;
          public          pg_database_owner    false    234            �            1259    16394    rol    TABLE     U   CREATE TABLE public.rol (
    type character varying(50),
    id integer NOT NULL
);
    DROP TABLE public.rol;
       public         heap    pg_database_owner    false            �            1259    16412 
   rol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.rol_id_seq;
       public          pg_database_owner    false    216            �           0    0 
   rol_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.rol_id_seq OWNED BY public.rol.id;
          public          pg_database_owner    false    218            �            1259    16553    status    TABLE     a   CREATE TABLE public.status (
    type character varying(20) NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.status;
       public         heap    pg_database_owner    false            �            1259    16552    status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.status_id_seq;
       public          pg_database_owner    false    237            �           0    0    status_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;
          public          pg_database_owner    false    236            �            1259    16459 	   vestiging    TABLE     p   CREATE TABLE public.vestiging (
    datum date NOT NULL,
    adres integer NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.vestiging;
       public         heap    pg_database_owner    false            �            1259    16458    vestiging_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vestiging_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.vestiging_id_seq;
       public          pg_database_owner    false    227            �           0    0    vestiging_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.vestiging_id_seq OWNED BY public.vestiging.id;
          public          pg_database_owner    false    226            �           2604    16398    adres id    DEFAULT     d   ALTER TABLE ONLY public.adres ALTER COLUMN id SET DEFAULT nextval('public.adres_id_seq'::regclass);
 7   ALTER TABLE public.adres ALTER COLUMN id DROP DEFAULT;
       public          pg_database_owner    false    217    215            �           2604    16476    func id    DEFAULT     b   ALTER TABLE ONLY public.func ALTER COLUMN id SET DEFAULT nextval('public.func_id_seq'::regclass);
 6   ALTER TABLE public.func ALTER COLUMN id DROP DEFAULT;
       public          pg_database_owner    false    228    225            �           2604    16442    func_persoon id    DEFAULT     r   ALTER TABLE ONLY public.func_persoon ALTER COLUMN id SET DEFAULT nextval('public.func_persoon_id_seq'::regclass);
 >   ALTER TABLE public.func_persoon ALTER COLUMN id DROP DEFAULT;
       public          pg_database_owner    false    223    224    224            �           2604    16525    inschrijving_func id    DEFAULT     |   ALTER TABLE ONLY public.inschrijving_func ALTER COLUMN id SET DEFAULT nextval('public.inschrijving_func_id_seq'::regclass);
 C   ALTER TABLE public.inschrijving_func ALTER COLUMN id DROP DEFAULT;
       public          pg_database_owner    false    233    232    233            �           2604    16491    inschrijving_vestiging id    DEFAULT     �   ALTER TABLE ONLY public.inschrijving_vestiging ALTER COLUMN id SET DEFAULT nextval('public.inschrijving_vestiging_id_seq'::regclass);
 H   ALTER TABLE public.inschrijving_vestiging ALTER COLUMN id DROP DEFAULT;
       public          pg_database_owner    false    229    230    230            �           2604    16423    ma id    DEFAULT     ^   ALTER TABLE ONLY public.ma ALTER COLUMN id SET DEFAULT nextval('public.ma_id_seq'::regclass);
 4   ALTER TABLE public.ma ALTER COLUMN id DROP DEFAULT;
       public          pg_database_owner    false    220    219    220            �           2604    16430 
   persoon id    DEFAULT     h   ALTER TABLE ONLY public.persoon ALTER COLUMN id SET DEFAULT nextval('public.persoon_id_seq'::regclass);
 9   ALTER TABLE public.persoon ALTER COLUMN id DROP DEFAULT;
       public          pg_database_owner    false    221    222    222            �           2604    16544    rechtsvorm id    DEFAULT     n   ALTER TABLE ONLY public.rechtsvorm ALTER COLUMN id SET DEFAULT nextval('public.rechtsvorm_id_seq'::regclass);
 <   ALTER TABLE public.rechtsvorm ALTER COLUMN id DROP DEFAULT;
       public          pg_database_owner    false    235    234    235            �           2604    16413    rol id    DEFAULT     `   ALTER TABLE ONLY public.rol ALTER COLUMN id SET DEFAULT nextval('public.rol_id_seq'::regclass);
 5   ALTER TABLE public.rol ALTER COLUMN id DROP DEFAULT;
       public          pg_database_owner    false    218    216            �           2604    16556 	   status id    DEFAULT     f   ALTER TABLE ONLY public.status ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);
 8   ALTER TABLE public.status ALTER COLUMN id DROP DEFAULT;
       public          pg_database_owner    false    236    237    237            �           2604    16462    vestiging id    DEFAULT     l   ALTER TABLE ONLY public.vestiging ALTER COLUMN id SET DEFAULT nextval('public.vestiging_id_seq'::regclass);
 ;   ALTER TABLE public.vestiging ALTER COLUMN id DROP DEFAULT;
       public          pg_database_owner    false    226    227    227            y          0    16389    adres 
   TABLE DATA           A   COPY public.adres (postcode, nummer, id, toevoeging) FROM stdin;
    public          pg_database_owner    false    215   �l       �          0    16445    func 
   TABLE DATA           .   COPY public.func (datum, rol, id) FROM stdin;
    public          pg_database_owner    false    225   �m       �          0    16439    func_persoon 
   TABLE DATA           9   COPY public.func_persoon (func, persoon, id) FROM stdin;
    public          pg_database_owner    false    224   �m       �          0    16499    inschrijving 
   TABLE DATA           X   COPY public.inschrijving (kvk, datum, status, bedrijfsnaam, rechtsvorm, ma) FROM stdin;
    public          pg_database_owner    false    231   n       �          0    16522    inschrijving_func 
   TABLE DATA           C   COPY public.inschrijving_func (inschrijving, func, id) FROM stdin;
    public          pg_database_owner    false    233   �n       �          0    16488    inschrijving_vestiging 
   TABLE DATA           M   COPY public.inschrijving_vestiging (inschrijving, vestiging, id) FROM stdin;
    public          pg_database_owner    false    230   �n       ~          0    16420    ma 
   TABLE DATA           3   COPY public.ma (beschrijving, sbi, id) FROM stdin;
    public          pg_database_owner    false    220   )o       �          0    16427    persoon 
   TABLE DATA           F   COPY public.persoon (naam, voorletters, email, id, adres) FROM stdin;
    public          pg_database_owner    false    222   �p       �          0    16541 
   rechtsvorm 
   TABLE DATA           .   COPY public.rechtsvorm (type, id) FROM stdin;
    public          pg_database_owner    false    235   �q       z          0    16394    rol 
   TABLE DATA           '   COPY public.rol (type, id) FROM stdin;
    public          pg_database_owner    false    216   �q       �          0    16553    status 
   TABLE DATA           *   COPY public.status (type, id) FROM stdin;
    public          pg_database_owner    false    237   'r       �          0    16459 	   vestiging 
   TABLE DATA           5   COPY public.vestiging (datum, adres, id) FROM stdin;
    public          pg_database_owner    false    227   hr       �           0    0    adres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.adres_id_seq', 236, true);
          public          pg_database_owner    false    217            �           0    0    func_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.func_id_seq', 5, true);
          public          pg_database_owner    false    228            �           0    0    func_persoon_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.func_persoon_id_seq', 10, true);
          public          pg_database_owner    false    223            �           0    0    inschrijving_func_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.inschrijving_func_id_seq', 5, true);
          public          pg_database_owner    false    232            �           0    0    inschrijving_vestiging_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.inschrijving_vestiging_id_seq', 5, true);
          public          pg_database_owner    false    229            �           0    0 	   ma_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.ma_id_seq', 17, true);
          public          pg_database_owner    false    219            �           0    0    persoon_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.persoon_id_seq', 20, true);
          public          pg_database_owner    false    221            �           0    0    rechtsvorm_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.rechtsvorm_id_seq', 5, true);
          public          pg_database_owner    false    234            �           0    0 
   rol_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.rol_id_seq', 3, true);
          public          pg_database_owner    false    218            �           0    0    status_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.status_id_seq', 3, true);
          public          pg_database_owner    false    236            �           0    0    vestiging_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.vestiging_id_seq', 5, true);
          public          pg_database_owner    false    226            �           2606    16405    adres adres_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.adres
    ADD CONSTRAINT adres_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.adres DROP CONSTRAINT adres_pkey;
       public            pg_database_owner    false    215            �           2606    16444    func_persoon func_persoon_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.func_persoon
    ADD CONSTRAINT func_persoon_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.func_persoon DROP CONSTRAINT func_persoon_pkey;
       public            pg_database_owner    false    224            �           2606    16481    func func_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.func
    ADD CONSTRAINT func_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.func DROP CONSTRAINT func_pkey;
       public            pg_database_owner    false    225            �           2606    16527 (   inschrijving_func inschrijving_func_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.inschrijving_func
    ADD CONSTRAINT inschrijving_func_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.inschrijving_func DROP CONSTRAINT inschrijving_func_pkey;
       public            pg_database_owner    false    233            �           2606    16503    inschrijving inschrijving_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.inschrijving
    ADD CONSTRAINT inschrijving_pkey PRIMARY KEY (kvk);
 H   ALTER TABLE ONLY public.inschrijving DROP CONSTRAINT inschrijving_pkey;
       public            pg_database_owner    false    231            �           2606    16493 2   inschrijving_vestiging inschrijving_vestiging_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.inschrijving_vestiging
    ADD CONSTRAINT inschrijving_vestiging_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.inschrijving_vestiging DROP CONSTRAINT inschrijving_vestiging_pkey;
       public            pg_database_owner    false    230            �           2606    16425 
   ma ma_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY public.ma
    ADD CONSTRAINT ma_pkey PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.ma DROP CONSTRAINT ma_pkey;
       public            pg_database_owner    false    220            �           2606    16432    persoon persoon_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.persoon
    ADD CONSTRAINT persoon_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.persoon DROP CONSTRAINT persoon_pkey;
       public            pg_database_owner    false    222            �           2606    16546    rechtsvorm rechtsvorm_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.rechtsvorm
    ADD CONSTRAINT rechtsvorm_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.rechtsvorm DROP CONSTRAINT rechtsvorm_pkey;
       public            pg_database_owner    false    235            �           2606    16418    rol rol_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            pg_database_owner    false    216            �           2606    16558    status status_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            pg_database_owner    false    237            �           2606    16539    func_persoon unique_func 
   CONSTRAINT     S   ALTER TABLE ONLY public.func_persoon
    ADD CONSTRAINT unique_func UNIQUE (func);
 B   ALTER TABLE ONLY public.func_persoon DROP CONSTRAINT unique_func;
       public            pg_database_owner    false    224            �           2606    16464    vestiging vestiging_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.vestiging
    ADD CONSTRAINT vestiging_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.vestiging DROP CONSTRAINT vestiging_pkey;
       public            pg_database_owner    false    227            �           2606    16433    persoon adres    FK CONSTRAINT     t   ALTER TABLE ONLY public.persoon
    ADD CONSTRAINT adres FOREIGN KEY (adres) REFERENCES public.adres(id) NOT VALID;
 7   ALTER TABLE ONLY public.persoon DROP CONSTRAINT adres;
       public          pg_database_owner    false    3269    222    215            �           2606    16465    vestiging adres    FK CONSTRAINT     l   ALTER TABLE ONLY public.vestiging
    ADD CONSTRAINT adres FOREIGN KEY (adres) REFERENCES public.adres(id);
 9   ALTER TABLE ONLY public.vestiging DROP CONSTRAINT adres;
       public          pg_database_owner    false    3269    215    227            �           2606    16482    func_persoon func    FK CONSTRAINT     v   ALTER TABLE ONLY public.func_persoon
    ADD CONSTRAINT func FOREIGN KEY (func) REFERENCES public.func(id) NOT VALID;
 ;   ALTER TABLE ONLY public.func_persoon DROP CONSTRAINT func;
       public          pg_database_owner    false    224    225    3281            �           2606    16533    inschrijving_func func    FK CONSTRAINT     q   ALTER TABLE ONLY public.inschrijving_func
    ADD CONSTRAINT func FOREIGN KEY (func) REFERENCES public.func(id);
 @   ALTER TABLE ONLY public.inschrijving_func DROP CONSTRAINT func;
       public          pg_database_owner    false    233    225    3281            �           2606    16509 #   inschrijving_vestiging inschrijving    FK CONSTRAINT     �   ALTER TABLE ONLY public.inschrijving_vestiging
    ADD CONSTRAINT inschrijving FOREIGN KEY (inschrijving) REFERENCES public.inschrijving(kvk) NOT VALID;
 M   ALTER TABLE ONLY public.inschrijving_vestiging DROP CONSTRAINT inschrijving;
       public          pg_database_owner    false    230    231    3287            �           2606    16528    inschrijving_func inschrijving    FK CONSTRAINT     �   ALTER TABLE ONLY public.inschrijving_func
    ADD CONSTRAINT inschrijving FOREIGN KEY (inschrijving) REFERENCES public.inschrijving(kvk);
 H   ALTER TABLE ONLY public.inschrijving_func DROP CONSTRAINT inschrijving;
       public          pg_database_owner    false    233    231    3287            �           2606    16504    inschrijving ma    FK CONSTRAINT     f   ALTER TABLE ONLY public.inschrijving
    ADD CONSTRAINT ma FOREIGN KEY (ma) REFERENCES public.ma(id);
 9   ALTER TABLE ONLY public.inschrijving DROP CONSTRAINT ma;
       public          pg_database_owner    false    231    3273    220            �           2606    16470    func_persoon persoon    FK CONSTRAINT        ALTER TABLE ONLY public.func_persoon
    ADD CONSTRAINT persoon FOREIGN KEY (persoon) REFERENCES public.persoon(id) NOT VALID;
 >   ALTER TABLE ONLY public.func_persoon DROP CONSTRAINT persoon;
       public          pg_database_owner    false    224    3275    222            �           2606    16547    inschrijving rechtsvorm    FK CONSTRAINT     �   ALTER TABLE ONLY public.inschrijving
    ADD CONSTRAINT rechtsvorm FOREIGN KEY (rechtsvorm) REFERENCES public.rechtsvorm(id) NOT VALID;
 A   ALTER TABLE ONLY public.inschrijving DROP CONSTRAINT rechtsvorm;
       public          pg_database_owner    false    235    3291    231            �           2606    16448    func rol    FK CONSTRAINT     a   ALTER TABLE ONLY public.func
    ADD CONSTRAINT rol FOREIGN KEY (rol) REFERENCES public.rol(id);
 2   ALTER TABLE ONLY public.func DROP CONSTRAINT rol;
       public          pg_database_owner    false    3271    216    225            �           2606    16559    inschrijving status    FK CONSTRAINT     |   ALTER TABLE ONLY public.inschrijving
    ADD CONSTRAINT status FOREIGN KEY (status) REFERENCES public.status(id) NOT VALID;
 =   ALTER TABLE ONLY public.inschrijving DROP CONSTRAINT status;
       public          pg_database_owner    false    237    3293    231            �           2606    16494     inschrijving_vestiging vestiging    FK CONSTRAINT     �   ALTER TABLE ONLY public.inschrijving_vestiging
    ADD CONSTRAINT vestiging FOREIGN KEY (vestiging) REFERENCES public.vestiging(id);
 J   ALTER TABLE ONLY public.inschrijving_vestiging DROP CONSTRAINT vestiging;
       public          pg_database_owner    false    227    3283    230            y   �   x�=����0k�c�lI������ U��� �*Tp@Q#Q����B%���8�5}`�fs$//0���s^�Q�Pq�\6[H#$ꄠ���a�r8��F���μ�#��\�tx�ށ �~�!���0#������#����@��#��&����2W����r��U�+$�[U]o �aUu�C�W:�I�5lA      �   ?   x�-���0�fW7Q���sK|Nw��,?<�ꤲV(4h��}�I��wХ������      �   -   x���  ���'���� ���T�`)q�U�8��M�r�g      �   �   x�-��
�0�s�y�H���G7�����x��-���o��$�򏰕��zb���<%<y*��� N�Ҫ�xMlێ��]�L1㡷�fa�2Kڒg��x��;>b�Q¢��K%i��2�X���bɺ�P	�)����n�l�}��.�(�      �   ,   x�34 CN �21�8��4�Bӄ!LSN ����� @�      �   ,   x�34 CN �21�8��4�Bӄ!LSN ����� @�      ~   �  x��R�n�0����R�p ��TH:T]�.&��k�*��='Ph;)�����{ސsagl	�����B�%��
�2]p��;��ob��wH�ը��F��y:�Zh���z ��D$r�`s�?9�1�mT낣
!��芶4�&ʘO�����-{C& (n��+�|�x �Ȍ�v��?�݋e:OD&_�I��U��9&�Z�>.�ñV~�(L)A�r͓�\,��X�O���cg}8��X�xGm�#.aZ��s~�;����S��	ĩ����.�3��\U>�Q����@"�d@�ݾ,�ؘ_ ���>�1�ϡ+�Pé��[���H�Fy��������~)��b?ΦB�J��yPXV#����u&WM-XPG����qS.�΅|��R~�N�      �   �   x�U���@E뙯�&��P;C�4*�U�Xt�����K�ݝ�s�\��y�+�@C����0='J�VGl,/<{h�;(-�	+>t�e��^�nGl����1�o_n����	vV�:��֐c7Jai�o�J�=B��B(�����v�?J�b�v�&p�B�œPY7ϓ�g!r,'�}�a�HQ`O���XX�      �   ;   x���4�r
�4�*.�L�(��K�4�*K-J��LqL�RS�r��9M�b���� �"�      z   5   x�KJ-.)--JI-�4�*K����/�4�JO-���ML�(�LOI�4����� r��      �   1   x�KL.�LM�4�*�,IO-N�(J-K��4�JK����L-�4����� '��      �   F   x����0Bѳ��D�w��s�9�i�9�J�<o���k��.(h�X�	`�K��{2����     