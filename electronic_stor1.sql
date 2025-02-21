PGDMP  
                    |            electronic_store    16.3    16.3 T    !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
   TABLE DATA                 public          postgres    false    232   �_                 0    16735    electro_item_types 
   TABLE DATA                 public          postgres    false    222   �_                 0    16742    electro_items 
   TABLE DATA                 public          postgres    false    224   �`                 0    16804    employee_etypes 
   TABLE DATA                 public          postgres    false    230   k                 0    16709    employee_types 
   TABLE DATA                 public          postgres    false    218   �k                 0    16716 	   employees 
   TABLE DATA                 public          postgres    false    220   �l                 0    16771    payment_types 
   TABLE DATA                 public          postgres    false    227   �n                 0    16778 	   purchases 
   TABLE DATA                 public          postgres    false    229   �o                 0    16755    shop_electro_items 
   TABLE DATA                 public          postgres    false    225   "q                 0    16700    shops 
   TABLE DATA                 public          postgres    false    216   �q                 0    17086    store_employee 
   TABLE DATA                 public          postgres    false    231   �r                 0    17096    store_eshop 
   TABLE DATA                 public          postgres    false    233   s                 0    17101    store_purchase 
   TABLE DATA                 public          postgres    false    234    s       -           0    0    electro_item_types_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.electro_item_types_id_seq', 11, true);
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
       public          postgres    false    225    4696    216               
   x���               x����JQ��}��EA��7be�bA"�h0l�t-�������FT$��.Y]��7��5/���0�����	��~����u;�����ӓV'
�[�E/<3�;�����L/H��#����2���H+Jz�+|�RH�Tn0����<mUi��AB�X�Q`�b���'�K�H�؅���W�����.]@
S�k���<c�5#���DH�Bx�L����~�ͮ|H7�uo)��������_Vܣ�^ar��✺5ԷeY3�$�`x�}�u��u��?�~hN         
  x�՚[o�����)�[�n$�/"ч���a�D����PbnCĖI��}J��&ŶM���E����ĉ�8
�O@~��3$u�-2I�}�<�����̹���akuXۨo�;��ݴ����uڿu{�^����En�[p���w�ǟ��{��GP)��
�Yu��*�����w�?�>�?z���1c�&�-����up�r���݀�V.U^�������r�Z�	p�m�����__[[�d���\nQ)Z)�L�Ry�^�'GF��zy�#k��Z[�Y�QH��wnƲ\�Tl4|]�f�2�hM\e��E2��+46+��TF��J�F�g}�kJhq��?�`;0�3n��B���i�;Pߚ�~,�8�����?C������k����3�����Z����yKUt�$�kƴ��4�0�~�Нp�W�H�f�\��imnw��۽{а�`U(Yt!����l5��{�|��W9+Sv b�QC�����e��n�UΧ,�
����s�V��NT�����'�{��6�y�Wա��l�V#>�}�y�Im�FQ��m@0\��F�q�e7J�9�	MB��|����C?�����~�����!d�|�� 0͘�:"x/���>��;PxZ�w	���%�!{͂j��� ����8�`�����UX�ڱ(��2l��M�s���wC��R#�Z`�:���*���1]7�Ah���_~�?����t��,s�f���8\�(b��@=��<\g����+�A��0b̶�l�Psv��̎��+H�\�.sY�2�0�A��6�X��L=dˑ�[D�l�<_�iWK%3��1��Ѥg���R������;����&ҩ󪧹x\�7дz�.�T����\=X>"&~3}�U<m�����q���ա��T'��B��
�zq
��@�j�1	Ҋ��BT�V�a,ΰ�z.��0���T9�o���{��2IM.K��Ɛ'�,@cs�8K�C�\�n���	�tu2�D`T��$̺#,\�p�"w�b��Y����̘�)t�>Z�c�~�f��=(�=$C'�L/nq�������� $�D��H����#�5ܥ�л�.��6��x�r������z��᠏SbEs��׫�o�4Os�����4��|V�"+UP����޼\�QO4�V)W>굪n��D��)�| {��>tBZ%C��b?e�Y]#�H�+Ly>>5_@�}�`�	am��:]�q��c��3�~�#����DN>�b
��g�-'?�ȃ�Ƚw�Q粤i�v�����z�Dm=�*���K�'�'�M:�{�� �8'!�G�+�w�rɽ���f�OҪ¦[�G��*	r����p��0.8J��W/���� ��#(^�ܜS�)k_����S.W.�	-��~�^Coo�C��uۭ����M�XX�%�{��g��j�p6�����������h}���$S/�l�%ŶR�:�x.�f��T�,���]�K����So���m�
#c��9TP���{O���OqY-�L�ɢ�DVF�ƩO���e�봺��6s6/�*X�)ӑx"Q��K����c�Jp�F2`����r5��	d�~B�<=� U�N�/� �F�J�n<�̒얻�4����ʗrˀ�œ/��P��H�H�xˮ�����z�l����-��(�qQ���/�
ZZ��GcEO$�����6a}���u�k4B��d���(�"�cyNN�8*�w������
� ޷A�)[�GA�E��A噬y����!�m[ŦF�"R��+��ϙã ��20��^a8��~��u���ADĪꭼ!�����5./�&�s��q�E��+h#ڇZʉ_I���3:)�5%h)�t)eÅʒ���,��oC��E�rض�^�L̘�+�	ri"�\�ʌN� �&QI,�R��4J�f��J�(|S��J���J}�c��2H���D(e)��M��@�����ځF"8D�_H$6+�X�����Q���'�KV��
�n�'Ul����#8��B߻@���	������̦�e�n�P�&#��Nd���^�A��Vv��&˯ QI���Y����G�2�ˬ����mx[_�&�Syr�U�S��NA�)}1k�ơ�WK,�,��W�}����P[m&7��D�g~��F;\
���M�����F�VZ9[S��J�ʋ1s����%Sw9AO��ʓ�%�hC����@��#�����d���޺]��*b63O��_�UI�kxM(gt(7��u��9�C�l;��Ӯ���l�����B�)ox�1ל�� ��H������7�O��R�y���w8�ko@_s�_|JF��x�楄�|��<ҕkٕbi8}*�Z�~��x�8#��o���\�������޷.��O���D���)�1yz1��c�TщGx�p������<Y4\y\E�Ǜd�s���1P� aa���Ad�+�r�'�c*�Z��=���@���}��H.M��b��J�S��M3u֘ �F��g���X��$׮�O�X�         �   x����
�0�<EF��i�V�:tH[]%�Pi@��Z|����\���4��G�>��q��g�9�k|�)���9��^�d�e�W%&,#�0��`�2���?�a�[�a�X���*�Wy|+��c�
���j����;ޒ�Ǥ�z�fQ�$#��Z³� �'��Nx��Nx����a�?L�/��f|         �   x���v
Q���W((M��L�K�-�ɯLM�/�,H-Vs�	uV�0�QP���bӅ�]�z�A]Ӛ˓h�F �s.���r��;.��pa߅-@�M@�t/�r�^l��|a���M{/6�f�1Ȟ�40������)ȞI����b'V{@rq *���         _  x��UMk�@��W��ew%�=�����Ф��Ņ�KC�z�%9�&)��Z�!7ױ@ql�/�����J�ZJ�� �v$�{3��ms{g�����}���l�y���v���c���=���֎wOlxx�p	���R���}�	F�!�Z���ɾ�T금��I���v����u�a����I��9�9W]Ճ�)�	cD�'�|�<���@~=���b�%f�h.���~��_�L@ة'Y1�"�^ϑ�M�.�
��K)B�ie���K�*ʲ�iDLj&�3��~���l��|
;sz�B�IU�F��K�C$�S7�z&�oZ +B8�:LM�'�<�+�����d"25��Ȕ9ԥ�k�WG%�d���:D
]|�3Rm���$B�Rl�Lab��E�z:F�3#�J#�uƥ�G�8��U����k�)�)�s��h!Dn��g:�jC?$�-8��S,�D}&�	d��J w�sՇ�$�EA�D�5T�q�:`C�4r�4��W�

���Ó���=I�xE#�3�Zi٢�a�Q\�1�Q�5~G,[�3�f�ݣS*���G�s?<��&���u���9&ɯ+j\���{Q���L�         �   x���v
Q���W((M��L�+H��M�+�/�,H-Vs�	uV�0�QP�0��/��~a���[�5��<�5�d��.6\l���$�� ��.�ڽ���{u/컰�!�$�#.6\�za�M$i6i^ ��.��.��\\ '���         r  x���;O�0 ཿ�6@J�=�81C�J�H��C�CE���٩��,v�˗{������ ���N��������{�z?�����u��ۮ���F6k�5�@�=�M�w�m	F1��[v������r�I٫��VG�b��Y�T���X�b�@�˂�b?��4�e��3kr)�˔3�B�)�l���L*�^c�l�: �$c�ʷ�q&Zd<�1�rM;,6�f�(�f���W�irc^P�b(�0LTdA�a��;;���&c�R����6{�4?�2.����78v�s�m���y�ʵp!��&�u���a�5��Ls�r�/w�4Q&ʶ>7��i.�tv��5��Օ���l1&�e	&�U�`��Z��         �   x���v
Q���W((M��L�+��/�O�IM.)ʏ�,I�-Vs�	uV�0�Q "Mk.OR��(����h!P�19MȲ�hP�!Y:AV����I�m4G���L�~4YJ�NCC�B�h�)�:��:���� 0q�           x����JA��{��N�<��+��D@�@���A�^c�ؘ�筗��?o���`	���3�?�l�l5�۔4�g�y�����7��.]��^4Z��c���o����\g��!>0�'�RH1A�=m	���!a,���� 9��YX�����_Q�Xd�K�@x9#�\��%.���?��\�i�/d�T���Nn��ݼ�R����%�6P�)����4P �k+~t��?���j��+v�`c�χۯ���aD.L�Y��ס~b~�@t�n��<�����Ӆ��         
   x���             
   x���             
   x���         