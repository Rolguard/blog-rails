--
-- PostgreSQL database dump
--

-- Dumped from database version 14.15 (Ubuntu 14.15-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.15 (Ubuntu 14.15-0ubuntu0.22.04.1)

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
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_text_rich_texts OWNER TO mysite;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: mysite
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_text_rich_texts_id_seq OWNER TO mysite;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mysite
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO mysite;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: mysite
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO mysite;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mysite
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO mysite;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: mysite
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO mysite;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mysite
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO mysite;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: mysite
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO mysite;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mysite
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.ar_internal_metadata (
    key text NOT NULL,
    value text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.ar_internal_metadata OWNER TO mysite;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.articles (
    id bigint NOT NULL,
    title text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    publish_status text,
    image text,
    slug character varying,
    user_id bigint NOT NULL,
    created_datetime timestamp(6) without time zone,
    approval_status integer DEFAULT 1,
    impression_count integer DEFAULT 0,
    read_count integer DEFAULT 0
);


ALTER TABLE public.articles OWNER TO mysite;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: mysite
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO mysite;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mysite
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    body text,
    article_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    publish_status text,
    user_id bigint NOT NULL
);


ALTER TABLE public.comments OWNER TO mysite;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: mysite
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO mysite;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mysite
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: friendly_id_slugs; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.friendly_id_slugs (
    id bigint NOT NULL,
    slug character varying NOT NULL,
    sluggable_id integer NOT NULL,
    sluggable_type character varying(50),
    scope character varying,
    created_at timestamp(6) without time zone
);


ALTER TABLE public.friendly_id_slugs OWNER TO mysite;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: mysite
--

CREATE SEQUENCE public.friendly_id_slugs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendly_id_slugs_id_seq OWNER TO mysite;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mysite
--

ALTER SEQUENCE public.friendly_id_slugs_id_seq OWNED BY public.friendly_id_slugs.id;


--
-- Name: pg_search_documents; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.pg_search_documents (
    id bigint NOT NULL,
    content text,
    searchable_type character varying,
    searchable_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.pg_search_documents OWNER TO mysite;

--
-- Name: pg_search_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: mysite
--

CREATE SEQUENCE public.pg_search_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pg_search_documents_id_seq OWNER TO mysite;

--
-- Name: pg_search_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mysite
--

ALTER SEQUENCE public.pg_search_documents_id_seq OWNED BY public.pg_search_documents.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.schema_migrations (
    version text NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO mysite;

--
-- Name: taggings; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.taggings (
    id bigint NOT NULL,
    tag_id bigint,
    article_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.taggings OWNER TO mysite;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: mysite
--

CREATE SEQUENCE public.taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggings_id_seq OWNER TO mysite;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mysite
--

ALTER SEQUENCE public.taggings_id_seq OWNED BY public.taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    name text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    slug character varying,
    tagify_hash jsonb
);


ALTER TABLE public.tags OWNER TO mysite;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: mysite
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO mysite;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mysite
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: mysite
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    username character varying,
    role integer DEFAULT 0,
    image character varying
);


ALTER TABLE public.users OWNER TO mysite;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: mysite
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO mysite;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mysite
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: action_text_rich_texts id; Type: DEFAULT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: friendly_id_slugs id; Type: DEFAULT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.friendly_id_slugs ALTER COLUMN id SET DEFAULT nextval('public.friendly_id_slugs_id_seq'::regclass);


--
-- Name: pg_search_documents id; Type: DEFAULT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.pg_search_documents ALTER COLUMN id SET DEFAULT nextval('public.pg_search_documents_id_seq'::regclass);


--
-- Name: taggings id; Type: DEFAULT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.taggings ALTER COLUMN id SET DEFAULT nextval('public.taggings_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
3	body	<div>Rails is a full-stack framework. It ships with all the tools needed to build amazing web apps on both the front and back end.&nbsp;<br>Rendering HTML templates, updating databases, sending and receiving emails, maintaining live pages via WebSockets, enqueuing jobs for asynchronous work, storing uploads in the cloud, providing solid security protections for common attacks. Rails does it all and so much more.</div>	Article	1	2024-12-19 23:31:24.405964	2024-12-19 23:37:08.307396
6	body	<div>Halfway between last year’s World Cup and the 2026 Asian Cup – the two home tournaments that will define this Matildas era – Thursday’s 3-1 defeat to Brazil in Brisbane was a feisty tussle between two football teams, and Australia’s past versus its future.<br><br></div><div>That was bound to happen on the return to the scene of the Matildas’ greatest triumph, just 15 months ago. Thursday was an invitation for reflection, a measuring of progress. And, as captain Steph Catley indicated afterwards, glimpsing back to the euphoria of that World Cup shootout victory over France remains alluring.<br><br></div><div>“It has been nice, we’ve been back in the same hotel that we stayed at, and obviously playing here, they’re some of the best memories of our lives,” she said. “As footballers, they were some of the biggest moments, and a lot of our favourite memories, so you can’t help but think about it. But yeah, football does move quickly.”<br><br></div><div>For Australia’s defenders on Thursday, it moved very quickly indeed. They found themselves in a 2-0 hole to the ferocious Brazilians – silver medallists in Paris – within 13 minutes.</div>	Article	13	2024-12-19 23:31:24.566557	2024-12-20 00:57:53.103365
4	body	<div>The way to my heart is through max flavor with minimal effort, and this recipe is exactly that. It’s spicy, crunchy, sweet, sticky, and all-around FEEL GOOD.<br><br>Here’s what I’m doing:</div><ol><li>Ripping tofu into chunks.&nbsp;</li><li>Baking the tofu.&nbsp;</li><li>Saucing the tofu.&nbsp;</li><li>Dipping, dunking, devouring.&nbsp;</li></ol><div><br>The end result here is craggly little bites of crispty, boingy, saucy, sticky tofu. Throw it onto a rice bowl with the crunch of cucumber and some herbs. Add more sauce. Happy dance.<br><br></div><div>The beauty of this recipe is that we get to go super minimal at the start – salt, pepper, oil and cornstarch. The main goal is just TEXTURE. And once the crispity golden texture is there, we drench her with spicy-sweet sauce (5 ingredients, thank you very much) that sticks into every tofu nook and cranny.</div>	Article	9	2024-12-19 23:31:24.485109	2024-12-20 00:57:37.438775
7	body	<div>We’ve now seen farther, deeper and more clearly into space than ever before.<br><br></div><div>A stellar birthplace, a nebula surrounding a dying star, a group of closely interacting galaxies, the first spectrum of an exoplanet’s light. These are some of the first images from the James Webb Space Telescope, released in a NASA news briefing on July 12.&nbsp;<br><br>This quartet of cosmic scenes follows on the heels of the very first image released from the telescope, a vista of thousands of distant galaxies, presented in a White House briefing on July 11.&nbsp;<br><br></div><div>“First of all, it’s really gorgeous. And it’s teeming with galaxies,” said JWST Operations Scientist Jane Rigby at the July 12 briefing. “That’s been true of every image we’ve taken with Webb. We can’t take [an image of] blank sky. Everywhere we look, there’s galaxies everywhere.”</div>	Article	22	2024-12-19 23:31:24.607847	2024-12-20 00:59:57.03086
9	body	<div>After an Oxford study this week showed that people who play more video games report greater wellbeing, the headlines reflected a sense of stunned incredulity. “Playing video games BENEFITS mental health,” exclaimed MailOnline, while Business Insider went with “Video games might actually be good for you.” My dad sent me a clipping from the Times, as he has done every time he’s seen video games mentioned in the paper for the past 15 years, that began with the words “parents beware”. Who’d have thunk it?<br><br></div><div>But why the surprise? For anyone who actually plays video games, this is hardly news. Video games are fun and interesting, and doing fun, interesting things makes you happy. Would we need a study to show that watching a few episodes of a beloved TV show makes you feel good, or that sitting down with a good book is relaxing? This year especially, video games have been an essential form of escapism and therapy for millions, and this study proves that I was hardly the only one devotedly playing Animal Crossing to decompress after an intense day of lockdown parenting. And that’s not to mention the 11-year-olds whose only meaningful social contact with other kids for months was playing Roblox together.</div>	Article	17	2024-12-19 23:31:24.654528	2024-12-20 01:00:10.736705
8	body	<div>AMD has made significant strides in AI. Last week, it announced that its first 1-billion parameter large language models are performing exceptionally well.&nbsp;<br><br>Under the leadership of CEO Lisa Su and with the help of CTO and Executive VP Mark Papermaster, AMD has done an admirable job of fast pivoting after Nvidia and OpenAI’s initial surprise success to create a credible generative AI solution.<br><br></div><div>What makes this incredible is that it took Nvidia around 20 years to get where it is — and although Nvidia clearly plowed the AI field, AMD is planting AI seeds like crazy. While this might be considered a risk to Nvidia’s growth, demand for AI solutions remains high and largely unmet. In a rapidly expanding market, all major players can benefit, and both AMD and Nvidia are well-positioned to succeed.<br><br></div><div>In addition, the U.S. is pushing for AMD and Intel to merge, which could remove a lot of the marketing inefficiencies in the x86 space and allow both firms to better compete in the growing battle for AI dominance, in which China represents the most significant competitive threat.<br><br></div><div>Let’s talk about AMD’s AI progress and its potential merger with Intel. We’ll close with my Product of the Week: Google Gemini Advanced, which has proven incredibly helpful in creating images to accompany my writing.</div>	Article	11	2024-12-19 23:31:24.639979	2024-12-20 01:01:08.8681
15	body	<p>I am very cool, that is my post</p>	Article	30	2024-12-19 23:31:24.827877	2024-12-19 23:31:24.827877
14	body	<div>The Nets were playing well at the start of this season, too well. For a team that had shipped away Mikal Bridges in the summer, receiving a haul of first-round picks in the process, the expectation was that Brooklyn would be cellar dwellers for most of the 2024-25 season.<br><br></div><div>That was especially true given the Bridges trade came after arguably an even clearer sign that the Nets were ready to tank on draft day, when Brooklyn reacquired the rights to its 2025 and 2026 first-round picks in a deal with the Rockets.<br><br></div><div>But in Dorian Finney-Smith, Cam Johnson and Dennis Schroder, the Nets had some handy veteran role players who, alongside the scoring punch of lead guard Cam Thomas, helped keep the offence afloat.<br><br></div><div>Meanwhile, even if they weren’t necessarily the most talented team on paper, the Nets were also finding ways to outwork and outhustle their opponents on the defensive end too.<br><br></div><div>That was despite a mounting injury toll which, in theory, should have anchored Brooklyn to the bottom of the Eastern Conference amid one of the league’s tougher early schedules.<br><br></div><div>Instead, the Nets had a 5-8 record in mid-November which, while not spectacular, was certainly not any guarantee to lock them into the top of the lottery, especially given the state of the Eastern Conference.<br><br></div><div>In other words, unless they made some moves the Nets weren’t going anywhere. They weren’t going up, not quite good enough to be a legitimate contender, and they certainly weren’t playing poorly enough to completely bottom out.</div><div>But multiple NBA insiders maintained at the time that the Nets still were planning to blow it up, likely in December and would look to deal their veteran trio to really kickstart the tank.<br><br></div><div>Well, that prediction appears to be accurate based on Sunday’s development, which saw Schroder and a second-round pick traded to Golden State for De’Anthony Melton, Reece Beekman and three second-rounders.<br><br></div><div>It comes after ESPN also reported that the Nets had received trade interest and “opened exploratory conversations” around Johnson and Finney-Smith.</div><div>Those moves may not be imminent, but it seems like discussions are already underway which could see the veteran duo moved and the Nets only further bolster their lottery odds.<br><br></div><div>Johnson in particular could be a valuable 3&amp;D piece for any contender league-wide and should draw plenty of interest, averaging 18.8 points and 4.3 rebounds while shooting 43.4 percent from deep.<br><br></div><div>Speaking to reporters after the Schroder trade, Nets general manager Sean Marks said that the “ultimate goal is long-term, sustainable success”.</div><div>“So we’re weighing a lot of factors in here,” he added.<br><br></div><div>“It’s never easy to see one of your own leave but at the same time looking at the big picture here this is what’s best for our organisation long term.”</div><div>So, they’re tanking without actually saying the word.<br><br></div><div>Although Erik Slater, a reporter from Clutch Points and host of Bleav in Nets, was more than happy to point out the trade for what it is on the latest episode of his podcast.<br><br></div><div>“This trade,” he said, “is less about the details and more about sending a signal to Nets fans and the rest of the NBA that the tank is on”.</div><div>If that is the case, from an Australian perspective, the next question is what it could mean for Ben Simmons, whose $40 million-plus expiring contract could make him an appealing trade chip.</div>	Article	27	2024-12-19 23:31:24.788043	2024-12-20 03:49:42.164315
12	body	<div>A 4,000-year-old murder mystery began with a massacre in what’s now southwestern England. Then came dismemberment, possibly accompanied by cannibalism.<br><br></div><div>At least 37 men, women and children suffered this violent fate, ending up dumped into a 15-meter-deep natural shaft by unknown attackers, say archaeologist Rick Schulting of the University of Oxford and colleagues. The perpetrators also threw butchered parts of cattle and other domestic and wild animals into the shaft, the researchers report December 16 in Antiquity.<br><br></div><div>Motives for the gruesome Early Bronze Age event remain murky. No weapons or any other possible clues to attackers’ identity have turned up.<br><br></div><div>In Britain, the Early Bronze Age ran from about 2200 B.C. to 1500 B.C. “There has been no [previous] indication of violence on this scale in Britain at that time, both regarding the number of victims and the way in which they were treated after death,” Schulting says.<br><br></div><div>Researchers have discovered a few other ancient human massacre sites in continental Europe, ranging in age from around 1,500 years old, following the Bronze Age, to roughly 7,000 years old, preceding the Bronze Age (SN: 10/6/20; SN: 12/3/09).<br><br></div><div>Schulting’s team analyzed more than 3,000 human bones and bone fragments excavated in the 1970s and 1980s at a British site called Charterhouse Warren. Radiocarbon dates indicate that human and nonhuman remains were deposited in a single event between around 4,200 and 4,000 years ago, the scientists say.<br><br></div><div>Diet-related chemicals in the bones suggest that most victims grew up near Charterhouse Warren.<br><br></div><div>Nearly half of 20 recovered skulls displayed fatal wounds caused by being struck with weapons such as wooden clubs. Victims showed no skeletal signs of a fight, suggesting that they may have been taken as captives before the attack or killed during a surprise raid.<br><br></div><div>A cycle of escalating revenge killings between nearby communities might have created enough antagonism to trigger the ancient British massacre, Schulting speculates. Revenge killings have accounted for high homicide rates in some modern hunter-gatherer societies (SN: 7/18/13).<br><br></div><div>Signs of possible cannibalism at Charterhouse Warren consist of tool incisions on leg bones where flesh was removed, fractures at the ends of long bones linked to marrow removal and human chew marks on foot and hand bones and ribs.<br><br></div><div>Attackers at the British site partly consumed victims before depositing their remains with butchered cattle, perhaps to dehumanize their enemies, the researchers suspect.</div>	Article	25	2024-12-19 23:31:24.737451	2024-12-23 01:04:42.813166
10	body	<div>Microsoft Ignite is on this week. It’s the company’s massive event focused on IT professionals. While you can attend this event remotely, you should consider attending in person this year because I still see far more AI failures than successes. When AI is deployed successfully, it has a significant positive impact on productivity, yet quality appears to be going in the wrong direction. But not for everyone.<br><br></div><div>Shows like Microsoft Ignite are full of information on products and services. The event is attended by many IT professionals in different industries, with varying levels of AI deployment and very different paths to success.<br><br></div><div>With the intense focus on all things AI, and Microsoft Copilot being one of the most widely spread AI tools, being able to talk to the people who have been successful with this tool, which vendors they worked with to deploy it successfully, and what practices helped their success become golden knowledge.<br><br></div><div>Let’s talk about why this year’s Ignite is important not only to attend — but to attend in person. We’ll close with my Product of the Week: Bluesky, the social media platform I hear people are having the best success with as they move from Twitter/X.</div>	Article	12	2024-12-19 23:31:24.677345	2024-12-23 01:05:19.881095
17	body	<div>A jobseeker who lost $48,000 to an elaborate employment scam online has revealed the cruel way she was lured in.</div><div>Amana Peters, 44, from Queensland, had set up a profile on the job search platform Indeed to find a work-from-home job.<br><br></div><div>“I was looking for work from home opportunities. I’d been contacted quite a few times since I’d updated profile,” she told news.com.au.</div><div>She received several messages about different jobs and a text message from a woman who claimed her name was ‘Isla’.<br><br></div><div>‘Isla’ said she was from Indeed, and some recruiters had viewed her profile and asked if Ms Peters would be happy to have her details passed on to the relevant recruitment agency.<br><br></div><div>At this point, Ms Peters said there were no alarm bells.<br><br></div><div>Indeed has since told news.com.au that they will never “contact individuals using SMS text messages, WhatsApp, or Telegram”.</div><div>She was then contacted on WhatsApp. Ms Peters said that, in hindsight, she should have seen this as a “red flag,” but once again, everything seemed above board.<br><br></div><div>The alleged job sounded simple, with her task being to leave reviews about the shows and movies on Disney+.</div><div>She wasn’t too suspicious because the money being offered was “average,” and she’d heard of jobs like this.</div><div>From there, things got very elaborate a woman spent more than six hours training Ms Peters on how to use the online platform.</div><div>She said it all looked official.<br><br></div><div>“There were terms and conditions, there were FAQs, and everything she said matched the website,” she explained.</div><div>Ms Peters even did some googling to confirm it wasn’t a scam, but she came up with zero results.<br><br></div><div>“I couldn’t find anything! I tried looking for scams, and I couldn’t find anything that pointed to it being a scam,” she said.</div><div>The system was slightly complicated, but basically, Ms Peters would put $50 into a crypto account to start doing her reviews, and then she was promised she’d earn that back and more.<br><br></div><div>“I thought I’d take the risk of losing $50,” she said.</div><div>She didn’t lose $50; she made over $100 and got her $50 back, so she kept completing tasks.</div><div>Ms Peters did this for four days.<br><br></div><div>“I made money,” she said.</div><div>“I earned commission, and as soon as I completed my tasks, I got my money back, and it worked perfectly.”<br><br></div><div>Things went wrong on day five. It all started out normal, but then she wasn’t able to cash out like usual.</div><div>She was prompted to add more money into her account to unlock her earnings.<br><br></div><div>She became flustered and anxious and started pouring more and more money into the account to get the rest of her money back.</div><div>“I borrowed money, and in the end, I put in $48,000,” she explained.<br><br></div><div>Ms Peters said that in retrospect, it would be easy to write her off as someone “not smart enough” to notice a scam, but she’d initially been hesitant.</div><div>“It’d been working without a hitch,” She pointed out.<br><br></div><div>When she asked for her money back and even contacted an alleged customer service she was given a “big fat no” and told she needed to put in an extra $50,000 to get the rest of her money back.<br><br></div><div>It was then that it really dawned on Ms Peters that this whole thing was in fact an elaborate scam.<br><br></div><div>“I felt sick,” she said.</div><div>“I have eaten for four days, I haven’t been able to sleep, and I’m working 12-hour days cleaning, trying to make it up to pay my mortgage.”</div>	Article	31	2024-12-19 23:31:24.89682	2024-12-20 03:51:06.620248
5	body	<div>Cricket Australia officials are hopeful of attracting 90,000 fans on Boxing Day this year for just the second time in a Test, as part of a summer that finally pulls India alongside England as Australia’s most important cricketing rival – and partner.&nbsp;<br><br>The series, which starts in Perth on Friday, is the first five-Test contest between the two countries since 1991-92 and marks the start of a radical new look to Australian summers. India’s men will become an even more regular accompaniment, but Australia’s best women players will abandon their homeland in peak season from 2026 to play in the burgeoning Women’s Premier League (WPL).&nbsp;<br><br>In fact, Australia’s best men’s and women’s players will – according to current schedules – both be playing in India in January 2027, ducking out in the peak of the local cricket season.</div>	Article	14	2024-12-19 23:31:24.51686	2024-12-19 23:43:00.332556
18	body	<div>If you were an obsessive video game fan in the summer of 1994, you’ll remember where you were when Edge magazine’s August issue dropped. By then, Sony had already announced its intention to develop the <a href="https://www.theguardian.com/games/playstation">PlayStation</a> console – the previous October – but it was the cover feature in the world’s most forward-looking game publication that really blew open the possibilities of the machine. As well as listing its specifications in full, Edge secured enthusiastic statements of support from Capcom, Namco and Konami. One breathless developer told the mag:&nbsp;<br><br></div><blockquote>“It’s going to revolutionise the way computers are at the moment.”&nbsp;</blockquote><div><br>Suddenly, the whole structure of the console games business was being threatened. All it needed was a push.</div><div>Sony’s entry into the video game industry has become the stuff of legend (and probably, one day, the stuff of a passable Netflix movie). In the late 1980s, the company was keen to get a foothold in an increasingly profitable business after the failure of its MSX games computer, so when the chance came up to build a CD-Rom drive for the soon-to-be-released Super Nintendo (SNES) console, Sony leapt at it. In the background, however, Sony’s engineering genius Ken Kutaragi, was also designing a standalone system, <a href="https://www.polygon.com/2020/3/6/21168106/rare-nintendo-playstation-auction-sold-heritage">the PlayStation</a>, capable of playing SNES games as well as a new CD format that Sony itself would control.<br><br></div><div><a href="https://www.theguardian.com/games/nintendo">Nintendo</a> sensed the threat to its hegemony. Consequently, when Sony announced the PlayStation at the giant 1991 Consumer Electronics Show in Chicago, Nintendo immediately revealed that it was in fact cancelling the deal and would instead partner with Philips to produce its SNES-based CD add-on. Sony was left shocked and humiliated; the jilted bride at the tech industry’s grand cathedral. Various theories about Nintendo’s motives have been put forward, but most obviously, this was about a very protective company wresting back control from an ambitious consumer electronics rival. Whatever really happened, the PlayStation was dead. Or was it?<br><br></div>	Article	34	2024-12-20 00:52:08.715519	2024-12-20 00:52:08.715519
11	body	<div>The number of times I have made these in the last few weeks is… a lot. Too many to count. I love these flavors.<br><br></div><div>I don’t normally consider myself a beef person – I love a good burger, a beautiful steak, or a slow-cooked roast, but at home I tend to cook more chicken, veggies, and tofu. And yet, here I am, standing over my stove and licking my fingers while just eating these with my hands. Very demure, very mindful.</div><div>I think I love these because of two things:<br><br></div><ol><li>THE FLAVOR. Garlic, ginger, soy, and curry powder with the umami of beef is not going to let you down. It’s just not, okay? It’s warming and rich (hello curry powder!) but pleasantly sharp at the same time (looking at you, garlic), and is it weird that I enjoy smelling it almost as much as I enjoy eating it?<br>&nbsp;</li><li>THE STRIPS. They’re thin. They’re browned and caramelized but still juicy. They eat, honestly, like little bites of savory candy. They cook for 6 minutes, 7 tops. Delicious.&nbsp;<br><br></li></ol><div>You can skewer them or not. You can broil them, flash-sear them in a pan, or air fry them. It’s a choose-your-own adventure! Whatever you pick, the flavor is on point, and you’ll get caramelization with all three methods.<br><br></div><div>When they come out of the oven, I’m going to require that you drizzle these with a bit of fish sauce, a bit of lime juice, and some extra spoonfuls of all those pan drippings. This Vietnamese-inspired flavor treatment is THE WAY TO GO.<br><br></div><div>I like to pop the beef into a rice bowl with a little cucumber shallot salad. The chili crisp isn’t really necessary for flavor, but that red color in there is nice and makes the whole thing feel like a completed masterpiece.<br><br></div><div>But also, I like just eating these straight off the pan. The flavors are big. The prep time is minimal. Life is good.</div>	Article	10	2024-12-19 23:31:24.697927	2024-12-20 01:02:38.962098
13	body	<div>Honda Motor and Nissan Motor, Japan’s second- and third-largest automakers, are discussing ways to deepen their ties, including the possibility of a merger that could restructure Japan’s car industry as it faces mounting global challenges.</div><div>Honda and Nissan began collaborating this year on the development of electric vehicles. Over several months, their discussions have expanded to the potential creation of a new corporation under which both automakers would operate, according to two people familiar with the matter who were not authorized to speak publicly.<br><br></div><div>A new joint entity could provide Honda and Nissan with the resources and scale necessary to navigate an industry under immense pressure from costly technological transitions and the rise of fast-growing Chinese automakers. Honda and Nissan each sell more than three million vehicles a year, meaning their combination would create one of the world’s largest automakers.<br><br></div><div>The two companies are expected to sign a memorandum of understanding within the next week to formally begin discussions of partnership-broadening steps, including the details of a potential merger, the people familiar with the matter said. No final decisions have been made at this stage, they said.</div><div>Honda and Nissan said in statements that they were in talks.&nbsp;<br><br></div><blockquote>“As announced in March of this year, Honda and Nissan are exploring various possibilities for future collaboration, leveraging each other’s strengths,” the companies said. “We will inform our stakeholders of any updates at an appropriate time.”</blockquote>	Article	26	2024-12-19 23:31:24.773241	2024-12-20 03:51:47.321392
16	body	<div><a href="https://www.nature.com/articles/d41586-023-03797-7">A fresh wave of gene-editing therapies</a> is surging to the fore — even as the field wrestles with the challenge of getting <a href="https://www.nature.com/articles/d41586-023-03590-6">the first generation of expensive and complex CRISPR treatments</a> to the people who need them.<br><br></div><div>Barely a year after the first government approval for a gene-editing therapy, researchers at the American Society of Hematology’s annual meeting in San Diego, California, presented data on gene-editing approaches for treating cancer and blood disorders, and for making stem-cell transplants safer. They also unveiled good news about the first approved treatment: benefits from the therapy, called Casgevy, can last for at least five years in people with either of two heritable blood disorders, sickle-cell disease and β-thalassaemia. Casgevy gained its first government approval little more than a year ago.</div><div><br></div><div>Casgevy had “a clear benefit in general health, physical, emotional, social and functional well-being,” said Franco Locatelli, a paediatric haematologist and oncologist at Bambino Gesù Children’s Hospital in Rome, who presented the data. The therapy, he added, has “the potential to provide a one-time functional cure”.<br><br></div><div>But although other companies are rushing to emulate Casgevy’s success, the treatment’s complexity and hefty price tag have raised concerns that it will be out of reach for many people.<br><br></div><div>Stuart Orkin, a paediatric haematologist and oncologist at the Harvard Stem Cell Institute in Cambridge, Massachusetts, said at the meeting,&nbsp;<br><br></div><blockquote>“The imperative now is development of effective and safe therapies that are readily accessible to the many patients who could benefit.”</blockquote>	Article	28	2024-12-19 23:31:24.861274	2024-12-20 03:19:17.104315
19	body	<div>I like Melissa</div>	Article	35	2024-12-23 02:36:15.456863	2025-01-07 23:15:49.245541
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	mgystad51kjcgyx9rw9yfhaondnr	ezgif-6-465f7a08c9.jpg	image/jpeg	\N	local	48233	J/vPOLl4USamvS8+iFaYeA==	2024-12-19 23:46:56.957287
2	xsyt372tucm0gzizff4wqdcjc5q3	ezgif-6-465f7a08c9.jpg	image/jpeg	\N	local	48233	J/vPOLl4USamvS8+iFaYeA==	2024-12-19 23:57:16.640986
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-11-25 00:08:06.777736+11	2024-11-25 00:08:06.777739+11
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.articles (id, title, created_at, updated_at, publish_status, image, slug, user_id, created_datetime, approval_status, impression_count, read_count) FROM stdin;
10	Garlic and Black Pepper Beef Skewers	2024-11-29 05:06:57.350365+11	2024-12-20 12:02:38.975534+11	public	Black-Pepper-Beef-960x1440.jpg	garlic-and-black-pepper-beef-skewers	7	2024-12-11 00:06:50.104826	0	726	96
1	Ruby on Rails Article	2024-11-25 00:11:40.281897+11	2024-12-20 10:37:08.314198+11	public	\N	ruby-on-rails-article	4	2024-12-11 00:06:50.104826	0	726	152
28	CRISPR genome-editing grows up: advanced therapies head for the clinic	2024-12-18 12:09:12.895692+11	2024-12-20 14:19:17.139732+11	public	ezgif-6-936bedf1ff.jpg	crispr-genome-editing-grows-up-advanced-therapies-head-for-the-clinic	11	2024-12-18 01:09:12.887937	0	726	610
9	Sticky Gochujang Tofu with Herbs and Peanuts	2024-11-29 05:04:29.76795+11	2024-12-20 11:57:37.44691+11	public	Gochujang-Tofu-in-Bowl-960x1440.jpg	sticky-gochujang-tofu-with-herbs-and-peanuts	7	2024-12-11 00:06:50.104826	0	726	150
14	The new Ashes? How the rivalry between Australia and India is reaching new heights	2024-11-29 05:35:35.63788+11	2024-12-20 10:43:00.33912+11	public	5098.png	the-new-ashes-how-the-rivalry-between-australia-and-india-is-reaching-new-heights	4	2024-12-11 00:06:50.104826	0	726	168
25	Britain’s largest ancient massacre may have included cannibalism	2024-12-16 17:03:13.885537+11	2024-12-23 12:04:42.859256+11	public	ezgif-6-330deacce4.jpg	britain-s-largest-ancient-massacre-may-have-included-cannibalism	4	2024-12-16 06:03:13.81759	0	726	384
13	Stuttering Matildas caught in a time warp between past and future	2024-11-29 05:34:00.732706+11	2024-12-20 11:57:53.109803+11	public	4849.png	stuttering-matildas-caught-in-a-time-warp-between-past-and-future	6	2024-12-11 00:06:50.104826	0	726	152
22	Here are the James Webb Space Telescope’s stunning first pictures	2024-12-11 12:01:34.780839+11	2024-12-20 11:59:57.039121+11	public	ezgif-7-c5e6af94db.jpg	here-are-the-james-webb-space-telescope-s-stunning-first-pictures	11	2024-12-11 01:01:34.746007	0	726	177
17	Video games can improve mental health. Let's stop seeing them as a guilty pleasure	2024-12-04 15:10:37.227486+11	2024-12-20 12:00:10.743335+11	public	5184.png	video-games-can-improve-mental-health-let-s-stop-seeing-them-as-a-guilty-pleasure	6	2024-12-11 00:06:50.104826	0	726	174
12	What To Focus on at Microsoft Ignite This Year: Avoiding AI Catastrophes	2024-11-29 05:11:25.012016+11	2024-12-23 12:05:19.900712+11	public	Satya-Nadella-Microsoft-Ignite.jpg	what-to-focus-on-at-microsoft-ignite-this-year-avoiding-ai-catastrophes	8	2024-12-11 00:06:50.104826	0	726	313
11	AMD Is Making Great Strides in AI, May End Up Merging With Intel	2024-11-29 05:10:15.393116+11	2024-12-20 12:01:08.875446+11	public	brain-on-chip-2.jpg	amd-is-making-great-strides-in-ai-may-end-up-merging-with-intel	8	2024-12-11 00:06:50.104826	0	726	344
35	Melissa	2024-12-23 13:36:15.41859+11	2025-01-17 14:26:30.92057+11	public	\N	melissa	4	2024-12-23 02:36:15.399244	2	726	2
26	Honda and Nissan Are in Talks to Deepen Ties and Possibly Merge	2024-12-18 11:41:57.283066+11	2024-12-20 14:51:47.331268+11	public	honda-nissan.jpg	honda-and-nissan-are-in-talks-to-deepen-ties-and-possibly-merge	7	2024-12-18 00:41:57.277652	1	726	10
30	I am very cool	2024-12-18 12:34:55.001731+11	2025-01-15 12:59:15.425177+11	public	\N	i-am-very-cool	12	2024-12-18 01:34:54.997421	2	726	3
27	Ben Simmons in spotlight after Brooklyn Nets’ bombshell trade	2024-12-18 12:02:39.826947+11	2024-12-20 14:49:42.192682+11	public	Ben_Simmons_030724.jpeg	ben-simmons-in-spotlight-after-brooklyn-nets-bombshell-trade	8	2024-12-18 01:02:39.729574	1	726	3
31	‘I feel sick’: Aussie woman scammed in fake job horror	2024-12-18 15:54:33.605513+11	2024-12-20 14:51:06.649761+11	public	ezgif-6-465f7a08c9.jpg	i-feel-sick-aussie-woman-scammed-in-fake-job-horror	14	2024-12-18 04:54:33.59437	1	726	8
34	PlayStation at 30: the console that made video games cool	2024-12-20 11:52:08.640238+11	2024-12-20 11:52:08.728034+11	public	8256.png	playstation-at-30-the-console-that-made-video-games-cool	12	2024-12-20 00:52:08.532328	1	726	3
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.comments (id, body, article_id, created_at, updated_at, publish_status, user_id) FROM stdin;
16	Great overview!	1	2024-12-09 11:20:36.724952+11	2024-12-09 11:20:36.724952+11	public	3
18	Great work against the Brazilians! Keep it up Matildas!	13	2024-12-09 11:24:43.049472+11	2024-12-09 11:24:43.049472+11	public	3
19	That's interesting... never considered the positive impact video games could have on your mental health.	17	2024-12-09 11:28:50.790715+11	2024-12-09 11:28:50.790715+11	public	3
20	Honestly, I think Matildas are way overhyped. I get that they represent Australian pride but they still have a long way to go internationally.	13	2024-12-09 11:32:39.343521+11	2024-12-09 11:32:39.343521+11	public	4
21	AMD's leap into the AI space is truly inspiring! It's great to see competition heating up — Nvidia has been dominating for a while, but AMD's entry could lead to amazing innovations. I wonder how Lisa Su will steer this in the long run.	11	2024-12-09 11:39:18.759394+11	2024-12-09 11:39:18.759394+11	public	4
22	"The idea of AMD merging with Intel sounds wild. While it might help streamline x86 operations, wouldn't it also stifle competition? AMD’s been thriving because it’s had to fight to differentiate itself from Intel."	11	2024-12-09 11:41:23.859856+11	2024-12-09 11:41:23.859856+11	public	5
24	The demand for AI solutions is enormous, and it’s exciting to see AMD stepping up. With both AMD and Nvidia pushing the boundaries, we might finally start seeing more affordable generative AI tools for businesses and consumers alike.	11	2024-12-09 11:43:51.638682+11	2024-12-09 11:43:51.638682+11	public	6
25	Very insightful and very persuasive.	1	2024-12-09 11:44:36.913375+11	2024-12-09 11:44:36.913375+11	public	6
26	I’m not surprised by this at all. During lockdown, gaming was my lifeline. Animal Crossing and Stardew Valley helped me relax in ways nothing else could. It’s about time people recognized that video games can be good for mental health.	17	2024-12-09 11:45:28.65821+11	2024-12-09 11:45:28.65821+11	public	6
27	I get that video games can be therapeutic, but what about the potential for addiction and overuse? Not all games are relaxing — some are downright stressful. I think we need a balanced perspective.	17	2024-12-09 11:46:25.648901+11	2024-12-09 11:46:25.648901+11	public	4
28	Microsoft Ignite is always a goldmine of information! With all the buzz around Copilot, I’m really looking forward to hearing how companies are implementing it successfully. AI might have its challenges, but events like this help bridge the gap.	12	2024-12-09 12:12:21.833018+11	2024-12-09 12:12:21.833018+11	public	4
29	Bluesky as the Product of the Week? That’s intriguing! I’ve been hearing a lot about it but haven’t tried it yet. Would love to know if it’s worth making the switch from Twitter/X.	12	2024-12-09 12:14:18.216311+11	2024-12-09 12:14:18.216311+11	public	5
30	I’m not a huge fan of gochujang—could I substitute it with something else for a milder version? Maybe a mix of sriracha and soy sauce? Curious to hear thoughts!	9	2024-12-09 12:15:37.711649+11	2024-12-09 12:15:37.711649+11	public	5
31	The James Webb Space Telescope is redefining our understanding of the universe! These images aren’t just visually stunning; they’re a testament to human ingenuity and our relentless curiosity about the cosmos. The thought that every patch of "empty" sky is actually brimming with galaxies is mind-blowing. What an incredible time to be alive and witness this leap in astronomy!	22	2024-12-16 10:56:01.277103+11	2024-12-16 10:56:01.277103+11	public	7
32	Hi Jessica,\n\nGreat question! If you're not a fan of gochujang and want a milder version, a mix of sriracha and soy sauce is a good option. Sriracha will give you some heat, while the soy sauce will add a savory, umami flavor. You can also balance it out with a bit of honey or sugar to mimic the slight sweetness of gochujang.\n\nIf you're looking for even milder options, you could try using a little miso paste combined with chili flakes, or even just a simple blend of soy sauce, garlic, and a touch of rice vinegar for some tang.\n\nFeel free to adjust the proportions to suit your taste, and enjoy experimenting!	9	2024-12-16 12:06:31.49012+11	2024-12-16 12:06:31.49012+11	public	7
\.


--
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) FROM stdin;
\.


--
-- Data for Name: pg_search_documents; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.pg_search_documents (id, content, searchable_type, searchable_id, created_at, updated_at) FROM stdin;
28	Ruby on Rails Article	Article	1	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
29	The new Ashes? How the rivalry between Australia and India is reaching new heights	Article	14	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
30	Sticky Gochujang Tofu with Herbs and Peanuts	Article	9	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
31	Stuttering Matildas caught in a time warp between past and future	Article	13	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
32	Here are the James Webb Space Telescope’s stunning first pictures	Article	22	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
33	Video games can improve mental health. Let's stop seeing them as a guilty pleasure	Article	17	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
34	What To Focus on at Microsoft Ignite This Year: Avoiding AI Catastrophes	Article	12	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
35	Britain’s largest ancient massacre may have included cannibalism	Article	25	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
36	AMD Is Making Great Strides in AI, May End Up Merging With Intel	Article	11	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
37	Garlic and Black Pepper Beef Skewers	Article	10	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
38	Ben Simmons in spotlight after Brooklyn Nets’ bombshell trade	Article	27	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
39	‘I feel sick’: Aussie woman scammed in fake job horror	Article	31	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
40	Honda and Nissan Are in Talks to Deepen Ties and Possibly Merge	Article	26	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
41	I am very cool	Article	30	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
42	PlayStation at 30: the console that made video games cool	Article	34	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
43	CRISPR genome-editing grows up: advanced therapies head for the clinic	Article	28	2024-12-22 23:22:10.736151	2024-12-22 23:22:10.736151
44	Robert Lee	User	4	2024-12-22 23:22:20.122214	2024-12-22 23:22:20.122214
45	Jessica W	User	5	2024-12-22 23:22:20.122214	2024-12-22 23:22:20.122214
46	Melissa Smith	User	6	2024-12-22 23:22:20.122214	2024-12-22 23:22:20.122214
47	Wendy Clark	User	7	2024-12-22 23:22:20.122214	2024-12-22 23:22:20.122214
48	Raman Singh	User	8	2024-12-22 23:22:20.122214	2024-12-22 23:22:20.122214
49	admin1	User	10	2024-12-22 23:22:20.122214	2024-12-22 23:22:20.122214
50	Phoebe Hopman	User	11	2024-12-22 23:22:20.122214	2024-12-22 23:22:20.122214
51	Andrew Sugito	User	3	2024-12-22 23:22:20.122214	2024-12-22 23:22:20.122214
52	Charlie Purser	User	12	2024-12-22 23:22:20.122214	2024-12-22 23:22:20.122214
53	admin2	User	13	2024-12-22 23:22:20.122214	2024-12-22 23:22:20.122214
54	Alyssa Lee	User	14	2024-12-22 23:22:20.122214	2024-12-22 23:22:20.122214
55	Melissa	Article	35	2024-12-23 02:36:15.475404	2024-12-23 02:36:15.475404
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.schema_migrations (version) FROM stdin;
20241124234501
20241125043242
20241125052939
20241125053027
20241129005501
20241129060435
20241129060529
20241204034105
20241204034150
20241204040221
20241204053558
20241206034851
20241209000747
20241209001154
20241209012935
20241209032240
20241209042748
20241209053251
20241210223855
20241210235833
20241216024158
20241216042520
20241218041219
20241218041843
20241219222900
20241219222901
20241219232800
20241222223012
20250106012908
20250106013859
20250109223310
20250109224210
\.


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.taggings (id, tag_id, article_id, created_at, updated_at) FROM stdin;
9	6	9	2024-12-02 01:33:20.567148+11	2024-12-02 01:33:20.567148+11
10	7	9	2024-12-02 01:33:20.570427+11	2024-12-02 01:33:20.570427+11
11	8	9	2024-12-02 01:33:20.57421+11	2024-12-02 01:33:20.57421+11
12	9	9	2024-12-02 01:33:20.577184+11	2024-12-02 01:33:20.577184+11
13	4	11	2024-12-02 01:52:48.32858+11	2024-12-02 01:52:48.32858+11
14	10	11	2024-12-02 01:52:48.331907+11	2024-12-02 01:52:48.331907+11
15	11	11	2024-12-02 01:52:48.333887+11	2024-12-02 01:52:48.333887+11
16	12	11	2024-12-02 01:52:48.335682+11	2024-12-02 01:52:48.335682+11
17	13	11	2024-12-02 01:52:48.339316+11	2024-12-02 01:52:48.339316+11
18	4	12	2024-12-02 01:54:37.231683+11	2024-12-02 01:54:37.231683+11
19	10	12	2024-12-02 01:54:37.234268+11	2024-12-02 01:54:37.234268+11
20	14	12	2024-12-02 01:54:37.236239+11	2024-12-02 01:54:37.236239+11
21	15	12	2024-12-02 01:54:37.239156+11	2024-12-02 01:54:37.239156+11
22	16	12	2024-12-02 01:54:37.244662+11	2024-12-02 01:54:37.244662+11
23	17	17	2024-12-04 15:10:37.249767+11	2024-12-04 15:10:37.249767+11
24	18	17	2024-12-04 15:10:37.261289+11	2024-12-04 15:10:37.261289+11
25	19	17	2024-12-04 15:10:37.266737+11	2024-12-04 15:10:37.266737+11
26	20	17	2024-12-04 15:10:37.269814+11	2024-12-04 15:10:37.269814+11
27	21	17	2024-12-04 15:10:37.273825+11	2024-12-04 15:10:37.273825+11
28	22	17	2024-12-04 15:10:37.277734+11	2024-12-04 15:10:37.277734+11
29	23	17	2024-12-04 15:10:37.281517+11	2024-12-04 15:10:37.281517+11
30	4	17	2024-12-04 15:11:26.007814+11	2024-12-04 15:11:26.007814+11
31	3	1	2024-12-09 12:04:46.249246+11	2024-12-09 12:04:46.249246+11
32	4	1	2024-12-09 12:04:46.269394+11	2024-12-09 12:04:46.269394+11
33	5	1	2024-12-09 12:04:46.276208+11	2024-12-09 12:04:46.276208+11
40	28	14	2024-12-09 12:17:27.384223+11	2024-12-09 12:17:27.384223+11
41	29	14	2024-12-09 12:17:27.388607+11	2024-12-09 12:17:27.388607+11
42	35	22	2024-12-11 12:01:34.78831+11	2024-12-11 12:01:34.78831+11
43	36	22	2024-12-11 12:01:34.795605+11	2024-12-11 12:01:34.795605+11
44	37	22	2024-12-11 12:01:34.79802+11	2024-12-11 12:01:34.79802+11
45	38	22	2024-12-11 12:01:34.802053+11	2024-12-11 12:01:34.802053+11
46	39	22	2024-12-11 12:01:34.804201+11	2024-12-11 12:01:34.804201+11
48	41	25	2024-12-16 17:03:13.91805+11	2024-12-16 17:03:13.91805+11
49	42	25	2024-12-16 17:03:13.92864+11	2024-12-16 17:03:13.92864+11
50	43	25	2024-12-16 17:03:13.933304+11	2024-12-16 17:03:13.933304+11
51	44	25	2024-12-16 17:03:13.936489+11	2024-12-16 17:03:13.936489+11
52	36	25	2024-12-16 17:12:43.077023+11	2024-12-16 17:12:43.077023+11
53	45	26	2024-12-18 11:41:57.301155+11	2024-12-18 11:41:57.301155+11
54	46	26	2024-12-18 11:41:57.309297+11	2024-12-18 11:41:57.309297+11
55	47	26	2024-12-18 11:41:57.311984+11	2024-12-18 11:41:57.311984+11
56	48	26	2024-12-18 11:41:57.314319+11	2024-12-18 11:41:57.314319+11
57	49	26	2024-12-18 11:41:57.335218+11	2024-12-18 11:41:57.335218+11
58	50	26	2024-12-18 11:41:57.337887+11	2024-12-18 11:41:57.337887+11
59	4	26	2024-12-18 11:41:57.340122+11	2024-12-18 11:41:57.340122+11
60	51	26	2024-12-18 11:56:03.271055+11	2024-12-18 11:56:03.271055+11
61	52	27	2024-12-18 12:02:39.84184+11	2024-12-18 12:02:39.84184+11
62	53	27	2024-12-18 12:02:39.845757+11	2024-12-18 12:02:39.845757+11
63	54	27	2024-12-18 12:02:39.848254+11	2024-12-18 12:02:39.848254+11
64	55	27	2024-12-18 12:02:39.850345+11	2024-12-18 12:02:39.850345+11
65	56	27	2024-12-18 12:02:39.852633+11	2024-12-18 12:02:39.852633+11
66	57	27	2024-12-18 12:02:39.854877+11	2024-12-18 12:02:39.854877+11
67	58	27	2024-12-18 12:02:39.857321+11	2024-12-18 12:02:39.857321+11
68	59	27	2024-12-18 12:02:39.85967+11	2024-12-18 12:02:39.85967+11
69	60	27	2024-12-18 12:02:39.862474+11	2024-12-18 12:02:39.862474+11
70	61	27	2024-12-18 12:02:39.864693+11	2024-12-18 12:02:39.864693+11
71	62	27	2024-12-18 12:02:39.867645+11	2024-12-18 12:02:39.867645+11
72	36	28	2024-12-18 12:09:12.899095+11	2024-12-18 12:09:12.899095+11
73	63	28	2024-12-18 12:09:12.901343+11	2024-12-18 12:09:12.901343+11
74	64	28	2024-12-18 12:09:12.905811+11	2024-12-18 12:09:12.905811+11
75	65	28	2024-12-18 12:09:12.908235+11	2024-12-18 12:09:12.908235+11
76	66	28	2024-12-18 12:09:12.91187+11	2024-12-18 12:09:12.91187+11
77	67	28	2024-12-18 12:09:12.915293+11	2024-12-18 12:09:12.915293+11
78	68	28	2024-12-18 12:09:12.917817+11	2024-12-18 12:09:12.917817+11
79	69	28	2024-12-18 12:09:12.921752+11	2024-12-18 12:09:12.921752+11
80	70	30	2024-12-18 12:35:22.984681+11	2024-12-18 12:35:22.984681+11
81	71	31	2024-12-18 15:54:33.615933+11	2024-12-18 15:54:33.615933+11
82	33	31	2024-12-18 15:54:33.623366+11	2024-12-18 15:54:33.623366+11
83	72	31	2024-12-18 15:54:33.626217+11	2024-12-18 15:54:33.626217+11
84	73	31	2024-12-18 15:54:33.628844+11	2024-12-18 15:54:33.628844+11
85	74	31	2024-12-18 15:54:33.698029+11	2024-12-18 15:54:33.698029+11
86	75	31	2024-12-18 15:54:33.701658+11	2024-12-18 15:54:33.701658+11
87	76	31	2024-12-18 15:54:33.705779+11	2024-12-18 15:54:33.705779+11
88	77	34	2024-12-20 11:52:08.664323+11	2024-12-20 11:52:08.664323+11
89	21	34	2024-12-20 11:52:08.675112+11	2024-12-20 11:52:08.675112+11
90	17	34	2024-12-20 11:52:08.685768+11	2024-12-20 11:52:08.685768+11
91	78	34	2024-12-20 11:52:08.692585+11	2024-12-20 11:52:08.692585+11
92	79	34	2024-12-20 11:52:08.698333+11	2024-12-20 11:52:08.698333+11
93	80	34	2024-12-20 11:52:08.702371+11	2024-12-20 11:52:08.702371+11
94	81	13	2024-12-20 11:59:31.962317+11	2024-12-20 11:59:31.962317+11
95	82	13	2024-12-20 11:59:31.967351+11	2024-12-20 11:59:31.967351+11
96	83	13	2024-12-20 11:59:31.973438+11	2024-12-20 11:59:31.973438+11
97	84	13	2024-12-20 11:59:31.976054+11	2024-12-20 11:59:31.976054+11
98	33	13	2024-12-20 11:59:31.978504+11	2024-12-20 11:59:31.978504+11
99	85	13	2024-12-20 11:59:31.98115+11	2024-12-20 11:59:31.98115+11
100	86	13	2024-12-20 11:59:31.984073+11	2024-12-20 11:59:31.984073+11
101	87	13	2024-12-20 11:59:31.988843+11	2024-12-20 11:59:31.988843+11
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.tags (id, name, created_at, updated_at, slug, tagify_hash) FROM stdin;
88	test	2025-01-08 10:12:21.948932+11	2025-01-08 10:12:21.948932+11	test	\N
3	ruby	2024-12-01 22:58:32.78174+11	2025-01-06 12:42:30.71731+11	ruby	{"value": "ruby"}
4	technology	2024-12-01 22:58:32.818073+11	2025-01-06 12:42:30.747973+11	technology	{"value": "technology"}
5	latest	2024-12-02 00:26:56.681103+11	2025-01-06 12:42:30.764849+11	latest	{"value": "latest"}
6	cooking	2024-12-02 01:33:20.533151+11	2025-01-06 12:42:30.768958+11	cooking	{"value": "cooking"}
7	healthy ingredients	2024-12-02 01:33:20.542539+11	2025-01-06 12:42:30.773843+11	healthy-ingredients	{"value": "healthy ingredients"}
8	easy-recipes	2024-12-02 01:33:20.547167+11	2025-01-06 12:42:30.785613+11	easy-recipes	{"value": "easy-recipes"}
9	plant-based meals	2024-12-02 01:33:20.551639+11	2025-01-06 12:42:30.791648+11	plant-based-meals	{"value": "plant-based meals"}
10	ai	2024-12-02 01:52:48.267317+11	2025-01-06 12:42:30.795294+11	ai	{"value": "ai"}
11	nvidia	2024-12-02 01:52:48.273613+11	2025-01-06 12:42:30.801931+11	nvidia	{"value": "nvidia"}
12	amd	2024-12-02 01:52:48.279774+11	2025-01-06 12:42:30.810495+11	amd	{"value": "amd"}
13	google-gemini-advanced	2024-12-02 01:52:48.284333+11	2025-01-06 12:42:30.820721+11	google-gemini-advanced	{"value": "google-gemini-advanced"}
14	microsoft ignite	2024-12-02 01:54:37.21286+11	2025-01-06 12:42:30.82263+11	microsoft-ignite	{"value": "microsoft ignite"}
15	bluesky	2024-12-02 01:54:37.21873+11	2025-01-06 12:42:30.825211+11	bluesky	{"value": "bluesky"}
18	roblox	2024-12-04 15:10:36.895311+11	2025-01-06 12:42:30.843705+11	roblox	{"value": "roblox"}
16	microsoft	2024-12-02 01:54:37.22288+11	2025-01-06 12:42:30.828174+11	microsoft	{"value": "microsoft"}
17	video games	2024-12-04 15:10:36.837444+11	2025-01-06 12:42:30.833252+11	video-games	{"value": "video games"}
19	animal crossing	2024-12-04 15:10:36.922589+11	2025-01-06 12:42:30.846949+11	animal-crossing	{"value": "animal crossing"}
20	mental health	2024-12-04 15:10:37.006785+11	2025-01-06 12:42:30.848359+11	mental-health	{"value": "mental health"}
21	gaming	2024-12-04 15:10:37.060721+11	2025-01-06 12:42:30.849714+11	gaming	{"value": "gaming"}
22	oxford study	2024-12-04 15:10:37.133634+11	2025-01-06 12:42:30.851193+11	oxford-study	{"value": "oxford study"}
23	wellbeing	2024-12-04 15:10:37.153468+11	2025-01-06 12:42:30.852518+11	wellbeing	{"value": "wellbeing"}
28	cricket	2024-12-09 12:17:27.338088+11	2025-01-06 12:42:30.853832+11	cricket	{"value": "cricket"}
29	cricket australia	2024-12-09 12:17:27.368668+11	2025-01-06 12:42:30.856668+11	cricket-australia	{"value": "cricket australia"}
30	housing	2024-12-09 14:01:40.862966+11	2025-01-06 12:42:30.858346+11	housing	{"value": "housing"}
31	property market	2024-12-09 14:01:40.89+11	2025-01-06 12:42:30.862755+11	property-market	{"value": "property market"}
32	interest rate	2024-12-09 14:01:40.910031+11	2025-01-06 12:42:30.8651+11	interest-rate	{"value": "interest rate"}
33	australia	2024-12-09 14:01:40.932003+11	2025-01-06 12:42:30.867169+11	australia	{"value": "australia"}
34	property	2024-12-09 14:01:40.951099+11	2025-01-06 12:42:30.872014+11	property	{"value": "property"}
35	astronomy	2024-12-11 12:00:39.291959+11	2025-01-06 12:42:30.874911+11	astronomy	{"value": "astronomy"}
36	science	2024-12-11 12:00:39.311341+11	2025-01-06 12:42:30.896916+11	science	{"value": "science"}
37	james webb space telescope	2024-12-11 12:00:39.328721+11	2025-01-06 12:42:30.904415+11	james-webb-space-telescope	{"value": "james webb space telescope"}
38	nasa	2024-12-11 12:00:39.342854+11	2025-01-06 12:42:30.906058+11	nasa	{"value": "nasa"}
39	galaxies	2024-12-11 12:00:39.355328+11	2025-01-06 12:42:30.90762+11	galaxies	{"value": "galaxies"}
40	asd	2024-12-11 17:11:53.447924+11	2025-01-06 12:42:30.909218+11	asd	{"value": "asd"}
41	archaeology	2024-12-16 17:03:13.703806+11	2025-01-06 12:42:30.910751+11	archaeology	{"value": "archaeology"}
42	bronze age	2024-12-16 17:03:13.75726+11	2025-01-06 12:42:30.913194+11	bronze-age	{"value": "bronze age"}
43	ancient history	2024-12-16 17:03:13.771896+11	2025-01-06 12:42:30.914961+11	ancient-history	{"value": "ancient history"}
44	cannibalism	2024-12-16 17:03:13.787557+11	2025-01-06 12:42:30.916511+11	cannibalism	{"value": "cannibalism"}
45	honda	2024-12-18 11:40:04.421248+11	2025-01-06 12:42:30.918113+11	honda	{"value": "honda"}
46	nissan	2024-12-18 11:40:04.450472+11	2025-01-06 12:42:30.919756+11	nissan	{"value": "nissan"}
47	cars	2024-12-18 11:40:04.46294+11	2025-01-06 12:42:30.921328+11	cars	{"value": "cars"}
48	vehicles	2024-12-18 11:40:04.476089+11	2025-01-06 12:42:30.924015+11	vehicles	{"value": "vehicles"}
49	electric vehicles	2024-12-18 11:40:04.489502+11	2025-01-06 12:42:30.926099+11	electric-vehicles	{"value": "electric vehicles"}
50	merger	2024-12-18 11:40:04.504175+11	2025-01-06 12:42:30.927541+11	merger	{"value": "merger"}
51	japan	2024-12-18 11:56:03.247125+11	2025-01-06 12:42:30.929118+11	japan	{"value": "japan"}
52	basketball	2024-12-18 12:02:39.531157+11	2025-01-06 12:42:30.930661+11	basketball	{"value": "basketball"}
53	sport	2024-12-18 12:02:39.550153+11	2025-01-06 12:42:30.932128+11	sport	{"value": "sport"}
54	brooklyn nets	2024-12-18 12:02:39.562285+11	2025-01-06 12:42:30.935184+11	brooklyn-nets	{"value": "brooklyn nets"}
55	nba	2024-12-18 12:02:39.577403+11	2025-01-06 12:42:30.936629+11	nba	{"value": "nba"}
56	2024-25 nba season	2024-12-18 12:02:39.590725+11	2025-01-06 12:42:30.937986+11	2024-25-nba-season	{"value": "2024-25 nba season"}
57	ben simmons	2024-12-18 12:02:39.604344+11	2025-01-06 12:42:30.939716+11	ben-simmons	{"value": "ben simmons"}
58	mikal bridges	2024-12-18 12:02:39.640929+11	2025-01-06 12:42:30.941138+11	mikal-bridges	{"value": "mikal bridges"}
59	cam thomas	2024-12-18 12:02:39.654918+11	2025-01-06 12:42:30.942483+11	cam-thomas	{"value": "cam thomas"}
60	dorian finney-smith	2024-12-18 12:02:39.67184+11	2025-01-06 12:42:30.943747+11	dorian-finney-smith	{"value": "dorian finney-smith"}
61	dennis schroder	2024-12-18 12:02:39.684772+11	2025-01-06 12:42:30.944995+11	dennis-schroder	{"value": "dennis schroder"}
62	golden state warriors	2024-12-18 12:02:39.699386+11	2025-01-06 12:42:30.946272+11	golden-state-warriors	{"value": "golden state warriors"}
63	crispr	2024-12-18 12:09:12.789537+11	2025-01-06 12:42:30.947531+11	crispr	{"value": "crispr"}
64	casgevy	2024-12-18 12:09:12.801232+11	2025-01-06 12:42:30.948794+11	casgevy	{"value": "casgevy"}
65	sickle-cell disease	2024-12-18 12:09:12.814655+11	2025-01-06 12:42:30.950023+11	sickle-cell-disease	{"value": "sickle-cell disease"}
66	β-thalassaemia	2024-12-18 12:09:12.827066+11	2025-01-06 12:42:30.962596+11	thalassaemia	{"value": "β-thalassaemia"}
67	gene editing	2024-12-18 12:09:12.846972+11	2025-01-06 12:42:30.966713+11	gene-editing	{"value": "gene editing"}
68	american society of hematology	2024-12-18 12:09:12.859842+11	2025-01-06 12:42:30.968165+11	american-society-of-hematology	{"value": "american society of hematology"}
69	medicine	2024-12-18 12:09:12.873656+11	2025-01-06 12:42:30.969612+11	medicine	{"value": "medicine"}
70	i am very cool	2024-12-18 12:35:22.969249+11	2025-01-06 12:42:30.9713+11	i-am-very-cool	{"value": "i am very cool"}
71	scam	2024-12-18 15:54:33.45732+11	2025-01-06 12:42:30.972805+11	scam	{"value": "scam"}
72	employment fraud	2024-12-18 15:54:33.480174+11	2025-01-06 12:42:30.975683+11	employment-fraud	{"value": "employment fraud"}
73	finance	2024-12-18 15:54:33.498784+11	2025-01-06 12:42:30.97795+11	finance	{"value": "finance"}
74	financial loss	2024-12-18 15:54:33.521949+11	2025-01-06 12:42:30.979629+11	financial-loss	{"value": "financial loss"}
75	work-from-home	2024-12-18 15:54:33.552059+11	2025-01-06 12:42:30.981184+11	work-from-home	{"value": "work-from-home"}
76	fraud	2024-12-18 15:54:33.562717+11	2025-01-06 12:42:30.982706+11	fraud	{"value": "fraud"}
77	playstation	2024-12-20 11:52:08.337241+11	2025-01-06 12:42:30.984144+11	playstation	{"value": "playstation"}
78	nintendo	2024-12-20 11:52:08.431107+11	2025-01-06 12:42:30.986738+11	nintendo	{"value": "nintendo"}
79	sony	2024-12-20 11:52:08.453219+11	2025-01-06 12:42:30.989198+11	sony	{"value": "sony"}
80	snes	2024-12-20 11:52:08.475124+11	2025-01-06 12:42:30.991066+11	snes	{"value": "snes"}
81	soccer	2024-12-20 11:59:31.847115+11	2025-01-06 12:42:30.992796+11	soccer	{"value": "soccer"}
82	football	2024-12-20 11:59:31.872762+11	2025-01-06 12:42:30.994472+11	football	{"value": "football"}
83	matildas	2024-12-20 11:59:31.889269+11	2025-01-06 12:42:30.996372+11	matildas	{"value": "matildas"}
84	women's world cup	2024-12-20 11:59:31.900132+11	2025-01-06 12:42:30.999152+11	women-s-world-cup	{"value": "women's world cup"}
85	brazil	2024-12-20 11:59:31.915085+11	2025-01-06 12:42:31.001009+11	brazil	{"value": "brazil"}
86	paris olympics	2024-12-20 11:59:31.927031+11	2025-01-06 12:42:31.002738+11	paris-olympics	{"value": "paris olympics"}
87	2026 asian cup	2024-12-20 11:59:31.9415+11	2025-01-06 12:42:31.00448+11	2026-asian-cup	{"value": "2026 asian cup"}
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: mysite
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, username, role, image) FROM stdin;
4	blogger2@gmail.com	$2a$12$blD/RsrKG5KyA6YdIOft3eS1HBW0gEsr0dOf.ol41O0i7E02j5OGm	\N	\N	\N	2024-12-09 00:30:34.995412	2024-12-09 00:30:34.995412	Robert Lee	0	\N
5	blogger3@gmail.com	$2a$12$P.hnuu0kyoDnQK7vyR9Io.pamE9USTGgmqdCSIh2qzUB3WZhXeHBy	\N	\N	\N	2024-12-09 00:40:49.690827	2024-12-09 00:40:49.690827	Jessica W	0	\N
6	blogger4@gmail.com	$2a$12$sk.0eZkzF74LBFFNpELGX.Mi5TMYR1zNZVsuqsYQgZigGckcjRdd.	\N	\N	\N	2024-12-09 00:42:58.478669	2024-12-09 00:42:58.478669	Melissa Smith	0	\N
7	blogger5@gmail.com	$2a$12$jEVboL4jMCkzbeVx3z/VG.2xXS6CSUEz0dt4/g3dJkU7JLRk4mYsu	\N	\N	\N	2024-12-09 04:37:00.946574	2024-12-09 04:37:00.946574	Wendy Clark	0	\N
8	blogger6@gmail.com	$2a$12$5PWLeL6mkuAIimuuF536jeLe/Nvn2alcm5842wkT3sY1M5GLNiTtW	\N	\N	\N	2024-12-09 04:38:12.636455	2024-12-09 04:38:12.636455	Raman Singh	0	\N
10	adminblogger@gmail.com	$2a$12$nEGFYFgp6an6NaZdrHGf4u513VdsW6k3rlbTmyiyuICm35HvNrxpG	\N	\N	\N	2024-12-10 23:17:10.788031	2024-12-10 23:17:10.788031	admin1	1	\N
11	blogger7@gmail.com	$2a$12$zhC1R85oH.ex0bwSMySsuep3gbM2G8qA2f3EDP7xLdUQYTqKh3LxK	\N	\N	\N	2024-12-11 00:55:17.69022	2024-12-11 00:55:17.69022	Phoebe Hopman	0	\N
3	blogger@gmail.com	$2a$12$dSUHS7hV/eH8UKdSjHnFCOO672AbxvwzOtVrAVpbvf68LtLLLr3PC	\N	\N	\N	2024-12-06 04:12:56.62283	2024-12-16 03:58:29.330294	Andrew Sugito	1	\N
12	blogger8@gmail.com	$2a$12$DeUyaROe5XL00RoswmMKsO2aRqsaIuDlFPc6CffBGzjO4OJvcBQVC	\N	\N	\N	2024-12-18 01:24:44.823815	2024-12-18 01:24:44.823815	Charlie Purser	0	\N
13	adminblogger2@gmail.com	$2a$12$aPFDL.acobkH3UlpJmjptupsJQO6FMMIKnASoMdlP/O1ReipfvEH.	\N	\N	\N	2024-12-18 01:43:40.86987	2024-12-18 01:43:40.86987	admin2	1	\N
14	blogger9@gmail.com	$2a$12$rHZdQvFcEICbtu/LzPGpnOlRj8RWUASSUz1QSfNzlDx/6s.FTGr2S	\N	\N	\N	2024-12-18 04:40:29.067868	2025-01-15 04:38:54.154407	Alyssa Lee	0	\N
\.


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mysite
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 22, true);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mysite
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 1, false);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mysite
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 2, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mysite
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mysite
--

