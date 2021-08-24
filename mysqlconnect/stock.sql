PGDMP     9                    y            postgres    13.3    13.3 m    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            C           1262    13442    postgres    DATABASE     l   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            D           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3139                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            E           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16425 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16423    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    208            F           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    207            �            1259    16435    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16433    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    210            G           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    209            �            1259    16417    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16415    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    206            H           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    205            �            1259    16443 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16453    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16451    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    214            I           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    213            �            1259    16441    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    212            J           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    211            �            1259    16461    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16459 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    216            K           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    215            �            1259    16521    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16519    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    218            L           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    217            �            1259    16407    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16405    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    204            M           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    203            �            1259    16396    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16394    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    202            N           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    201            �            1259    16552    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16564    stockmarket_stockmarket    TABLE     #  CREATE TABLE public.stockmarket_stockmarket (
    id integer NOT NULL,
    trade_code text NOT NULL,
    open double precision NOT NULL,
    close double precision NOT NULL,
    high double precision NOT NULL,
    low double precision NOT NULL,
    date date NOT NULL,
    volume integer
);
 +   DROP TABLE public.stockmarket_stockmarket;
       public         heap    postgres    false            �            1259    16562    stockmarket_stockmarket_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stockmarket_stockmarket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.stockmarket_stockmarket_id_seq;
       public          postgres    false    221            O           0    0    stockmarket_stockmarket_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.stockmarket_stockmarket_id_seq OWNED BY public.stockmarket_stockmarket.id;
          public          postgres    false    220            e           2604    16428    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            f           2604    16438    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            d           2604    16420    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    206    206            g           2604    16446    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            h           2604    16456    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            i           2604    16464    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            j           2604    16524    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            c           2604    16410    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    204    204            b           2604    16399    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    202    202            l           2604    16567    stockmarket_stockmarket id    DEFAULT     �   ALTER TABLE ONLY public.stockmarket_stockmarket ALTER COLUMN id SET DEFAULT nextval('public.stockmarket_stockmarket_id_seq'::regclass);
 I   ALTER TABLE public.stockmarket_stockmarket ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            0          0    16425 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    208   �       2          0    16435    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    210   -�       .          0    16417    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    206   J�       4          0    16443 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    212   U�       6          0    16453    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    214   b�       8          0    16461    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    216   �       :          0    16521    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    218   ��       ,          0    16407    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    204   ��       *          0    16396    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    202   [�       ;          0    16552    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    219   "�       =          0    16564    stockmarket_stockmarket 
   TABLE DATA           g   COPY public.stockmarket_stockmarket (id, trade_code, open, close, high, low, date, volume) FROM stdin;
    public          postgres    false    221   �       P           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    207            Q           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    209            R           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
          public          postgres    false    205            S           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    213            T           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    211            U           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    215            V           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    217            W           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
          public          postgres    false    203            X           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
          public          postgres    false    201            Y           0    0    stockmarket_stockmarket_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.stockmarket_stockmarket_id_seq', 1001, true);
          public          postgres    false    220            z           2606    16550    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    208                       2606    16477 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    210    210            �           2606    16440 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    210            |           2606    16430    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    208            u           2606    16468 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    206    206            w           2606    16422 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    206            �           2606    16458 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    214            �           2606    16492 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    214    214            �           2606    16448    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    212            �           2606    16466 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    216            �           2606    16506 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    216    216            �           2606    16544     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    212            �           2606    16530 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    218            p           2606    16414 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    204    204            r           2606    16412 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    204            n           2606    16404 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    202            �           2606    16559 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    219            �           2606    16572 4   stockmarket_stockmarket stockmarket_stockmarket_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.stockmarket_stockmarket
    ADD CONSTRAINT stockmarket_stockmarket_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.stockmarket_stockmarket DROP CONSTRAINT stockmarket_stockmarket_pkey;
       public            postgres    false    221            x           1259    16551    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    208            }           1259    16488 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    210            �           1259    16489 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    210            s           1259    16474 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    206            �           1259    16504 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    214            �           1259    16503 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    214            �           1259    16518 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    216            �           1259    16517 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    216            �           1259    16545     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    212            �           1259    16541 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    218            �           1259    16542 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    218            �           1259    16561 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    219            �           1259    16560 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    219            �           2606    16483 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    210    206    2935            �           2606    16478 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2940    208    210            �           2606    16469 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    206    2930    204            �           2606    16498 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2940    208    214            �           2606    16493 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    212    214    2948            �           2606    16512 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    206    2935    216            �           2606    16507 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    212    2948    216            �           2606    16531 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    204    2930    218            �           2606    16536 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2948    212    218            0      x������ � �      2      x������ � �      .   �  x�m��n� F��)�Ӏ�^�5&MY��hMR%馽�c�Mz���|�?0�O��r�Mד��O��l��- �n�zA�%�����?��ؾ@P���~�e�QYP�]q9�ck�'XdlC��GƵ��:O��r �ڼr�XG/Dw�� bI%`�e���U��6�Ul��wG ����X�֡X���i\���ֿ�W%�Ҿ�M�E2��r��G?��W��h��I֋S�@��y'=&�N�%�e� �JH)'X�mu�`-&h��k1A�d��-��]S��o�Dzc�#"�l�Ko@ �Yz[:�;��gw�����.Oo���(���n�����ڏW����"[�N���&�;�i~���}K��]p��J�gY�	o����XF�@�LG���� �%{�a�r�X|�W�|	�^�j�$.�~�~���J��N�������-�RD>������Ǉ���2dtx������Վ�      4   �   x���MK�0��s�)v�-�&�4�	N�E�ut:�F�f���l�����z���?�vI��`���0�
