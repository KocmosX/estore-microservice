PGDMP  2                    |            electronic_store    16.3    16.3 T    !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            $           1262    16698    electronic_store    DATABASE     �   CREATE DATABASE electronic_store WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
     DROP DATABASE electronic_store;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            %           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    17091    counter    TABLE     _   CREATE TABLE public.counter (
    name character varying(75) NOT NULL,
    currentid bigint
);
    DROP TABLE public.counter;
       public         heap    postgres    false    4            �            1259    16735    electro_item_types    TABLE     n   CREATE TABLE public.electro_item_types (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
 &   DROP TABLE public.electro_item_types;
       public         heap    postgres    false    4            �            1259    16734    electro_item_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.electro_item_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.electro_item_types_id_seq;
       public          postgres    false    222    4            &           0    0    electro_item_types_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.electro_item_types_id_seq OWNED BY public.electro_item_types.id;
          public          postgres    false    221            �            1259    16742    electro_items    TABLE     �   CREATE TABLE public.electro_items (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    etype_id integer,
    price integer NOT NULL,
    count integer NOT NULL,
    archive boolean NOT NULL,
    description text
);
 !   DROP TABLE public.electro_items;
       public         heap    postgres    false    4            �            1259    16741    electro_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.electro_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.electro_items_id_seq;
       public          postgres    false    224    4            '           0    0    electro_items_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.electro_items_id_seq OWNED BY public.electro_items.id;
          public          postgres    false    223            �            1259    16804    employee_etypes    TABLE     f   CREATE TABLE public.employee_etypes (
    employee_id integer NOT NULL,
    etype integer NOT NULL
);
 #   DROP TABLE public.employee_etypes;
       public         heap    postgres    false    4            �            1259    16709    employee_types    TABLE     j   CREATE TABLE public.employee_types (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
 "   DROP TABLE public.employee_types;
       public         heap    postgres    false    4            �            1259    16708    employee_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.employee_types_id_seq;
       public          postgres    false    4    218            (           0    0    employee_types_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.employee_types_id_seq OWNED BY public.employee_types.id;
          public          postgres    false    217            �            1259    16716 	   employees    TABLE     Q  CREATE TABLE public.employees (
    id integer NOT NULL,
    employee_id integer,
    lastname character varying(255) NOT NULL,
    firstname character varying(255) NOT NULL,
    patronymic character varying(255) NOT NULL,
    birthdate date NOT NULL,
    "position" integer NOT NULL,
    shop_id integer,
    gender boolean NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false    4            �            1259    16715    employees_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public          postgres    false    220    4            )           0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
          public          postgres    false    219            �            1259    16771    payment_types    TABLE     i   CREATE TABLE public.payment_types (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
 !   DROP TABLE public.payment_types;
       public         heap    postgres    false    4            �            1259    16770    payment_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.payment_types_id_seq;
       public          postgres    false    227    4            *           0    0    payment_types_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.payment_types_id_seq OWNED BY public.payment_types.id;
          public          postgres    false    226            �            1259    16778 	   purchases    TABLE     �   CREATE TABLE public.purchases (
    id integer NOT NULL,
    electro_id integer,
    employee_id integer,
    purchase_date timestamp without time zone NOT NULL,
    type_id integer,
    shop_id integer
);
    DROP TABLE public.purchases;
       public         heap    postgres    false    4            �            1259    16777    purchases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.purchases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.purchases_id_seq;
       public          postgres    false    229    4            +           0    0    purchases_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.purchases_id_seq OWNED BY public.purchases.id;
          public          postgres    false    228            �            1259    16755    shop_electro_items    TABLE     �   CREATE TABLE public.shop_electro_items (
    shop_id integer NOT NULL,
    electro_item_id integer NOT NULL,
    count integer NOT NULL
);
 &   DROP TABLE public.shop_electro_items;
       public         heap    postgres    false    4            �            1259    16700    shops    TABLE     �   CREATE TABLE public.shops (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL
);
    DROP TABLE public.shops;
       public         heap    postgres    false    4            �            1259    16699    shops_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.shops_id_seq;
       public          postgres    false    216    4            ,           0    0    shops_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.shops_id_seq OWNED BY public.shops.id;
          public          postgres    false    215            �            1259    17086    store_employee    TABLE     @  CREATE TABLE public.store_employee (
    id_ bigint NOT NULL,
    lastname character varying(100) NOT NULL,
    firstname character varying(100) NOT NULL,
    patronymic character varying(100) NOT NULL,
    birth_date timestamp without time zone NOT NULL,
    position_id bigint NOT NULL,
    gender boolean NOT NULL
);
 "   DROP TABLE public.store_employee;
       public         heap    postgres    false    4            �            1259    17096    store_eshop    TABLE     �   CREATE TABLE public.store_eshop (
    electro_item_id bigint NOT NULL,
    shop_id bigint NOT NULL,
    count_ integer NOT NULL
);
    DROP TABLE public.store_eshop;
       public         heap    postgres    false    4            �            1259    17101    store_purchase    TABLE     �   CREATE TABLE public.store_purchase (
    id_ bigint NOT NULL,
    electro_id bigint NOT NULL,
    employee_id bigint NOT NULL,
    purchase_date timestamp without time zone NOT NULL,
    shop_id bigint NOT NULL,
    type integer NOT NULL
);
 "   DROP TABLE public.store_purchase;
       public         heap    postgres    false    4            S           2604    16738    electro_item_types id    DEFAULT     ~   ALTER TABLE ONLY public.electro_item_types ALTER COLUMN id SET DEFAULT nextval('public.electro_item_types_id_seq'::regclass);
 D   ALTER TABLE public.electro_item_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            T           2604    16745    electro_items id    DEFAULT     t   ALTER TABLE ONLY public.electro_items ALTER COLUMN id SET DEFAULT nextval('public.electro_items_id_seq'::regclass);
 ?   ALTER TABLE public.electro_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            Q           2604    16712    employee_types id    DEFAULT     v   ALTER TABLE ONLY public.employee_types ALTER COLUMN id SET DEFAULT nextval('public.employee_types_id_seq'::regclass);
 @   ALTER TABLE public.employee_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            R           2604    16719    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            U           2604    16774    payment_types id    DEFAULT     t   ALTER TABLE ONLY public.payment_types ALTER COLUMN id SET DEFAULT nextval('public.payment_types_id_seq'::regclass);
 ?   ALTER TABLE public.payment_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            V           2604    16781    purchases id    DEFAULT     l   ALTER TABLE ONLY public.purchases ALTER COLUMN id SET DEFAULT nextval('public.purchases_id_seq'::regclass);
 ;   ALTER TABLE public.purchases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            P           2604    16703    shops id    DEFAULT     d   ALTER TABLE ONLY public.shops ALTER COLUMN id SET DEFAULT nextval('public.shops_id_seq'::regclass);
 7   ALTER TABLE public.shops ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216                      0    17091    counter 
   TABLE DATA           2   COPY public.counter (name, currentid) FROM stdin;
    public          postgres    false    232   �c                 0    16735    electro_item_types 
   TABLE DATA           6   COPY public.electro_item_types (id, name) FROM stdin;
    public          postgres    false    222   �c                 0    16742    electro_items 
   TABLE DATA           _   COPY public.electro_items (id, name, etype_id, price, count, archive, description) FROM stdin;
    public          postgres    false    224   {d                 0    16804    employee_etypes 
   TABLE DATA           =   COPY public.employee_etypes (employee_id, etype) FROM stdin;
    public          postgres    false    230   n                 0    16709    employee_types 
   TABLE DATA           2   COPY public.employee_types (id, name) FROM stdin;
    public          postgres    false    218   wn                 0    16716 	   employees 
   TABLE DATA           }   COPY public.employees (id, employee_id, lastname, firstname, patronymic, birthdate, "position", shop_id, gender) FROM stdin;
    public          postgres    false    220   �n                 0    16771    payment_types 
   TABLE DATA           1   COPY public.payment_types (id, name) FROM stdin;
    public          postgres    false    227   �p                 0    16778 	   purchases 
   TABLE DATA           a   COPY public.purchases (id, electro_id, employee_id, purchase_date, type_id, shop_id) FROM stdin;
    public          postgres    false    229   Xq                 0    16755    shop_electro_items 
   TABLE DATA           M   COPY public.shop_electro_items (shop_id, electro_item_id, count) FROM stdin;
    public          postgres    false    225   ur                 0    16700    shops 
   TABLE DATA           2   COPY public.shops (id, name, address) FROM stdin;
    public          postgres    false    216   �r                 0    17086    store_employee 
   TABLE DATA           o   COPY public.store_employee (id_, lastname, firstname, patronymic, birth_date, position_id, gender) FROM stdin;
    public          postgres    false    231   �s                 0    17096    store_eshop 
   TABLE DATA           G   COPY public.store_eshop (electro_item_id, shop_id, count_) FROM stdin;
    public          postgres    false    233   �s                 0    17101    store_purchase 
   TABLE DATA           d   COPY public.store_purchase (id_, electro_id, employee_id, purchase_date, shop_id, type) FROM stdin;
    public          postgres    false    234   �s       -           0    0    electro_item_types_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.electro_item_types_id_seq', 11, true);
          public          postgres    false    221            .           0    0    electro_items_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.electro_items_id_seq', 41, true);
          public          postgres    false    223            /           0    0    employee_types_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.employee_types_id_seq', 43, true);
          public          postgres    false    217            0           0    0    employees_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.employees_id_seq', 706, true);
          public          postgres    false    219            1           0    0    payment_types_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.payment_types_id_seq', 5, true);
          public          postgres    false    226            2           0    0    purchases_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.purchases_id_seq', 907, true);
          public          postgres    false    228            3           0    0    shops_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.shops_id_seq', 6, true);
          public          postgres    false    215            l           2606    17095    counter counter_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.counter
    ADD CONSTRAINT counter_pkey PRIMARY KEY (name);
 >   ALTER TABLE ONLY public.counter DROP CONSTRAINT counter_pkey;
       public            postgres    false    232            ^           2606    16740 *   electro_item_types electro_item_types_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.electro_item_types
    ADD CONSTRAINT electro_item_types_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.electro_item_types DROP CONSTRAINT electro_item_types_pkey;
       public            postgres    false    222            `           2606    16749     electro_items electro_items_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.electro_items
    ADD CONSTRAINT electro_items_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.electro_items DROP CONSTRAINT electro_items_pkey;
       public            postgres    false    224            h           2606    16808 $   employee_etypes employee_etypes_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.employee_etypes
    ADD CONSTRAINT employee_etypes_pkey PRIMARY KEY (employee_id, etype);
 N   ALTER TABLE ONLY public.employee_etypes DROP CONSTRAINT employee_etypes_pkey;
       public            postgres    false    230    230            Z           2606    16714 "   employee_types employee_types_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.employee_types
    ADD CONSTRAINT employee_types_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.employee_types DROP CONSTRAINT employee_types_pkey;
       public            postgres    false    218            \           2606    16723    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    220            d           2606    16776     payment_types payment_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.payment_types DROP CONSTRAINT payment_types_pkey;
       public            postgres    false    227            f           2606    16783    purchases purchases_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.purchases DROP CONSTRAINT purchases_pkey;
       public            postgres    false    229            b           2606    16759 *   shop_electro_items shop_electro_items_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.shop_electro_items
    ADD CONSTRAINT shop_electro_items_pkey PRIMARY KEY (shop_id, electro_item_id);
 T   ALTER TABLE ONLY public.shop_electro_items DROP CONSTRAINT shop_electro_items_pkey;
       public            postgres    false    225    225            X           2606    16707    shops shops_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.shops
    ADD CONSTRAINT shops_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.shops DROP CONSTRAINT shops_pkey;
       public            postgres    false    216            j           2606    17090 "   store_employee store_employee_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_pkey PRIMARY KEY (id_);
 L   ALTER TABLE ONLY public.store_employee DROP CONSTRAINT store_employee_pkey;
       public            postgres    false    231            n           2606    17100    store_eshop store_eshop_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.store_eshop
    ADD CONSTRAINT store_eshop_pkey PRIMARY KEY (electro_item_id, shop_id);
 F   ALTER TABLE ONLY public.store_eshop DROP CONSTRAINT store_eshop_pkey;
       public            postgres    false    233    233            p           2606    17105 "   store_purchase store_purchase_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.store_purchase
    ADD CONSTRAINT store_purchase_pkey PRIMARY KEY (id_);
 L   ALTER TABLE ONLY public.store_purchase DROP CONSTRAINT store_purchase_pkey;
       public            postgres    false    234            s           2606    16750 )   electro_items electro_items_etype_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.electro_items
    ADD CONSTRAINT electro_items_etype_id_fkey FOREIGN KEY (etype_id) REFERENCES public.electro_item_types(id);
 S   ALTER TABLE ONLY public.electro_items DROP CONSTRAINT electro_items_etype_id_fkey;
       public          postgres    false    224    4702    222            z           2606    16809 0   employee_etypes employee_etypes_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_etypes
    ADD CONSTRAINT employee_etypes_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(id);
 Z   ALTER TABLE ONLY public.employee_etypes DROP CONSTRAINT employee_etypes_employee_id_fkey;
       public          postgres    false    4700    220    230            {           2606    16814 *   employee_etypes employee_etypes_etype_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_etypes
    ADD CONSTRAINT employee_etypes_etype_fkey FOREIGN KEY (etype) REFERENCES public.employee_types(id);
 T   ALTER TABLE ONLY public.employee_etypes DROP CONSTRAINT employee_etypes_etype_fkey;
       public          postgres    false    230    218    4698            q           2606    16724 $   employees employees_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employee_types(id);
 N   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_employee_id_fkey;
       public          postgres    false    220    4698    218            r           2606    16729     employees employees_shop_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_shop_id_fkey FOREIGN KEY (shop_id) REFERENCES public.shops(id);
 J   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_shop_id_fkey;
       public          postgres    false    4696    216    220            v           2606    16784 #   purchases purchases_electro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_electro_id_fkey FOREIGN KEY (electro_id) REFERENCES public.electro_items(id);
 M   ALTER TABLE ONLY public.purchases DROP CONSTRAINT purchases_electro_id_fkey;
       public          postgres    false    224    4704    229            w           2606    16789 $   purchases purchases_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(id);
 N   ALTER TABLE ONLY public.purchases DROP CONSTRAINT purchases_employee_id_fkey;
       public          postgres    false    229    220    4700            x           2606    16799     purchases purchases_shop_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_shop_id_fkey FOREIGN KEY (shop_id) REFERENCES public.shops(id);
 J   ALTER TABLE ONLY public.purchases DROP CONSTRAINT purchases_shop_id_fkey;
       public          postgres    false    216    4696    229            y           2606    16794     purchases purchases_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.payment_types(id);
 J   ALTER TABLE ONLY public.purchases DROP CONSTRAINT purchases_type_id_fkey;
       public          postgres    false    4708    227    229            t           2606    16765 :   shop_electro_items shop_electro_items_electro_item_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shop_electro_items
    ADD CONSTRAINT shop_electro_items_electro_item_id_fkey FOREIGN KEY (electro_item_id) REFERENCES public.electro_items(id);
 d   ALTER TABLE ONLY public.shop_electro_items DROP CONSTRAINT shop_electro_items_electro_item_id_fkey;
       public          postgres    false    224    4704    225            u           2606    16760 2   shop_electro_items shop_electro_items_shop_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shop_electro_items
    ADD CONSTRAINT shop_electro_items_shop_id_fkey FOREIGN KEY (shop_id) REFERENCES public.shops(id);
 \   ALTER TABLE ONLY public.shop_electro_items DROP CONSTRAINT shop_electro_items_shop_id_fkey;
       public          postgres    false    225    4696    216                  x������ � �         �   x�-O��@������1�1��BNO�	��ia�#f-'��γ	.(����B��n]O����*Mt�����g|��Kt�
%���&���	���J�-M)�	2�ލ]��fw@�ƏȄ3s�I,t�Xԙ�,o*�1��kVcuG;�6���C]+��Y�1���+�#�r7�8��qӰ�         {	  x��YKo��^S��,�(�{�^��X�Q�<E7�����@�S��ęL2�i�L��h�.(N�8�� ��?�9��D��IӅ�k�����s�y�\	���o��8<_��}�U�P[�ܦno����B�8<����7
W,�qΔo�j�f��iCy��6�O!��'�Zvo@�8��r��,�렉Z�U9s�JS� |Nw&��[4���Ԩ���V�ke����zN��:�_7�S�M�6�"��1c�R�N���Z´W�R���4<�1�ņ��y��
�� 
��^7؁��1r��-���a�=��.�/�E� <�DGo M����.�\]3�";���3���8��_��@����L�Kei�������mh�p���t!g~�z���w;�-�Jj��sV���ql����	����GX���Cp�%�����3�5'1�|��!n{��/��T����B	
n
��XH���_����;I�(.X�J�q�2H7VKs�&P%��z?:���mށ����w~k����!�R��+�b�	0n"�����������`qZ<�C��p�^��6;�b�C�Ggb6�?��A_�����<4�e�{'hC�C}w�OH�� �>��:!�� 0�Ha����_~=�q>���w�|���`�_GT�����,a�),���M�X�Z!e0�YL�A��@���O��"b� ��p�Js!qmB�I<��A��bR&5N���	������Ć���h�	>t4FV����f�k(�M��qG�3Ei.J.0�m��\mJ`z�hR�gPl�"�1�Qw�_�0P�PU���h�w	w�D��Ԛ�),�`2;��l��̏�bK,�4��������h�m����J�1EpN���)sڤH	.��G����lB��9n-�a]҇4�$=� �6��l��P�D�ԉSӅ6��b�"�v���!��!uj�=�uV��b(V� �16���a� �9./$�c�PjJA������Ժ�q�}K�@��3�Mx&�z/�:�'�.��%֣��a���^��0X�;�)�,�*7�Uh����D���q���!?������N���Q7�`saOL�­Ap�'�&KŘ�qʜ���OI]Ao��1x>|���]?������c`R@jv���@��t.�l"!��?N�i�X��-o?�s��J�7��3Y��������j��k�O1%I`2��-߂�?���$ǘЄ/$�c��H؏��џ$�sBO�~�(�*!)�t�[���n�Չ��S�������I�vF9�:C�R�	�2�
�P��oz��&B\�܄{~�t;�I����Y��?�f����Wx�W���'��܇��s�2�[�R�un�d��{A��u��	�2z�nf���6�:��(�y�.�L�����ð��L+YW�e�|'WDo>����A���}�
�n=^U,Es�Uj��b�Lǧ��c񠠢�S6�a$iS*y�l ��#��r�>]Ǟџ�*�����ۜ����;~\[��jq!��Y�_P1��H���r�^����n���^�t;ඪ�8NgDL�!�y1�c�ך9��,ŧtp�[�l��Ɋ�q����������24l�2.ao(���Fk�'>�i�<�N�~|��@�x�?�����B��t��LQ�+BeN�\̀�9�]���3�<��#+�x��t���Ǫ�Z>���"|�j{�W����S��� 0��ȍ_H���=&	��6	�L��GgIg��4������X�Q�����>:P���O`m���6��f�N���K�M[�֪m8l�ֲ�_��D�1��$7�W"l���M�jK��Ֆ�T.�S𐪐�0��\�,W��s�tHθ,dX�56%���?��-�G�c���3U�
���be}%o3�+�WT�D�QS��*�LN���.�	}R�L�4���:���7ΩR2zv��0��Cf6����NJ���|"GE���e�=#	~zmm��I��4�ɞg}mK37Z�� ��Q��$o�[�j}�c#�1���'Ǽ�>i�h4�Q-4�r���j�J�L���^��DZN�c9>��2]X�u�0��Xnj���+�����ٮ	;�p&&�����y�;!wJ���+��?�{��z�ʜ3(�r���Ac�C��Ӕ×�N���Sf\��4�7~z=��"�(�>���^�oF��ġU�pCa�͒Y4�9� m�j�,�d�QX���8���ҫ�/s:�X?ɀ��?�$�qww� ��vo�M���k��S8���ᔅ��'�*dɔ�0���~�jO�2<&���\��ɶ�8~�?�N�	��e��AXi%�ڸ>�$���C4o��=� j��۠�I��f˳~!cX�sr�>gx�Av�c	73k������r���z-         a   x�%���0�e�* �.������� 엛_�&J8���D��N�	��M��4��/��d��=�Q��8��ji�2��q�'%,���l�         o   x�3估�bӅ�]�z��ˈ����-;.츰S�����]��TѦ{a���b����/������e�ya>q*M�6^l �
S��.l���b'V�\1z\\\ 'Z��         �  x�}�MN�0����I�]X�= m�`�T~%H$�Ji�P�r��x3NB�"�DQ��73o�=y�Wކc�g\�oyI��9B��'�5/x��j��pJ>ˆ�'6q��16	%��X/�$Ly���R�/�������=!�T�b�@̬ԁ�idR�[��R�-6�O	�g��T�R�<�@���]{�tjn�k� ���S_y}|�؊�K
Y�IA|�Za�0��z�����h~'���s�5�qL�+ ;��9���:Rh4����p�&���<��3AS��L���0�]�*�!jU�4� �M��ۙ�n`��^���:)/lP���ZMqR���<60@_�*tS!��el�+k��
�*M#�Q���Ì�u"���@��W�L掚RL��<'���O#�*3G#zu�N�����[��]�T3�=-S��~��F��u�� S���������ךm�+'7�K�x���t���hsGƘ-�L�         _   x����0c_/ �uC1����@�� K<2�0��h5�[8f�$�R:&�z�	R9���Aʸy���D�D6[��8V#��s��iN���x=<�           x�]���0��)�@+��,w�9.$�K�HQ�O�d�0����X_�� ��@R@��P�(���tT�Iũ$aq�-�-nKX�b,�j#i���[D�՝d$,8�5��A*	�y_vf{�rz�zV`A�l���z�GE[��9H�s6ǩo{k.>2�Ћl���9ګn�ɾ��9�^�Z|qJ�q�9�42���j|�;����Nv��I�[�\���������CM�3v{��b�^�ř��_޹x����dEԳ��m7�{�R���v�         @   x�%ʹ�@�xY�q�sո�:,��`AS2qh>�P[I�NZ�c/\5�ӣ��K�o4������         �   x���An�@E��)� 4jB�8LCaQUE꾄�����}#���,f1��Ǔ%(���C@�o�y=$ا����ta���b�#W��w4��5q8���	S��@ :�9|�,o����I����̫Ag���e�#�ʴ�ɆLc�1�n��(���J[�m��j�gy�Ӗ�9]�GN�Pq��2��{�5�j.62�a��k�����j6��TD.ߋe�            x������ � �            x������ � �            x������ � �     