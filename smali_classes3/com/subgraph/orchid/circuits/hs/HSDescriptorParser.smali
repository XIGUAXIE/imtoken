.class public Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;
.super Ljava/lang/Object;
.source "HSDescriptorParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParser<",
        "Lcom/subgraph/orchid/circuits/hs/HSDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final authentication:Lcom/subgraph/orchid/circuits/hs/HSAuthentication;

.field private final descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

.field private final fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

.field private resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<",
            "Lcom/subgraph/orchid/circuits/hs/HSDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;-><init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;)V

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    .line 33
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->setHandler(Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;)V

    .line 34
    new-instance p2, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;-><init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;)V

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    .line 35
    new-instance p1, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;

    invoke-direct {p1, p3}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;-><init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;)V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->authentication:Lcom/subgraph/orchid/circuits/hs/HSAuthentication;

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->processKeywordLine()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 18
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    return-object p0
.end method

.method private createIntroductionPointBuffer(Lcom/subgraph/orchid/directory/parsing/DocumentObject;)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->getContent(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/subgraph/orchid/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 138
    aget-byte v0, p1, v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 139
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->authentication:Lcom/subgraph/orchid/circuits/hs/HSAuthentication;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->decryptIntroductionPoints([B)[B

    move-result-object p1

    .line 143
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 145
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decrypt introduction points: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
    .locals 1

    .line 39
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$1;-><init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;)V

    return-object v0
.end method

.method private processIntroductionPoints()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseObject()Lcom/subgraph/orchid/directory/parsing/DocumentObject;

    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->createIntroductionPointBuffer(Lcom/subgraph/orchid/directory/parsing/DocumentObject;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;

    new-instance v2, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V

    .line 119
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$2;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$2;-><init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;)V

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z

    return-void
.end method

.method private processKeyword(Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;)V
    .locals 1

    .line 77
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$3;->$SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->processSignature()V

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->processIntroductionPoints()V

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseIntegerList()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->setProtocolVersions([I)V

    goto :goto_0

    .line 96
    :pswitch_3
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->setPublicationTime(Lcom/subgraph/orchid/data/Timestamp;)V

    goto :goto_0

    .line 92
    :pswitch_4
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseBase32Digest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->setSecretIdPart(Lcom/subgraph/orchid/data/HexDigest;)V

    goto :goto_0

    .line 88
    :pswitch_5
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->setPermanentKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    goto :goto_0

    .line 82
    :pswitch_6
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/TorParsingException;

    const-string v0, "Unexpected Descriptor version"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :pswitch_7
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseBase32Digest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->setDescriptorId(Lcom/subgraph/orchid/data/HexDigest;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processKeywordLine()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getCurrentKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->processKeyword(Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;)V

    :cond_0
    return-void
.end method

.method private processSignature()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->endSignedEntity()V

    .line 152
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseSignature()Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->getPermanentKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->verifySignedEntity(Lcom/subgraph/orchid/crypto/TorPublicKey;Lcom/subgraph/orchid/crypto/TorSignature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    const-string v2, "Signature verification failed"

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature failed for descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->getDescriptorId()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/data/HexDigest;->toBase32()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->logWarn(Ljava/lang/String;)V

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentParsed(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult<",
            "Lcom/subgraph/orchid/circuits/hs/HSDescriptor;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;-><init>()V

    .line 65
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z

    return-object v0
.end method

.method public parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<",
            "Lcom/subgraph/orchid/circuits/hs/HSDescriptor;",
            ">;)Z"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    .line 52
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->startSignedEntity()V

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->processDocument()V
    :try_end_0
    .catch Lcom/subgraph/orchid/TorParsingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Lcom/subgraph/orchid/TorParsingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->parsingError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
