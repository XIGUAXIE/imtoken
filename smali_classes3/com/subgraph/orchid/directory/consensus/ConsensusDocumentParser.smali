.class public Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;
.super Ljava/lang/Object;
.source "ConsensusDocumentParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParser<",
        "Lcom/subgraph/orchid/ConsensusDocument;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_DELIMITER:Ljava/lang/String; = " "


# instance fields
.field private final authorityParser:Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;

.field private currentSection:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

.field private final document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

.field private final fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

.field private final footerParser:Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;

.field private final preambleParser:Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;

.field private resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<",
            "Lcom/subgraph/orchid/ConsensusDocument;",
            ">;"
        }
    .end annotation
.end field

.field private final routerStatusParser:Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->currentSection:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    .line 31
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    .line 32
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->initializeParser()V

    .line 34
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    .line 35
    new-instance v1, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;

    invoke-direct {v1, p1, v0}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V

    iput-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->preambleParser:Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;

    .line 36
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-direct {v0, p1, v1}, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->authorityParser:Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;

    .line 37
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-direct {v0, p1, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->routerStatusParser:Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;

    .line 38
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-direct {v0, p1, v1}, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->footerParser:Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;)Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    return-object p0
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;)Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;)Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->processKeywordLine()V

    return-void
.end method

.method private createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
    .locals 1

    .line 67
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$1;-><init>(Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;)V

    return-object v0
.end method

.method private initializeParser()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->resetRawDocument()V

    .line 43
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->setHandler(Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;)V

    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    const-string v1, " "

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->setDelimiter(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    const-string v1, "directory-signature"

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->setSignatureIgnoreToken(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->startSignedEntity()V

    return-void
.end method

.method private processKeywordLine()V
    .locals 3

    const/4 v0, 0x0

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->currentSection:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->NO_SECTION:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    if-eq v1, v2, :cond_5

    .line 83
    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$2;->$SwitchMap$com$subgraph$orchid$directory$consensus$ConsensusDocumentParser$DocumentSection:[I

    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->currentSection:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->footerParser:Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->parseKeywordLine()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    move-result-object v0

    goto :goto_1

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->routerStatusParser:Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseKeywordLine()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    move-result-object v0

    goto :goto_1

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->authorityParser:Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->parseKeywordLine()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    move-result-object v0

    goto :goto_1

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->preambleParser:Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->parseKeywordLine()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    move-result-object v0

    .line 99
    :goto_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->currentSection:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    if-ne v0, v1, :cond_4

    return-void

    .line 102
    :cond_4
    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->currentSection:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult<",
            "Lcom/subgraph/orchid/ConsensusDocument;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z

    return-object v0
.end method

.method public parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<",
            "Lcom/subgraph/orchid/ConsensusDocument;",
            ">;)Z"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->processDocument()V
    :try_end_0
    .catch Lcom/subgraph/orchid/TorParsingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Lcom/subgraph/orchid/TorParsingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->parsingError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
