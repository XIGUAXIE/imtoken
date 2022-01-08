.class public Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;
.super Ljava/lang/Object;
.source "IntroductionPointParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParser<",
        "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

.field private final fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

.field private resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<",
            "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    .line 21
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->setHandler(Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->processKeywordLine()V

    return-void
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;)Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    return-object p0
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->validateAndReportIntroductionPoint(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V

    return-void
.end method

.method private createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
    .locals 1

    .line 42
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser$1;-><init>(Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;)V

    return-object v0
.end method

.method private processKeyword(Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;)V
    .locals 1

    .line 79
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser$2;->$SwitchMap$com$subgraph$orchid$circuits$hs$IntroductionPointKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    if-eqz p1, :cond_5

    .line 107
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->setServiceKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    if-eqz p1, :cond_5

    .line 101
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->setOnionPort(I)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    if-eqz p1, :cond_5

    .line 95
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->setOnionKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    goto :goto_0

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    if-eqz p1, :cond_5

    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    goto :goto_0

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseBase32Digest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->resetIntroductionPoint(Lcom/subgraph/orchid/data/HexDigest;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private processKeywordLine()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getCurrentKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->processKeyword(Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;)V

    :cond_0
    return-void
.end method

.method private resetIntroductionPoint(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->validateAndReportIntroductionPoint(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V

    .line 55
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;-><init>(Lcom/subgraph/orchid/data/HexDigest;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    return-void
.end method

.method private validateAndReportIntroductionPoint(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->isValidDocument()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentParsed(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    const-string v1, "Invalid introduction point"

    invoke-interface {v0, p1, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult<",
            "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;-><init>()V

    .line 37
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z

    return-object v0
.end method

.method public parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<",
            "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
            ">;)Z"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->processDocument()V
    :try_end_0
    .catch Lcom/subgraph/orchid/TorParsingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Lcom/subgraph/orchid/TorParsingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->parsingError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