SELECT pg_catalog.setval('public.articles_id_seq', 38, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mysite
--

SELECT pg_catalog.setval('public.comments_id_seq', 32, true);


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mysite
--

SELECT pg_catalog.setval('public.friendly_id_slugs_id_seq', 1, false);


--
-- Name: pg_search_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mysite
--

SELECT pg_catalog.setval('public.pg_search_documents_id_seq', 58, true);


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mysite
--

SELECT pg_catalog.setval('public.taggings_id_seq', 102, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mysite
--

SELECT pg_catalog.setval('public.tags_id_seq', 88, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mysite
--

SELECT pg_catalog.setval('public.users_id_seq', 14, true);


--
-- Name: action_text_rich_texts action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: friendly_id_slugs friendly_id_slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.friendly_id_slugs
    ADD CONSTRAINT friendly_id_slugs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations idx_24646_sqlite_autoindex_schema_migrations_1; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT idx_24646_sqlite_autoindex_schema_migrations_1 PRIMARY KEY (version);


--
-- Name: ar_internal_metadata idx_24651_sqlite_autoindex_ar_internal_metadata_1; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT idx_24651_sqlite_autoindex_ar_internal_metadata_1 PRIMARY KEY (key);


--
-- Name: articles idx_24657_articles_pkey; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT idx_24657_articles_pkey PRIMARY KEY (id);


--
-- Name: comments idx_24664_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT idx_24664_comments_pkey PRIMARY KEY (id);


--
-- Name: tags idx_24671_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT idx_24671_tags_pkey PRIMARY KEY (id);


--
-- Name: taggings idx_24678_taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT idx_24678_taggings_pkey PRIMARY KEY (id);


--
-- Name: pg_search_documents pg_search_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.pg_search_documents
    ADD CONSTRAINT pg_search_documents_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: idx_24664_index_comments_on_article_id; Type: INDEX; Schema: public; Owner: mysite
--

CREATE INDEX idx_24664_index_comments_on_article_id ON public.comments USING btree (article_id);


--
-- Name: idx_24678_index_taggings_on_article_id; Type: INDEX; Schema: public; Owner: mysite
--

CREATE INDEX idx_24678_index_taggings_on_article_id ON public.taggings USING btree (article_id);


--
-- Name: idx_24678_index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: mysite
--

CREATE INDEX idx_24678_index_taggings_on_tag_id ON public.taggings USING btree (tag_id);


--
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: mysite
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: mysite
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: mysite
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: mysite
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: mysite
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_articles_on_slug; Type: INDEX; Schema: public; Owner: mysite
--

CREATE UNIQUE INDEX index_articles_on_slug ON public.articles USING btree (slug);


--
-- Name: index_articles_on_user_id; Type: INDEX; Schema: public; Owner: mysite
--

CREATE INDEX index_articles_on_user_id ON public.articles USING btree (user_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: mysite
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type; Type: INDEX; Schema: public; Owner: mysite
--

CREATE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type ON public.friendly_id_slugs USING btree (slug, sluggable_type);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope; Type: INDEX; Schema: public; Owner: mysite
--

CREATE UNIQUE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope ON public.friendly_id_slugs USING btree (slug, sluggable_type, scope);


--
-- Name: index_friendly_id_slugs_on_sluggable_type_and_sluggable_id; Type: INDEX; Schema: public; Owner: mysite
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_type_and_sluggable_id ON public.friendly_id_slugs USING btree (sluggable_type, sluggable_id);


--
-- Name: index_pg_search_documents_on_searchable; Type: INDEX; Schema: public; Owner: mysite
--

CREATE INDEX index_pg_search_documents_on_searchable ON public.pg_search_documents USING btree (searchable_type, searchable_id);


--
-- Name: index_tags_on_slug; Type: INDEX; Schema: public; Owner: mysite
--

CREATE UNIQUE INDEX index_tags_on_slug ON public.tags USING btree (slug);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: mysite
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: mysite
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: comments comments_article_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_article_id_fkey FOREIGN KEY (article_id) REFERENCES public.articles(id);


--
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: articles fk_rails_3d31dad1cc; Type: FK CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT fk_rails_3d31dad1cc FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: taggings taggings_article_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT taggings_article_id_fkey FOREIGN KEY (article_id) REFERENCES public.articles(id);


--
-- Name: taggings taggings_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mysite
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT taggings_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- PostgreSQL database dump complete
--

