.class public Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;
.super Ljava/lang/Object;
.source "DocumentFieldParserImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;


# static fields
.field private static final BEGIN_TAG:Ljava/lang/String; = "-----BEGIN"

.field private static final DEFAULT_DELIMITER:Ljava/lang/String; = " "

.field private static final END_TAG:Ljava/lang/String; = "-----END"

.field private static final TAG_DELIMITER:Ljava/lang/String; = "-----"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private callbackHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

.field private currentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentItemsPosition:I

.field private currentKeyword:Ljava/lang/String;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private delimiter:Ljava/lang/String;

.field private final inputBuffer:Ljava/nio/ByteBuffer;

.field private isProcessingSignedEntity:Z

.field private rawDocumentBuffer:Ljava/lang/StringBuilder;

.field private recognizeOpt:Z

.field private signatureDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

.field private signatureDigest256:Lcom/subgraph/orchid/crypto/TorMessageDigest;

.field private signatureIgnoreToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " "

    .line 35
    iput-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->delimiter:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->isProcessingSignedEntity:Z

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 51
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->createDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private static createDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT"

    .line 58
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    return-object v0
.end method

.method private getItem()Ljava/lang/String;
    .locals 3

    .line 88
    iget v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItemsPosition:I

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItems:Ljava/util/List;

    iget v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItemsPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItemsPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    const-string v1, "Overrun while reading arguments"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextLineFromInputBuffer()Ljava/lang/String;
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 379
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseObjectBody(Lcom/subgraph/orchid/directory/parsing/DocumentObject;Ljava/lang/String;)V
    .locals 3

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    invoke-virtual {p1, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->addFooterLine(Ljava/lang/String;)V

    return-void

    .line 284
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseObjectContent(Lcom/subgraph/orchid/directory/parsing/DocumentObject;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_1
    new-instance p1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EOF reached before end of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' object."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseObjectContent(Lcom/subgraph/orchid/directory/parsing/DocumentObject;Ljava/lang/String;)V
    .locals 0

    .line 290
    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->addContent(Ljava/lang/String;)V

    return-void
.end method

.method private parseObjectHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "-----BEGIN"

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-----"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    .line 269
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 268
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/TorParsingException;

    const-string v0, "Did not find expected object start tag."

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processLine(Ljava/lang/String;)Z
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->delimiter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 393
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentKeyword:Ljava/lang/String;

    .line 399
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItems:Ljava/util/List;

    const/4 v1, 0x1

    .line 400
    iput v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItemsPosition:I

    .line 402
    iget-boolean v2, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->recognizeOpt:Z

    if-eqz v2, :cond_1

    const-string v2, "opt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 403
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentKeyword:Ljava/lang/String;

    const/4 p1, 0x2

    .line 404
    iput p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItemsPosition:I

    :cond_1
    :goto_0
    return v1
.end method

.method private readLine()Ljava/lang/String;
    .locals 1

    .line 358
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->nextLineFromInputBuffer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->updateCurrentSignature(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->updateRawDocument(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private updateCurrentSignature(Ljava/lang/String;)V
    .locals 3

    .line 383
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->isProcessingSignedEntity:Z

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureIgnoreToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest256:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update(Ljava/lang/String;)V

    return-void
.end method

.method private updateRawDocument(Ljava/lang/String;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private validateParameterName(Ljava/lang/String;)V
    .locals 5

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v3, v0, v2

    .line 245
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter name can only contain letters.  Rejecting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 242
    :cond_3
    new-instance p1, Lcom/subgraph/orchid/TorParsingException;

    const-string v0, "Parameter name cannot be empty"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyExpectedArgumentCount(Ljava/lang/String;II)V
    .locals 5

    .line 175
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->argumentsRemaining()I

    move-result v0

    const-string v1, " and got "

    const-string v2, "\' expected "

    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    if-lt v0, p2, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance p3, Lcom/subgraph/orchid/TorParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough arguments for keyword \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    :goto_0
    if-eq p3, v3, :cond_3

    if-gt v0, p3, :cond_2

    goto :goto_1

    .line 181
    :cond_2
    new-instance p2, Lcom/subgraph/orchid/TorParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many arguments for keyword \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public argumentsRemaining()I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItemsPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public endSignedEntity()V
    .locals 1

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->isProcessingSignedEntity:Z

    return-void
.end method

.method public getCurrentKeyword()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getRawDocument()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureMessageDigest()Lcom/subgraph/orchid/crypto/TorMessageDigest;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    return-object v0
.end method

.method public getSignatureMessageDigest256()Lcom/subgraph/orchid/crypto/TorMessageDigest;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest256:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    return-object v0
.end method

.method public logDebug(Ljava/lang/String;)V
    .locals 1

    .line 411
    sget-object v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .locals 1

    .line 415
    sget-object v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public logWarn(Ljava/lang/String;)V
    .locals 1

    .line 419
    sget-object v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public parseAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public parseBase32Digest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromBase32String(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method public parseBase64Data()[B
    .locals 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "="

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "=="

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/encoders/Base64;->decode([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 199
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseBoolean()Z
    .locals 4

    .line 106
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseInteger()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 112
    :cond_1
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal boolean value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseConcatenatedString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->argumentsRemaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseFingerprint()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseConcatenatedString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method public parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method public parseInteger()I
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public parseInteger(Ljava/lang/String;)I
    .locals 3

    .line 121
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 123
    :catch_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse expected integer value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseIntegerList()[I
    .locals 5

    .line 128
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 130
    array-length v1, v0

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 132
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseInteger(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public parseNickname()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseNtorPublicKey()[B
    .locals 4

    .line 215
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseBase64Data()[B

    move-result-object v0

    .line 216
    array-length v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    return-object v0

    .line 217
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NTor public key was not expected length after base64 decoding.  Length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseObject()Lcom/subgraph/orchid/directory/parsing/DocumentObject;
    .locals 3

    .line 259
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseObjectHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v2, Lcom/subgraph/orchid/directory/parsing/DocumentObject;

    invoke-direct {v2, v1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0, v2, v1}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseObjectBody(Lcom/subgraph/orchid/directory/parsing/DocumentObject;Ljava/lang/String;)V

    return-object v2
.end method

.method public parseParameter()Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;
    .locals 3

    .line 229
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 234
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->validateParameterName(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseInteger(Ljava/lang/String;)I

    move-result v0

    .line 237
    new-instance v1, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;

    invoke-direct {v1, v2, v0}, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 232
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    const-string v1, "Parameter not in expected form name=value"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parsePort()I
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parsePort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public parsePort(Ljava/lang/String;)I
    .locals 3

    .line 142
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseInteger(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    return p1

    .line 144
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal port value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseObject()Lcom/subgraph/orchid/directory/parsing/DocumentObject;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->createFromPEMBuffer(Ljava/lang/String;)Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public parseSignature()Lcom/subgraph/orchid/crypto/TorSignature;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseObject()Lcom/subgraph/orchid/directory/parsing/DocumentObject;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/crypto/TorSignature;->createFromPEMBuffer(Ljava/lang/String;)Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v0

    return-object v0
.end method

.method public parseString()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;
    .locals 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :try_start_0
    new-instance v1, Lcom/subgraph/orchid/data/Timestamp;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/data/Timestamp;-><init>(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 154
    :catch_0
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse timestamp value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseTypedObject(Ljava/lang/String;)Lcom/subgraph/orchid/directory/parsing/DocumentObject;
    .locals 4

    .line 252
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseObject()Lcom/subgraph/orchid/directory/parsing/DocumentObject;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 254
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected object type.  Expecting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but got: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public processDocument()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->callbackHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    if-eqz v0, :cond_2

    .line 302
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->callbackHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;->endOfDocument()V

    return-void

    .line 307
    :cond_1
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->processLine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->callbackHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;->parseKeywordLine()V

    goto :goto_0

    .line 299
    :cond_2
    new-instance v0, Lcom/subgraph/orchid/TorException;

    const-string v1, "DocumentFieldParser#processDocument() called with null callbackHandler"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetRawDocument()V
    .locals 1

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method public resetRawDocument(Ljava/lang/String;)V
    .locals 1

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setHandler(Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->callbackHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    return-void
.end method

.method public setRecognizeOpt()V
    .locals 1

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->recognizeOpt:Z

    return-void
.end method

.method public setSignatureIgnoreToken(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureIgnoreToken:Ljava/lang/String;

    return-void
.end method

.method public startSignedEntity()V
    .locals 2

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->isProcessingSignedEntity:Z

    .line 314
    new-instance v1, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    iput-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    .line 315
    new-instance v1, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>(Z)V

    iput-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest256:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    return-void
.end method

.method public verifyExpectedArgumentCount(Ljava/lang/String;I)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2, p2}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->verifyExpectedArgumentCount(Ljava/lang/String;II)V

    return-void
.end method

.method public verifySignedEntity(Lcom/subgraph/orchid/crypto/TorPublicKey;Lcom/subgraph/orchid/crypto/TorSignature;)Z
    .locals 1

    const/4 v0, 0x0

    .line 353
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->isProcessingSignedEntity:Z

    .line 354
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-virtual {p1, p2, v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->verifySignature(Lcom/subgraph/orchid/crypto/TorSignature;Lcom/subgraph/orchid/crypto/TorMessageDigest;)Z

    move-result p1

    return p1
.end method
