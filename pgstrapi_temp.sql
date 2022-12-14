PGDMP      #    $            
    z            quentn    15.1    15.1    U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            X           1262    16862    quentn    DATABASE     h   CREATE DATABASE quentn WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE quentn;
                postgres    false            ?            1259    16898    admin_permissions    TABLE     J  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    postgres    false            ?            1259    16897    admin_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          postgres    false    223            Y           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          postgres    false    222            ?            1259    17020    admin_permissions_role_links    TABLE     ?   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order integer
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    postgres    false            ?            1259    17019 #   admin_permissions_role_links_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          postgres    false    245            Z           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          postgres    false    244            ?            1259    16920    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    postgres    false            ?            1259    16919    admin_roles_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          postgres    false    227            [           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          postgres    false    226            ?            1259    16909    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    postgres    false            ?            1259    16908    admin_users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          postgres    false    225            \           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          postgres    false    224            ?            1259    17032    admin_users_roles_links    TABLE     ?   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order integer,
    user_order integer
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    postgres    false            ?            1259    17031    admin_users_roles_links_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          postgres    false    247            ]           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          postgres    false    246            ?            1259    16951    files    TABLE     ?  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    postgres    false            ?            1259    17067    files_folder_links    TABLE     ?   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order integer
);
 &   DROP TABLE public.files_folder_links;
       public         heap    postgres    false            ?            1259    17066    files_folder_links_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          postgres    false    253            ^           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    252            ?            1259    16950    files_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    233            _           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    232            ?            1259    17057    files_related_morphs    TABLE     ?   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false            ?            1259    17056    files_related_morphs_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          postgres    false    251            `           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          postgres    false    250            ?            1259    17009    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false            ?            1259    17008    i18n_locale_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    243            a           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    242            ?            1259    16942    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    postgres    false            ?            1259    16941 #   strapi_api_token_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          postgres    false    231            b           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          postgres    false    230            ?            1259    17045 (   strapi_api_token_permissions_token_links    TABLE     ?   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order integer
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    postgres    false            ?            1259    17044 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          postgres    false    249            c           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          postgres    false    248            ?            1259    16931    strapi_api_tokens    TABLE     ?  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    postgres    false            ?            1259    16930    strapi_api_tokens_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    229            d           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    228            ?            1259    16880    strapi_core_store_settings    TABLE     ?   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false            ?            1259    16879 !   strapi_core_store_settings_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    219            e           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    218            ?            1259    16871    strapi_database_schema    TABLE     ?   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false            ?            1259    16870    strapi_database_schema_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    217            f           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    216            ?            1259    16864    strapi_migrations    TABLE     ?   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false            ?            1259    16863    strapi_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    215            g           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    214            ?            1259    16889    strapi_webhooks    TABLE     ?   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false            ?            1259    16888    strapi_webhooks_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    221            h           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    220                       1259    17303    tests    TABLE       CREATE TABLE public.tests (
    id integer NOT NULL,
    test character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.tests;
       public         heap    postgres    false                       1259    17302    tests_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tests_id_seq;
       public          postgres    false    261            i           0    0    tests_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tests_id_seq OWNED BY public.tests.id;
          public          postgres    false    260            ?            1259    16978    up_permissions    TABLE     ?   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false            ?            1259    16977    up_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    237            j           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    236                       1259    17091    up_permissions_role_links    TABLE     ?   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order integer
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false                        1259    17090     up_permissions_role_links_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          postgres    false    257            k           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          postgres    false    256            ?            1259    16987    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    postgres    false            ?            1259    16986    up_roles_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    239            l           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    238            ?            1259    16998    up_users    TABLE     ?  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    postgres    false            ?            1259    16997    up_users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    241            m           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    240                       1259    17103    up_users_role_links    TABLE     ?   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order integer
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false                       1259    17102    up_users_role_links_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          postgres    false    259            n           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          postgres    false    258            ?            1259    16963    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    postgres    false            ?            1259    16962    upload_folders_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          postgres    false    235            o           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          postgres    false    234            ?            1259    17079    upload_folders_parent_links    TABLE     ?   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order integer
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    postgres    false            ?            1259    17078 "   upload_folders_parent_links_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          postgres    false    255            p           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    254            ?           2604    16901    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            ?           2604    17023    admin_permissions_role_links id    DEFAULT     ?   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            ?           2604    16923    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            ?           2604    16912    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            ?           2604    17035    admin_users_roles_links id    DEFAULT     ?   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247            ?           2604    16954    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            ?           2604    17070    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    253    253            ?           2604    17060    files_related_morphs id    DEFAULT     ?   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            ?           2604    17012    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            ?           2604    16945    strapi_api_token_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            ?           2604    17048 +   strapi_api_token_permissions_token_links id    DEFAULT     ?   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            ?           2604    16934    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            ?           2604    16883    strapi_core_store_settings id    DEFAULT     ?   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            ?           2604    16874    strapi_database_schema id    DEFAULT     ?   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            ?           2604    16867    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            ?           2604    16892    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            ?           2604    17306    tests id    DEFAULT     d   ALTER TABLE ONLY public.tests ALTER COLUMN id SET DEFAULT nextval('public.tests_id_seq'::regclass);
 7   ALTER TABLE public.tests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260    261            ?           2604    16981    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            ?           2604    17094    up_permissions_role_links id    DEFAULT     ?   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256    257            ?           2604    16990    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            ?           2604    17001    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            ?           2604    17106    up_users_role_links id    DEFAULT     ?   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258    259            ?           2604    16966    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            ?           2604    17082    upload_folders_parent_links id    DEFAULT     ?   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    255    255            ,          0    16898    admin_permissions 
   TABLE DATA           ?   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    223   9i      B          0    17020    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    245   =n      0          0    16920    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    227   ?o      .          0    16909    admin_users 
   TABLE DATA           ?   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    225   up      D          0    17032    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    247   q      6          0    16951    files 
   TABLE DATA           ?   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    233   =q      J          0    17067    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    253   yr      H          0    17057    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    251   ?r      @          0    17009    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    243   ?r      4          0    16942    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    231   s      F          0    17045 (   strapi_api_token_permissions_token_links 
   TABLE DATA           ?   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    249   s      2          0    16931    strapi_api_tokens 
   TABLE DATA           ?   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    229   ;s      (          0    16880    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    219   Xs      &          0    16871    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    217   !?      $          0    16864    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    215   ??      *          0    16889    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    221   ǒ      R          0    17303    tests 
   TABLE DATA           m   COPY public.tests (id, test, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    261   ??      :          0    16978    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    237   .?      N          0    17091    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    257   ??      <          0    16987    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    239   A?      >          0    16998    up_users 
   TABLE DATA           ?   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    241   ɔ      P          0    17103    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    259   ??      8          0    16963    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    235   ?      L          0    17079    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    255    ?      q           0    0    admin_permissions_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 67, true);
          public          postgres    false    222            r           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 67, true);
          public          postgres    false    244            s           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    226            t           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          postgres    false    224            u           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          postgres    false    246            v           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    252            w           0    0    files_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.files_id_seq', 1, true);
          public          postgres    false    232            x           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1, false);
          public          postgres    false    250            y           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          postgres    false    242            z           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    230            {           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    248            |           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          postgres    false    228            }           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 20, true);
          public          postgres    false    218            ~           0    0    strapi_database_schema_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 2, true);
          public          postgres    false    216                       0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    214            ?           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    220            ?           0    0    tests_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tests_id_seq', 1, true);
          public          postgres    false    260            ?           0    0    up_permissions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.up_permissions_id_seq', 9, true);
          public          postgres    false    236            ?           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 9, true);
          public          postgres    false    256            ?           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    238            ?           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          postgres    false    240            ?           0    0    up_users_role_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);
          public          postgres    false    258            ?           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          postgres    false    234            ?           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          postgres    false    254                       2606    16905 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    223            9           2606    17025 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            postgres    false    245            ;           2606    17029 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     ?   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            postgres    false    245    245                       2606    16927    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    227            
           2606    16916    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    225            A           2606    17037 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            postgres    false    247            C           2606    17041 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            postgres    false    247    247            R           2606    17072 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            postgres    false    253            T           2606    17076 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            postgres    false    253    253                       2606    16958    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    233            M           2606    17064 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    251            3           2606    17016    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    243                       2606    16947 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            postgres    false    231            H           2606    17050 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            postgres    false    249            J           2606    17054 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     ?   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 ?   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            postgres    false    249    249                       2606    16938 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    229                       2606    16887 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    219            ?           2606    16878 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    217            ?           2606    16869 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    215                       2606    16896 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    221            l           2606    17308    tests tests_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public            postgres    false    261            '           2606    16983 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    237            `           2606    17096 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            postgres    false    257            b           2606    17100 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     ?   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            postgres    false    257    257            +           2606    16994    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    239            /           2606    17005    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    241            g           2606    17108 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            postgres    false    259            i           2606    17112 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            postgres    false    259    259            Y           2606    17084 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            postgres    false    255            [           2606    17088 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     ?   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            postgres    false    255    255                       2606    16972 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            postgres    false    235            !           2606    16974 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            postgres    false    235            #           2606    16970 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            postgres    false    235                       1259    16906 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    223            5           1259    17026    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    245            6           1259    17027 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    245            7           1259    17030 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    245                       1259    16907 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    223                       1259    16928    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    227                       1259    16929    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    227                       1259    16917    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    225            <           1259    17038    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    247            =           1259    17039    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    247            >           1259    17042     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    247            ?           1259    17043 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    247                       1259    16918    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    225                       1259    16960    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    233            N           1259    17073    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            postgres    false    253            O           1259    17074    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            postgres    false    253            P           1259    17077    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            postgres    false    253            K           1259    17065    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    251                       1259    16961    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    233            1           1259    17017    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    243            4           1259    17018    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    243                       1259    16948 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    231            D           1259    17051 +   strapi_api_token_permissions_token_links_fk    INDEX     ?   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    249            E           1259    17052 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     ?   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    249            F           1259    17055 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     ?   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    249                       1259    16949 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    231                       1259    16939 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    229                       1259    16940 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    229            j           1259    17309    tests_created_by_id_fk    INDEX     Q   CREATE INDEX tests_created_by_id_fk ON public.tests USING btree (created_by_id);
 *   DROP INDEX public.tests_created_by_id_fk;
       public            postgres    false    261            m           1259    17310    tests_updated_by_id_fk    INDEX     Q   CREATE INDEX tests_updated_by_id_fk ON public.tests USING btree (updated_by_id);
 *   DROP INDEX public.tests_updated_by_id_fk;
       public            postgres    false    261            %           1259    16984    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    237            \           1259    17097    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    257            ]           1259    17098     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    257            ^           1259    17101 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            postgres    false    257            (           1259    16985    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    237            )           1259    16995    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    239            ,           1259    16996    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    239            -           1259    17006    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    241            c           1259    17109    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    259            d           1259    17110    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    259            e           1259    17113     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            postgres    false    259            0           1259    17007    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    241                       1259    16959    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            postgres    false    233                       1259    16975    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            postgres    false    235            U           1259    17085    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            postgres    false    255            V           1259    17086 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            postgres    false    255            W           1259    17089 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            postgres    false    255            $           1259    16976    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            postgres    false    235            n           2606    17114 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    3594    225    223            ?           2606    17224 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    3590    223    245            ?           2606    17229 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    3598    227    245            o           2606    17119 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    3594    223    225            r           2606    17134 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    3594    227    225            s           2606    17139 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    225    3594    227            p           2606    17124 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    3594    225    225            ?           2606    17234 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    225    3594    247            ?           2606    17239 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    3598    247    227            q           2606    17129 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    225    225    3594            x           2606    17164    files files_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    225    3594    233            ?           2606    17259 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    233    3610    253            ?           2606    17264 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    235    3619    253            ?           2606    17254 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    3610    251    233            y           2606    17169    files files_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    225    233    3594            ?           2606    17214 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    243    225    3594            ?           2606    17219 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    225    3594    243            v           2606    17154 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    3594    225    231            ?           2606    17244 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    249    231    3606            ?           2606    17249 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    3602    249    229            w           2606    17159 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    231    225    3594            t           2606    17144 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    3594    229    225            u           2606    17149 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    3594    229    225            ?           2606    17311    tests tests_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_created_by_id_fk;
       public          postgres    false    225    3594    261            ?           2606    17316    tests tests_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_updated_by_id_fk;
       public          postgres    false    3594    225    261            |           2606    17184 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    3594    237    225            ?           2606    17279 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    257    237    3623            ?           2606    17284 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    257    3627    239            }           2606    17189 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    237    225    3594            ~           2606    17194 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    239    3594    225                       2606    17199 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    3594    225    239            ?           2606    17204 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    241    3594    225            ?           2606    17289 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    3631    241    259            ?           2606    17294 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    3627    259    239            ?           2606    17209 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    225    241    3594            z           2606    17174 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    225    235    3594            ?           2606    17269 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    235    255    3619            ?           2606    17274 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    255    235    3619            {           2606    17179 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    235    225    3594            ,   ?  x^?X?r?J]?_???B1#???T??Y`??D(@?u?????XL?v???.?T??k??̈MS?E?ߟ??Ns?Ui?y???????????t?pD?(½????&IH??ç/??4?:?wn佺?.\ϓ??w????6?5{??>???o?NЊ????@???Lݼ;eQ??}??G??zn???K]tΥu????!b?N?v?{J,?>?8f????? >LL???wg?wD?a,duի?wNi?T????[???3ߩ?s՞??+??sπl~o?̻????V#UzR??????h????U{???~??\?
