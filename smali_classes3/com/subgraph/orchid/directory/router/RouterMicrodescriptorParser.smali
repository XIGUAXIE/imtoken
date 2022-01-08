.class public Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;
.super Ljava/lang/Object;
.source "RouterMicrodescriptorParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParser<",
        "Lcom/subgraph/orchid/RouterMicrodescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

.field private final fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

.field private resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    .line 23
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->setHandler(Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->processKeywordLine()V

    return-void
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;)Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->finalizeDescriptor(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;)V

    return-void
.end method

.method private createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
    .locals 1

    .line 27
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser$1;-><init>(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;)V

    return-object v0
.end method

.method private finalizeDescriptor(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;)V
    .locals 2

    .line 107
    new-instance v0, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>(Z)V

    .line 108
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->getRawDocumentData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->setDescriptorDigest(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 110
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->isValidDocument()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    const-string v1, "Microdescriptor data invalid"

    invoke-interface {v0, p1, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentParsed(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private processKeyword(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->getArgumentCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->verifyExpectedArgumentCount(Ljava/lang/String;I)V

    .line 70
    sget-object v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser$2;->$SwitchMap$com$subgraph$orchid$directory$router$RouterMicrodescriptorKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->processP()V

    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    if-eqz p1, :cond_4

    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->addFamilyMember(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    if-eqz p1, :cond_4

    .line 77
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseNtorPublicKey()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->setNtorOnionKey([B)V

    goto :goto_1

    .line 72
    :cond_3
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->processOnionKeyLine()V

    :cond_4
    :goto_1
    return-void
.end method

.method private processKeywordLine()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getCurrentKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->processKeyword(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    if-eqz v0, :cond_1

    .line 62
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getRawDocument()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->setRawDocumentData(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private processOnionKeyLine()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->finalizeDescriptor(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;)V

    .line 101
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    .line 102
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->resetRawDocument(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->setOnionKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    return-void
.end method

.method private processP()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accept"

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->addAcceptPorts(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "reject"

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->addRejectPorts(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected P field in microdescriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->logWarn(Ljava/lang/String;)V

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
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;-><init>()V

    .line 52
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z

    return-object v0
.end method

.method public parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;)Z"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->processDocument()V
    :try_end_0
    .catch Lcom/subgraph/orchid/TorParsingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Lcom/subgraph/orchid/TorParsingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->parsingError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
