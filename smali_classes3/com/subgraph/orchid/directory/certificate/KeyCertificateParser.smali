.class public Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;
.super Ljava/lang/Object;
.source "KeyCertificateParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParser<",
        "Lcom/subgraph/orchid/KeyCertificate;",
        ">;"
    }
.end annotation


# static fields
.field private static final CURRENT_CERTIFICATE_VERSION:I = 0x3


# instance fields
.field private currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

.field private final fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

.field private resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<",
            "Lcom/subgraph/orchid/KeyCertificate;",
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
    iput-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    .line 23
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->setHandler(Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->processKeywordLine()V

    return-void
.end method

.method private createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
    .locals 1

    .line 27
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser$1;-><init>(Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;)V

    return-object v0
.end method

.method private processCertificateSignature()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->endSignedEntity()V

    .line 145
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseSignature()Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->verifyCurrentCertificate(Lcom/subgraph/orchid/crypto/TorSignature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getRawDocument()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->setRawDocumentData(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentParsed(Ljava/lang/Object;)V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->startNewCertificate()V

    return-void
.end method

.method private processCertificateVersion()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected certificate version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private processDirectoryAddress()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 115
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 117
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->setDirectoryAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    .line 118
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-interface {v2, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->setDirectoryPort(I)V

    return-void

    .line 116
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address/Port string incorrectly formed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private processKeyword(Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;)V
    .locals 1

    .line 73
    sget-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser$2;->$SwitchMap$com$subgraph$orchid$directory$certificate$KeyCertificateKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->processCertificateSignature()V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseSignature()Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->verifyCrossSignature(Lcom/subgraph/orchid/crypto/TorSignature;)V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->setKeyExpiryTime(Lcom/subgraph/orchid/data/Timestamp;)V

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->setKeyPublishedTime(Lcom/subgraph/orchid/data/Timestamp;)V

    goto :goto_0

    .line 87
    :pswitch_4
    iget-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->setAuthoritySigningKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    goto :goto_0

    .line 84
    :pswitch_5
    iget-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->setAuthorityIdentityKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    goto :goto_0

    .line 81
    :pswitch_6
    iget-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->setAuthorityFingerprint(Lcom/subgraph/orchid/data/HexDigest;)V

    goto :goto_0

    .line 78
    :pswitch_7
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->processDirectoryAddress()V

    goto :goto_0

    .line 75
    :pswitch_8
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->processCertificateVersion()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

    .line 38
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getCurrentKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->processKeyword(Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;)V

    :cond_0
    return-void
.end method

.method private startNewCertificate()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->resetRawDocument()V

    .line 50
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->startSignedEntity()V

    .line 51
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    return-void
.end method

.method private verifyCrossSignature(Lcom/subgraph/orchid/crypto/TorSignature;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->getAuthorityIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->getAuthoritySigningKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v1

    .line 124
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->verifySignature(Lcom/subgraph/orchid/crypto/TorSignature;Lcom/subgraph/orchid/data/HexDigest;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/TorParsingException;

    const-string v0, "Cross signature on certificate failed."

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyCurrentCertificate(Lcom/subgraph/orchid/crypto/TorSignature;)Z
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->getAuthorityIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->verifySignedEntity(Lcom/subgraph/orchid/crypto/TorPublicKey;Lcom/subgraph/orchid/crypto/TorSignature;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    const-string v1, "Signature failed"

    invoke-interface {p1, v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature failed for certificate with fingerprint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->getAuthorityFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->logWarn(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->setValidSignature()V

    .line 135
    iget-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->isValidDocument()Z

    move-result p1

    if-nez p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    const-string v2, "Certificate data is invalid"

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate data is invalid for certificate with fingerprint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->currentCertificate:Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->getAuthorityFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->logWarn(Ljava/lang/String;)V

    :cond_1
    return p1
.end method


# virtual methods
.method public parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;-><init>()V

    .line 68
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z

    return-object v0
.end method

.method public parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;)Z"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    .line 56
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->startNewCertificate()V

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->processDocument()V
    :try_end_0
    .catch Lcom/subgraph/orchid/TorParsingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Lcom/subgraph/orchid/TorParsingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->parsingError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