B�y��É_����L|�/}��:#���x��t��h�Y��d����q-*G�)����	`"P�ڸ\���6N�z�^q�4v�T_����r�M\�i7�o�;lt��\N���r핋����X��N��<��ڢ}�r�P�}�u6���K�@1�@��a.��������3E�-]p���o�a�__R      6      x������ � �      8      x������ � �      :      x������ � �      ,   �   x�M�K�0Dמ�T�{�JU,A;n_JZ��z3�l�v�GS�Q�l�7M���)��N�S�p��g�ɥ�KM�e/p!�-����cm�*�w⾜t�9n������1[���4��R�0-�&7��=�q �#SA      *   �  x����n� F��St_%b�'�r%����pռ}��$R%6�;̜�����R��6v!�nrə����=� GG�@$����̒�'0R�ђ �9�nz"���D�5����\h��`G�iu~�ks>o2H~���`W�2rN�Sr~�o����ݻS6��R�Ya�?��o5�.7z2��FQU]�fk3$�l��b,��͗���6ALI %���%�Î�)\"V)�Q�-��?�;r�`����1���x�;[���^��(<������V�H�\ֽ��v���O3��I>�:{�z�1���ؕ��8�pr�����$�Hꏣ�PX ���~Q�VT�2?��cS�bxÀ^���9����Fn�������΀o�zs�ٶ��Ò]���T��uAu1���hM[I����#eG*H �uW�v��7zih�      ;   �  x�m��n�@  �s��WX0�6�M�NlP%�nvc��O+���	/$3���ҿ",QW��l��C(��,{ۧ��<�\H��Q�xф��-��-��Ӫ�0� W�u�mk��I8�hU�W����,�nG�Y�il>�9t�bN��C^� �*�،Oya4j��/�XC>��7%�H�R�}I(��G��Ij���hU%�a)��9PD��l�.�]��B�����p~lL��F��z����X֫\�Ѐ�h���;E��#�h��v�t`۵���{�m�S��P��RDy�����].1!�4E{j]n�Ф� |JS�O;�	0�3�.�û����/���-�m�E4s�au��%�rr��U�=�ͱ���M����zx��,W=�����L�~�fq2���a��V��k[V�)2� V����&%mw�Q��x>�]����ď��ɨ�+���!�cV�<�{�{���~ �p�<      =      x��}ۖ$���s��<��ǒܲ�L��%���5���7ȈQQ�+*�;x� �������?����~<~��.����7�!��|yFC�'Ē����3��^�N^���Bz�Sro��#�b�;ԨA�>�√��풸�-�G��>�� ���y��?��CY��wh�#z����b9�Qa�@'4��t�7^s�h�(��k�FQ��L���QI{�g(<�wx�f�P�3�a:*�������Z{�;�wC+�u��9����"����2����G�T<�bT����0�ړ3��T�千�����￁��7q�JV�Z˳�Rb�jHz����&��z��g�G�Dʧ�5�/չҞ1Pd��[���As�e1A$�#��:C���ϘL�1u��G�!A�ļ`�^���r�.xh�XLہ��(��K��Y����qx�nk�hX�4t����+i+����|��R�[J��F)U+��14�3�RvL\0��Zķg�B^�/Z)��c��H惵_�f3�3�&l~JZC�ؘU �`��Ҕ!�Z�3-��L�����`fB)+���i�Jìy��5� �]�X3�:Sm
?��"�Рc��gv�^��C�3�@����~�����h]�|�hK^�/�bQ����y���?A^�1M��?��Z���&����r��V�����\B;�����?߿���ƣ=bG7ź�!�6��1��j��<a����DS�������F�^s�h=s���<�~3�	i���m�{����:5� j��E�T�>�A��|d�h'W1bK<-��2�V��z۳$�(�-~b�U�ѥ\�d�h&=[�����ZB��l�Q����Q��q&U���*А��hSiP无�gp�º(��q���4�;�Uga��4�(͙�8˳�#�~(�YR�Y���� ����� ҇���/T)@�Z0>�/[��>k�LL�oZYz��&��i~gBъ2�dj�ZWf�A���Y�v�Q��ma���%e���� sJ0�	�O��ӳ�d1ג|y�I(r����_~�'��$����)k�XC(���1�k��X��Z��B������#̡\��X@�P�����!��lUӓ�$M1�]��fy�&�j5١$Q�n����Q��X\��l#�D��E��C�0��� 1Ȣ����V���X�=X��N�bi�����"��|�$����n�wP�/JE������{>���4����}h��������Pr�T1�{���>|�~EU`laه��e�)[H�(��4��[x��G2�X�Ԃ��$jat����Iݻ#��&Z��9���Py����%���6^q�މ�]���-	�������z��X��ZO�[7~k`����{M'����K�$�<(�a0-D|A����`�i�a}CY��\��v��%z��r̢%t�c�}A>�ε5ֽ^S��x֥]u��F,� ���o��/��5]6��*��ԓ�p�Q���/�*ګ����S�&K���n�}�d��K�x�K~N�!��o�����o��]�T$ᔛ5]k���Lz��։7���Vb�����V����\�1�bE)���S4[�%a�D�L'4ƻW�M�7X��1�c����9�k�������1R���KD�4�n��⩿<�^vOQgAp�f�0A}O�܋��+�oc�A9;N�>�u��6[�-�`�a���%�UZ�G������?f�Z}�}�S��^^Z��J���6_�r�l)��e'=#�G��HX���.cW'��<#�!TOsT��k�A[�R;<�K!a�d�"m�T�oZ)���⽰�2:�9���(hF��Rt@/��/F��oVZ0R@ju$M��rC�沒K��S,W+�a�6n7��#UPVCl#L�x�[dZ��l l5Ĩj!���C�-̓�I�6�پ��M����x-�����JT��:tBf%�~��D�f�_Z.`2}:����Fe�MRʀ��!R�AC�����>������~��[*�]���Da<���W	Ʈ�x�3g�7>X�6ۭ����k��}L�f�?|oU$�������K}��Z��;-T(Vzq�����Qt͇�J�En�I�6"<�����h2��N^7�B�����t߼^-���>:fp����{M�JpsOg��>+n��C�A�@^,�~�E��z��cڤ�S�bI'����`�f�w�3J�rxd|7h9
q<!n1d����tB�0��Cr�����>p���<�L�}�e�!H{�Ǩ�@�oP� �>�ލ�!hɽ��UD;��T~2js=V&��Z�;
=����na����
����YT-�.%�Z�k��F��P�#)SO�,��²-�S�b! ���#�f��ò L��E��D$n�,�w�0��`!m��I�8q����gA����"�A��G��lA[8��-���<�J����[=Ɣ�����%޵Q�`��В
�'G%�'�"����W�ⱁ:l�2�8�ُI��Б[���R������`�@>yꊼs��)[V�cP��(g'^Tg[��� ����"U���>�a��q�?c��oV���I�A,��M �ϡ�rq������ى�VS�������2?ӲsU������	^1t@��T�;��%F�L�:��<�l߻Um0
���o���" �@O�V*?��b�J6Z{ѻ�K[f��<A�l�bh\Wҫgk��~���~~$0����#�����GX��^ya�o���{��TvL��{�I>h��>��b�׾��[dG[ޠ�_uɡ��YL�eqW���J$G��(���e�dN�O.53� ��̈́ǱlV�-u�'D[\�̆�F	����L��$�I����a�'a�1�*d��1�q4K��W�29���A��cW!��j1 H/{���N�.��:V���e��;�����H���a��E�].�E,����h��q�xCw)mY�FL��r�:����P��3.�m��!�bw͖
�qX<�ĵel�K�*5�vś��aZ[gkزQG��sO�+��ֆ=R�J��1S��f�%m��N�j��e:�E&Ekj3�q3.�vR��"����h0���AB� �V�i�G̞�~	i�Q�fJ��ڡ܀�+��حM�J�O�-"�M&�]����	��J��6�������x7�K�?�e�];�#�S������/P��3�cm�q6�F.�I5�GI�XT��]�Y!�Y��jC��A\��zuN�4��o/���b~2v+�����#� �	%�`Bk�]�vӏ�!�m�㨼��EE�T�@�{Gpϱ�_h@����+-}Z/D�0j�b�C!�)Q�г�����[)e�gI�G>ڤ7�ϰ�:�F�مQVH��.����FT>����r��"�7Wh�6���m�Fvj��}b�;�-LIHS����
ow:�E��{q��d���	Lf�P��$�]�T,&>��@mx��T���bxƌ�,���-���{K27��6��D��2�R�.�P��~���	t��-w�R������O��C��S��o����{̩��/��~N������ٝgDv难�Q&��}[<7��:]#?A�Y�î�4�_x6�OfA��-^�_��巯߿p�uZ�w#�1o�WK�h�lA�����$�9	K�'{a��1ZU���D��L#�ÊD+2�ƚ��2�S3�G�{)�7<֭���Ψ�4�jw%�4���A�߻���c��s�Iq�iD� ƗC��JKG�k��G�Q�p)�� ��(���#cm�-��$�Ecv���[<E�I)R����-����ӈ	-�zy��V�Z!9Jj+g�tV=�Uc��I�ջm��M�R�]�JÇ�'gP:͡�QwP_@��a�U��[����u?��X�T���
�.Kx5��M��1��&v��� d����1����.�V��8���to�t�~*�zA'�~*�z�2�l}���1���a�(|��]/�߿���m�~$7�}���>���8�S�]�e7���    �ȀK �B�=�8��cѿ5��D�� �H�'�Q��&�Ho��O4�'�X��!h��i���J��-������>��I�t'O�D�����I�'�� >	a!5�WU��w�[��m3V��f� o!��kP���bt��6e����/���Y�Ƌc�Z�[��h���b*�-l:��J�����ؑ
�',�/Z�b%QyWr�0&j�t�^Tn�D�O�
y�CF}��#�i!��W�t拹�`��:�C�cn0P�o�2��9U������VcQ�������0�0cAz�����=%���ah�[�u��@|���L�w��Ap҉t����_���#}��l�-u�5}v�\��gl��,�r34M!��hs����|�U%�F�Cx���r��K���=�:/o��cԇ��I?�����9"H���aG�Qo?��5z�
��Ӏ��R%�" I�N� ��s��Hz�F�Z*$�X#�Bž?��&�'����1������m� �����a���꘴Ȅ� �P�R��2��Nߟ��s�X�1i&�����82��qLAʤMo[��Z��,/b��T�5Eȡ��3���I�ƅ�+��<:5�3�S堉Ǣ��(7
��g�q���,=�����ᔛ��f�b*�\���"�w���C|b����hQ3�p��~L�������?�A8#����rӪ0�X*z���1I�wk�A�2u~Q7�b�����E'�N�5F��c=�4!4B�����������̓짛�U�����҃<-�H�_��j:+�,z�I���ç�he�]`Fz�ZCٰ2j����	+#X��(n���r)]*Vh��������K�jSx���|g��;��J/�Z�?'�N㩭X�O���F�/��dc$]=�����.tG֌��+ݖ9��#sl�3�1el��=agC-2�7օ=c�b�n���G��������'Bb}q���G�T�O(�P��%�	V�'G~�����?���H���ɦ�)�-�ަF�0���'��?�Dn@G:�^1��<ޖ�*���@O�F����0�c	b2�Ѥk���ƞ�=t�L���c�r�$��5#]L/�ôm�� ����'�x��Fgc�{��1H�ڇΥ{�&�������x�.v���{����R�x��у���0��&9g�<D�����V��.ӡ�Z����^��+t��Ʊ*����������e1���00� �=�f�����'�]��"�]rw�.>��pw9?�*w�g���������%��3Ny�dvX<������1m�g`�������0*���f6�':�6̌���c@�\5#>�ͤ0}7&'5-�v@�ɴ�� ��P��(���P�^����t<�.�x�|R���qҒ?�ЃbuDV����'v	�J��=M2��M?��Bq]�I��n4ij>yB�
�c
z�S�t�:͎5�Φ�`�濭Yv8繈�7��R�ѧ�������yA��~p
�&��Wn��m(���j
�@�N�m�!����X��I�/d�f�V�C#�Xd�ЏMo{�^���ٸz���5��%�I� 9a{�T �k\���7���"<)~��.S�|T�������M_5Uc��֊�j-7�MtQ�7ܾy@�[��1Tb����t�x+��SM���W"	<�.�>Qf�`s���Q��7g9R�JF�&pq=�&Q�m�5�.��L�Վ��� �]�\�@������1���CzĚ�3]�i2�}W��>am��x�Ԛ{'k��bdK��<�v	J��4Q0&�<�Kp�{��?̡��6�2Kɋ&{�Okj�����.U����e,ag&�?��J�5��0Ƒf߱Ly7%����ƍXr�Xĥ��OT�2;)hB��Y�����deZ}�T�Y�;���j��˨Rz�:*k~�y�M�����$,����v�1# ?TT�h�\�U���퇑�)f�Nf��X��\L~��A8�IK� e�����8���).�xʊٛ�m��kKb�޺g+���Ӷ�y�Z�4W�:�(n�؇R��L�u}�������g1�3i�!,D0T�����N}�Stho� _�~;t���Ȕ������9��d��a��H����ʥ�}dnPvN�&���U�i�~�T�0���Ā�]�ZR�ʉ��W�+�5R���x8@M�Z~����<��j�U_�cH|�9+-���}y�)'rz�H{��c�Z�B'��"�f���,T�X&�Q�t6w�>�������@N��=��:t�`I���bu[���N��vʿy�C����x'S��9�F��5�$G!�L~���b����1�m�/MS�8'!b��FJ���J/7m����9^�����}���85124�)�|�چ�ʵ�PY9c�����5ꐦ��Y�����n��"���h��k��V�5z��];��x),�^$.��t�R��uE��l|o���t4|o���ҝ�u�s�Ę:.;M���ٗ��Ĕ|P�KJ�DP�kJ��K��&g�H�yF�E �f��
yj<�k�������F;̗����g��E}���4��B�dͤ�>���ߕ�]�ÿ�;8��o�|��_���6Y�����v=�"4@��y���Xę�(s�5@��HJB�呌����΄��$�5�b!�=�X:ɻ��0��y� ��`�щ�Bٗ��XL�#[A'��l�m,M"�Z���" 桬+P:��ڃ�O3}H� �;� 什"'�s(wq���0����5�ݠ1�=E5�*&B����J�=��/��P�垜!AC�]�I�h��x�{���	�#�e���r��?�y�y�@����Kaf���%�u��'w������y
�˛ 2���wIy3r藙~��+G&7}���2��$�B,h4=�G�~��z?��d����r�:��1�0�J>p:|����_i��3w�2=>���"2K��YS��	e����z�&���X�n�v���t�hL܁�6Ҹ�bpRN<+�W`V��9��H��J���	&��i��#��,��	l���bƎ�%�����V���Ҋ=V�2�\?�x�ɫD�Ϲ�xI�I��'���ԭfzPm�1A���Nm/����C��^�#��%�f�8�uav������6��L�L���=ː��{i���C{���y��_߇uDl�٘����#�Boz�,#��þ/f
	�vRJU��RuX�:6�R�us�������)兞!R�'ǔ��(��tڲ'>{��yf*^��mU�f:�i�sHj+�UeG�5�i�Sh{�~�nUd�fF��4(󬁮���U=��EӾ~���Td�7觔��@�.���Ҥ~A)���%ݺ�5#7AI���+(���HHI���+F��~N({��ڢ�B�g	�v�/1���w�+�;`�`�e��|ώ�y�`;���{x�"9�~�ƫ��H��S�:��=��j{�{��s-ɞo4�`L`�wI}j/O�QF�:��n%���Ѭ�a8�#��b:��k���l���F��L�U���.F{z:uv�%��L�݁�ot�]��V��]P��Y���ʦ��;5�б�8�9�5H��P�����J9�ȗ�KRN�<�Y\���0q�ًk��<,�m���L4����%)��zT��u��w�5`ׁ��KĊ���3�z����ٰK��lJ<�X��eV���r�6�r����8R�%�$�Q���m"�Û%\��'Cy���K�I�^�.�#7�
]7����˗�?F:q��O&F����f��I+�Ȗl-���y��7;bF(O�}�vI�-(���		T�wR6ɴ_��yՋ�m���A[ތ���f ~֨�2L�(Le,t�jE��j�'��9f�)���1��H󫲚`ܑ)t�X��- ���բ��Vk����5
��%�c���Q	�$�l|��ۭ�J����=��XN�z���1;���$������G�J�    7��÷��?@����%yӹ�#zɲ'N����"+J3fO�tI'<�s��2xR/z^��ҽ�pG!BYq`��x欕n2���`��o7\�%�d�88��ܖ�#��	���/_���w�n=Re��S�of�=��@;"s-;(�������	L!�F�*�4�th� �
�hi2b���N�:4���DЫ���g��ѣ<�W�z��ʳ��94�����ʩ�fY8I[�Ѣ���UX!�	%I��2��i��H3e��9<�d�bĒң�0 �t1����]�Q1���}�;Lx�Dj��*����!�Y��Z�2y)��#�À� /pv�ջ�^)F��]�
7u,c��(+ZF�	!LIn��&C������l�2a�|��_���Rঘu��C=��r�EFq���)�K� �� �쬒E L�|�>�~�"P�����˝ �|���_�0&y��ݸ��U�A6�𴖥b2��G�U-��jJY��4r�l-��nZ FS2-�[��\���=3`�I)v3�)��j��(�AZS��� z�s�н����S�IW��~�_�������ܽ�Գ�� ���":�̮nLr�zI�|�j+3�z���u�M3ނ6��� :�4h�]������� ����C����]P$�O���?@��� +ˊ&���e	��ȑ��)[�h�^Pub	�I�3課��?���־�	���v	�]i_̮,��x���of�..���9�� �L��Z_*�&�l��4~B���[���EY�`P�'u�ö� r��,�0:w0����j�=�6�9�y�����3�N*��/���s��MWL�I`ʊ�@��˽<
	ؙPF���=G�c���� �v�#��Ǡ��J���-3�U���2
�ugr��@��K��>�f�}-@�0�j�d�o�������������3�%��I��S�mU:�d&j3|F�d�9�R�Jw�͠������� '{��RRڑm1�>$ޛJ�m%E�LgD3;I�P���0jV��.mb0bfv�J��m��Қ������ �J眩��JT&�
��G�����IY8��wz���<��e�!
K_@V�E���͒P&����H�U[.
���J���tA�����]�PP�E|�DNI�gB���sV�:��%�1!��Uߗ��&��և�_����U�LL���6�װ
B�}�v�&�
�4�3P�A��]�˥�E/�ɵ�ެ�t�ue:ubk�P7����ʣ�\���c= ���ݐe ������ Z/�&XC��f
|�!��Mkt�!�Q9�����?����߰f�����������SpGT9B��ή��6Ċ�L���ݘjx3H|쉃�.�=����I+�^�\�t� ���H]�Bd	�t*�P?�lm�랹��x~	�j۝&L��[��NN�W�u)m��@������쩮a����ܰ1�ě��|!(��r���5Z�-$ݛ4�+Յ,����	���B��-%��{JF)��e"(tX�"���l�ӊ6���)i��#)�Тs�3�!�6>��B~nf}�
��:�f@4�7�6��@���:/s��%�d4�0^Z,�))�YJ���2[�)�qL�rD���b���<��bC������FǙm��bCC��ݵ#�uS��/��g�x�(��	F?�Z�T�9�`"�f��c*5��/�F��\/^�`￾��o�����>�q�I�;Z���M�J��p�S{ha�q&�3�>�q*���x��>�b���C�>��h�3	��7a�xM
zo����)��4��t�I�M��p�Id"�E4�}Y�+�ޗ��U�Ī��`����z_
�feI��m^�g��  He���H��M��|��̥ͤ<��i�Q�t��ϰ\lT2���vHzm�a��+�^-�ڮ�*�kj�_i���YV��dks"���D��U:��ɷ��g(<s^[U��6g&�l�w���z��f1qG���r��1��~�Y�/�I�Y��f9�f�w1#�M��c�m�,'~�H9L�=}3fϟ�pvMlP�(>�5��'0'�T>�0��r0��ܳ9%n�gs�`<�&�`;�>F�>�w�e�|��ԡ��	�3��%`>�uh��{�l�\ۀ|��r5 ��,U���E�6�/��P�����߿�����G�죾)�Vh�]H\<��O�G����|���FJ�ϟAe^�U�*�A�&��~Gf��m�v�-�@1z����M"cr2o�_�U!;��� +y����IW���y-ڒ�F-�g����^Tg��Ю�dH�~E&c2�Oԓ����?����?�V��yl����ul� t�Y1.[�Wd"��3�tS��1;w����P�q�����?�#75V��n�ݒ�1F��ے�0'{�^2�qQ��3S�sS�T��"@}{��r��D6��Ŝ��D�*��ѦM��ݤo�R����z���U�,�Zc(��)���[7��f̼B��ba
�Oz1;R��Ǫ��XK���
�3�ۀ�&da�����g	���	Zv'���-N����h9|ēqlR��A�'���O�$�;��?�7�b�-�r/��_y���z�G���,j�f����G�?k�L>�W��Z>#\ˇ��A+Z �$;����DߖxE&3\���/��1�C��D.��폯����C�5����N�X_5� f͐�Z�n��X�&���\v���'?��cǒ�Џ �T�S�0��Q�ǦQ�����S�M�k�?����R�1�&�5��x;;��[�j��O�h蹃�;#�8ؖ�� �~P
� ε�z�tm�`�'?Zo�#�օv���y�A���l��\���j+г��? ��t��Y	�	�kj<w�+�n�_�0ǜӭY���17�r*���c�W��}�#�B-��t�d��~#�OXyd=w�=�P����E��]�j�(\�ț<@>^y�Z;�� ����F�Z���¬)S���!{R���eLK�ːM'C��4_��ñ�t��H7���u�ׯ�~����y���[�k��pZziD2�v\�sZ!�c�o� �C�5I_,��I�BϣO��wߏ�ț"
}Վh@V����1|̼tZ��.���JC�~��;.����n��>:��]��( ?��99T�6�����w�o+�9��X8Y�N�;�hA �`�>�d���۽?������~}(��@�O��U�K?r�r�T���#;���*��\��jc��*�4�I�X'�[9$l0���^fC��eq�
�T�I��U�Ǚ�����ao9��(�Q'�1W `��^�� ��}i����Ad���?���C�[2�[$���7گ3wx��kҏ� ���/�籆/����#�BJs2�1�f��k#�:�5����^��}��^o斏��</�+���c���zaH'���Kz|d��F*�:K�#�Pt��^/d��, �Ú���� ��k-�Ǖ2?=bg��d5�B�;E�����D��!���\�m�F9�b�a(x�m]� � �5���m����b��c��sƟ!��I�Vײ�s�{q��|���)�߅q�EX9=�s]��5B�9�	ݛn3]F2�t��A�e�<߆�a�S�)M��|��l]�6��������������K �i �����Q��F�ZO]�{qdr�.Ǜ�z�;%-;� �ù��?� �4�Q��=ӊ�R��dl	Þ�-��%�V�!�l I'�P�k'�l�w���!�Ќ�4cD�3�u�����ұ�<go��r;�]U���1��~����y���m/�;*T�]�{T&o�%�DЌl\���Fl��.EvgI��K�z��)َ?���T�02�I/��c���V�r-v/�@��J�<�`�� ��Y�V��; �Ћ�6��"w��ݿWwStd�i��F�.�J�`ø���J9ʕʽƻ��$2�0:�|���~���}�Yf�u����s�$�Ÿ^�&C��q�KKa����j 2  �'K�Lu��-���AG}����棓K�D@���4wua�e2�T�i����\&���w��(Md���*��ym���/S���搶ħF1��)��q^���<%D[�n�j܇&�"xK�wv?z�Y��uEv�Ag��RS�\	�KQ�����mcǛ���U� ZJ�J��� n��݆p�F�Q�w1#�ҳw#	n���~15�6��4� ���r:�lO�!���^G~ ��f,��6��H�ү��_e���vE6��_���d��]t`�__��"���K�y��Z�� 9��������6ʟ     