??+?꣪4
??,?Sڃ?kP]~?\??q?l?Rm?&Ѿc??i??Y?L??:??! ?If??ߜ???t???('???R?FZ?}#??c_N#?ڋ???r??F?n?]r8??y-??????M??????e?2݌b9&?????OM]?d?G[????_?7&?8Z?6?hU??y>%?UU?%&V?hcZ?I?°롄?=!?8j?ņXSb??U?8?N[??'????i?8?SJ???`c-??pFrJ?񤘀)h?ߍ(???Ԙ?m?qa??>qf`?Y?E??i??&?{?'??$?8F1{????*?]{8&Y3?G?a+B?	?1???#?^?q???#
8?Tf=?04?(?????8??5?S?]?6=?G???dtzujJ???b?){??l,b?6ȋ?>??????l4,L??kZe*w>??qX ?
?f?$+??~k???i?"?\?i?XuIɧ?1'g̊?X?#?4+?Ԭ??DR G?i>??Y3!$??@?{??????z??L1???182?Ъ?}Z??????!8????+??}YD???w??7??R?G?.??.??Č?ii?-?,?D" G?pA?:?	qZ G?h$?W|fz??C ???G????fʕ|??$U?Uプ???!vNF?g?]??j??/??}?????NF>	?+GN?['+??ԕF???VVN???Շ5??2m
??J??f????sL~?$???Qsާ?$??Hm:kF?(??c?
???L?v?x?F<??>x|P?jW???ξ?4>$$4?6?g??8 ?#??9?ӿ?Yc?d???v- G?%=i??H?3C?K?J??~??w????????J??d??a2??.????B?????[?y?Ʋ??Gp?i????zf???{????pd???V??3c?9??E??(m??:
?'????? ?      B   C  x^?Y?$!?33*??????nu?I?? ????r??ϩdL????j??????љ??????X^? ????.6f/??Wi??aVl?^G???ՠ??4?9>;v?I89??
'?J??*7?j?????q??x?sr??????c???8?;Q*???Hg	??l???ll??Tmlq?nlq??nl?\? ???:c???c?pQ?_	??[???vmq???x\W@??' >?'??????j?i??*?trl??y???U?????G@<?+ ^???'??y?????1?S@L?˻D^?ol????x????$a1      0   ?   x^u??n? @g????*?-C?,Y?\?#9`qP??K??V??{H??յ????!*.??????~=38???3`????w\????q?RB????hL?u?-跓??q?V??颦KgԻ%孇??`???b[??x?b?XBtK? eNL?n??,??Ly7??DY)zEԹʾ?(lS??ĵ?H}???B?????M???𦟆???K?~?      .   ?   x^3???L??I,??????r?RR?Rs?R??,M?s3s???s9U?UT??L?S?L*??+??CR?\M?#??L̢?+??,????͊???
???r*]??L?@fQ	g?2202?54?5?P04?2??25Ze?S??+F??? .?      D      x^3?4?@?=... ?      6   ,  x^???j?0??ǧ(?<57???{?B???k??:V|?;???? `????ˏ#?^Is?ۓ??U???Mdz??z?2?e"?<d.????F???h????.?3Rk?.X????c?a??????4??Y?ϓb??~??'?1??'???)ΓU??]aE7h??Li??)?̕?,\?k????`?l#{?]5h=U]?j?`???e6??LU?ʼ??c?T??`?J??q\????F??y~5??4?H??*e??J>?k?4t?-B/bh???k]?Rۋ?(??p!??)?	?D???s??y1?(Y      J      x^????? ? ?      H      x^????? ? ?      @   >   x^3?t?K??,?P?H???L??4202?54?5?P04?2??20г40?)???????? ??G      4      x^????? ? ?      F      x^????? ? ?      2      x^????? ? ?      (      x^?]?n???-??f??)$Ų?Y$i?4Ҧ??
?Xp?#-#.??"E5?5?z}??37΍?p???%l?g8s8?s???yt???y?,?4)IR.?A????Ϋ<(??.-?3R,?z%?EF?mTP?????????*??R?Qr^????*?V1?/ʼ"???(.I?>)H???I?????<<?o?(?1"1?-Dꠋ59??|???w???5ɡ??????)?uP?,?????????8*??y?H?@9~?IY?Ք~?9Euc?	??"̣?R??C?Y?d?ƌ<xp?2FH?ҋM?lڇ¢Z?FB?u?{%???s?4?m???),?2"tvL:??1H՚W?=??l=??N;??$?Q'?J??j??ћ??푥?Өo?$??p???}?,?0'AI֧?U[?"?Of??R????ʀ?4?Z?B??|7?8'?uZ?tѲ?y?X]?Q8?8???zw?7??7??tb&\P??á,R6=/{wX???3??}Pk?+?UC,"???R???>??pغ)???K??a?E???F?d?SHr?-(x??????I}?k?1e????}h?$?=|j?????\$wJ/V0?H](?EyQ6Iѣ?,??P?? ?Խ??٦Ҥ??br?]un½	9?i??%?_??_H?U~??zU.t?t?֭l?p?pH?)??٨V[??m)?Pv#????!?t??-???}?up???T?f?Ʀ4?C'??&B??A?Ҹ??
`??r??A?hه?,(??4W??h?ec?4?CgN?????*? ??p?v?1hw㧺??l!??j???8?`??3Qq
??K?v,?? Xi܇N4??Z+L??';??7Wq^?^E??vp޺m???rrFr??9H?+????hF?1ȶ?ۃ?Ǉ?oNV5E?K9?R?5??RnUU??ߪ?zW
G?b,?!?$?E7?w?b3yWs*;??|??????Pv??=צh?`}1D????DAlj??`TU?e}??"<
tI?|I???~A???;??@[??ǠRm݇T䒯????tb??}??X|m??,Q?>P??s?u?!??3Rd?Ӓ?ec?4?C礱ݰ??8?9?S&??}??Q?^L?x-eK?uKg/?놓?р?WlS????rf?G??E{:j??HEJ?3?N5?^($?腪?Nm?f?~~F?d ?@?|?{;??I?R-?z??47?t_?ĔRo???F
?)??ɧ?Ħ8???`?&X??w??ò8ig?	?:9??,??`??]?\s?K?q?`i?i?
?M?qh℗??%g)Jb?{!??]R? ?p9o?n??f?[%?? * T{?˔.???R?-:?/?K>??ȉ0?#?FB%??=)ؓ??!9ZU?Z\?y??Jv?Qc???dC???(?L??r8?>?^S0?9?????m+8?A͉??!????

???A?8?$vP{o?A{?7:i???$??v@??q????U?<A?T?\??$k??f?? ?bm??CT\?!?e?p???Q????3?lQS??&D?i?AΏ??>?O??b??-??Wڂ????B?'?w?L??(A??k^1???3???ybE,?@"?'V$????5.~?fdjLwn*????%.?	?&?????Y4??0a)$l??8]?O?OQ?낖??s5?H?3?p?#͊C1?5U@?U5%?6x?_C??R?J?߫Z?????Vq`c????:???`?%Ҋ7'Nz??ҩp0??@??)?T??KA3?ꎋU?7??&???M9 G;??"x?48@?hK?T??&0:ݵ???I?a????_S{֩??r0n??ז?֖???ϧ?P4^?Rk??h??H]+?Eew?9?,?'?%??If??/?hJ?IfQ4??Y?͍?i?ihԊ|??!?xn\?N!??Q???◆(gø?NR͸??d͸?ުoQY??u????(?,?߲"??:??&?w?r?sdw?9u???dT"??!?p?v?????Ndv?8?'???ͽ?z?Ďt?qbG???h?J .=|???mW	???*Alw9?? O6)LO??4?f,?qe???
???Y`?>????{?1x??#??C??7???,&l??L?j9?????0?	?[?Gi??鬊?#?V??̪(?-?$??Nk*M?ٮ?1t?tu$?y??I?<?յ[11?? ?r?JE???H?T?y? L?\??y*ZL0??@?2ϣ?I??HԪ??l??????T?l????s&nކa???Jp???|?V??u>???خ????ITX?L???QW۱t?/~b?????Ap+?*??B?9	?U-w??;F???#?^i????*-Ӟ?U????=?.=????_??y	?f???h? ?sy???yބԴ?????1?.?=?-^ёޯ??&o??<8+O???jN`ͭm?m???W????p?(!ߞ?p?ep'?? &w?+??w?L??8?}Z?Ù߁?LE????f?????(ݨ"?0??@?Nx??PA Cز8?ǐ*?z?,??-샾g????>~d5?ÒG??????^?W?ʔ?NYÀ???}?*Zc???????6$:ߨu?p??ۀe??pc??z/?1È??5V[?ٹ+?:H?&a?0???W9M[?1???x?eD?^{???2O/#??k???????wN?G?%^k=nߦy??k?8?g?????RB?????K?)#?Hp??:~h?E?!`?????SL??u?? I"?ܪ??WTh-?2X?I_f0?KZ?????b??i1?J?ŝ??$?5?i?M???P܍oOB?-?'??A??.?[9?Ph?r\6??T`??C?^?gԶp5R??!Ah?6?F??Þ???#?}?N???J??????慎!?4?,?!?[e?Y?7?}?Hq?s???*:?Jƿ?Wj???f?*?pݘ??˼?C,?DMz?}?K{?*?ڥ?2mu]k?"?R??I?Q?
????vv?n'?X;?'?Ȓy0NWy??!?{)(?r?`
-*?T????\?U?~??%??
??G??;????縝R"??ݻժ?X??8??%?I??)I?c֛i?bv??~???p??1S?	Ғf???q?b?3?_,??ʏ?9?f\2?!??????q?7*E<????7?)???????Zh1vE4??Vp??3??=s2\?;@Ӄ??K?$J?Q:??`rb;v????g;?5?P?fCь޴?V?k	"????Ƽr??6$??|?????T??)k??1$f-?`??זC???m?֔?I??r؅h\M?????????+w??6b?5??[????uBj?[?*?r??HLa-ܔA???}p?A?x2E?MB???v?0?D?5?s?|ʹC?:*,L+B ??΋??[?ĉ?7????H`ީ?i??6F>\???֡???kғ?.???????\$?0?C??gOi?3i]???f=?#?4F	???	?0????⋇N\20k'?SW?w?Ԩ?/5??w??=nm?gϒ?y	??S???????R?????t??g?>??? ???g????aWc?P!z?-?<n?&?,!??Q????ݏ??? `?3???.VI?7N?1?b?????O???{\C???s???_??K????-?M?\lZCm
)?d0?~?r:<?T??&??xC?+??????"?K?b?%?Ѥ\???"?#?6???AH6K?dx,??ؐ?????X$?3??)?V?k_!k3ԑ 7??J?wS??V?Ծz-???6???:?XP"c1o? ?<?_r0?u??F?M'?%|?@+?ˬ??=?ߪy?????W??U?쐦<d??W?~??p?F?̠ȓX???^????,C?5???2?Ye??>??]?lq;^4?"hڏ)ˈi?DV0??e?1??M?x?ʦ}(T"?-=???A??V??feFD?[È?cH;?[?<??$?Ak?gnEL?I}>i?a?DľI}>m?a?x: ?4|<e?]??T??\'"?L?s_j?$6??lJe?~??H??Dp?oaL??^?,?:???yf?1??'B%|F^O??&?&yc????ֳ?a? ?  @y?m????|}Ƶ? ??W?#?2Z?òS?O˶???Ö??.G???0G?#????!?2???^b?A?3?ɪ?i??v??V?ص?b?i???󨺕Cy????瓇ìg'>?6???&?z$ű?Mm??M>??!5??}??0)??? ?7?C?h`)=J?`Ju?<O)?r?j??i?)l?????=?.A??ď?I???`?5??????Y??*???????K\?!??&???????%?,O?,?K1?aH??A???e5/??F?????4??????'??????]%9=d???*???`?9????f?C4?[?-W?;??
???>è?[???=>?=?ͷ
??O"9??T?V?P7?ؤ?Q????????3??S˾?F???%?E-4?!?h?<????#U	?0	Ec?Y???&D????.?ÕŃ?|ȝ????m@??z?T9?% ??CSy?`\??l?@Y??!S?<??j??$??B ?z
x0?ؒU?A'_?iN??z?eP?P????<K!? ?@??3v?.?d?R0?ɣAڦw?TL
9?^9!	}???n?0???!h?~?k??7?e???ST/[YLp3?{,?OH'? ?d?????Ů&??bP6?4) %?_?0~?_Dr??y?R?
?'MGH?|!;5????<HJ輶???9?T?D؜$?$q
??? dx/38Ee?_ymQ?ڳt?Ðb?W?}q?
???|???g???d?b?!??Ὤ??w??&??B#?d?*G???z?׽??:驉8O?s?0?B???]?F??Z???*?闾?엻B??E???(??"=?8??Ͽ????:%?G^6?H?1^?K?@y?T?7 j? ??RwE	D??V?{??????L????K?jh?a??˶??=z???Xc8!C(?w9?УO?F??.pb?G??f????Y??'?2?J"????t?kH?wA?$??y?iUA??/??:E090??????8??ݬ???2]?s??	????%'k!?0z?B????/et??g??[XvyM?Ö?jZ??X??IyL??q??8???#?u??CDEL?????0???[?:???e?<i??U??-9u??<??XnZۂ??$?C??R??I߫?'9?ae? ????)Z\`U???g/???????$=?I_??ݴ|??2p???Ĵ ?????????(E_g??Jf??g?&(g????iA??;?3p??׳`?zZ????˾}?6????w?t?&???????d?Oh(?5x???P>NA\?ϐ=??tFGH?g?[?&??????_~?}???Q??????<?'Z߯6ArQ?3?S>PK?????8Ot???r??	/j??&??4?*)g?w???2s????&????0????Ll?K??T4?F?~??s??ً?0Ya?3Xy8kt?V??^????N?????????C?$???c?R???2HB?Fk??~??
g?3(???R|?Щs*??????p????r?E?Z`????y)?E?9?!?_??a???R?|?!??KXb??6?p???????O??ؾx]????kz`	H?'O?~??W??>|??s??G??Y??(WDJ????Zc?e??????:????Ή+&-|?o ??q?ſs?S+??ƸA߳??A??J8^ݶ?m!&??;??????}?;      &   y  x^?]Ko?8>7?b??[$n??m?-zi??[?D?ldI+QIӢ?}??,?i?:??K?Z?????pf8????P?p?,????h??????????)?bJI?N??CB??Μ{H??_?)????lV???E?bN??^??8??JA?6N?%O΂&??eD?/?#?Pл?Y?Y̜0???\???,L?,?w+???lס{Fj'??J?/uAm?t?@A?K?%y'?µ?i<#1?;???D!? ?l(?ß/	?????w???rE???j?n?rWdIp?E????	??|ƿ?Q????!GkB?3
?-?(?(?	u?"KB7?ɖ?)???h??F3?a*??w?O.???={??a????e?f??C???Qj( (gN?W8????;	???v?ʥT>??8?4L?(??L?;_>?????O??ç?ixј?ǩ5?G?*??@i???=??&N"??(a?= ???'|??2?w9RƋ?VJ???YSl????m nLa?p4q7????N?W?U?*?)?%?k??ean*R?CՊ?a????J#????H??4?Po/??????)?B???B-??H?R?6f????k?v???Z?:??+6Fi?%??	?#????\?c??=?kb\3??FR?[,ʙ	?L/?iD޽?????u??
?Z[=??Y5?dV??-?"a???Ӥh0Ҭ?4`?
??5xݬ0?(?PGkV???^?[?C?^Bb?G?	v?h?9??r4??+?|͌!?I	
?G??|%??4?h?-(4mǿ???4u-????;?}?Ymn?=&?D??Bd??XDR??͒??o?#???????? Z]u?o?)?
Q[??\rx?׭?͇^ʣ???n?3R??Ī???xdl?m(3?J?2??8G?I|tl? L?T R?-?n??Xp?????gq!?4?[??(`?j,BF7? ?j&???'?OGUR$!ӌ,?6???l%?t^??Z?~sP&?R7?P??-g?C????ħД???`?2?7????Y???-&????J?Q?O)?????V??Y???
}???mO?ȓ??.g??Y??<k?)`~????D?iG????5w?)b?????P???6ٷ?|?.?Ga7v??mr??o?/??)??s??B??ZTII?????i?rR:tL?Z??,?Y-??mF5!?2?Z݅?뷵e????]???????i?N?9z?x????gP#??I=y?c???:??XҀ+?S,?p????z??8??V?؜  \Hd??Lᾲ	?=?g??6y?ۃ?????g8kp??????=?$???]???hO??q?2w?<???LV??]?eQ????̹Y?y?;???=g?K?nC???E??Lk?????1?Ҁ:????J??qG??:Z%l??c?Z䄇猇͢X?u?$?U????U??(AV?4???j\
>4H??:D?j?$ZU?Bў?k???p?Zh?Wa%i?M>??5ѺʩU??)??޿???݇???ӆN??h???M??E???ڕ=???P??b?BF@ků+?WG???3?|??_?XE?X??`?|Wl????L?_a??%???:?P@J{?+uh?J9?4??h?І@???s?(T.?S?e??#?N.W?8???Ļ?? ???gm?^WU?n?D?:"&??%??Q6?jpv??2s??????F?V)?#?`?uH??,M????;??u???W?H?y>?IYݫ?W?8?)f?n??,?w?????(?7i?m-p?I???]?GHs?7?Nj]?fq}3\?X??)_G??Ȭ?V??J|>T??r#??,?l׳????K??֦P?5ۢ?g?Q?[?L????l?q ??7t?K????;?U????|?V?9_??\TXh?fa_i?}G???@!?_?v{?6??iSj?$?Pչ?SQ??8?x????]?y1&FJ?̑???I|<?.WpHP?G??X$?	?"T??5?S?4????)@??9 E??R{W????;*?F_???O???O6?p#?0ؖ2; `??Fj?B;4~?/?;>??&???QѺ?s??ߕ?"E?c?/?I??y????%???\??^?/???WW/?n???Y̯?o^?????.o?t}?zuy??7o?????y}?W?7???W?/?@?      $      x^????? ? ?      *      x^????? ? ?      R   :   x^3?OUH?LQ?,??4202?54?5?P04?22?20ҳ?4?)??i?i????? Eh      :   ?   x^??A?0E?p
/@CA?vk????PKK:%^_?[at?????Lv??I9#?&?A4?!Ss????B|??'E^?;^I.d?3Q??y?$m?+??????\????W?ݿ?_????$?;]܈?P???????e	?𫤦%?`??q*A?aTƞ?LU|}?Fё!???'Y??4}?"??      N   7   x^ȹ  ???[?????l??T???l???6I;v2?b=?6۞"?cc	+      <   x   x^3?t,-?H?+?LN,IM?tIMK,?)Q(??IUH?,K?S(?WHDV?PZ?Z?ǉ"?id`d?kh?kh?`hfehae`?gaf?S<Ə3Əˈ3?4)'3???y?,.?h?n?9Nq??1z\\\ PvEs      >      x^????? ? ?      P      x^????? ? ?      8      x^????? ? ?      L      x^????? ? ?     