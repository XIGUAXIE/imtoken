.class public Lcom/subgraph/orchid/crypto/TorSignature;
.super Ljava/lang/Object;
.source "TorSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;
    }
.end annotation


# static fields
.field private static final ID_SIGNATURE_BEGIN:Ljava/lang/String; = "-----BEGIN ID SIGNATURE-----"

.field private static final ID_SIGNATURE_END:Ljava/lang/String; = "-----END ID SIGNATURE-----"

.field private static final SIGNATURE_BEGIN:Ljava/lang/String; = "-----BEGIN SIGNATURE-----"

.field private static final SIGNATURE_END:Ljava/lang/String; = "-----END SIGNATURE-----"


# instance fields
.field private final digestAlgorithm:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

.field private final signatureBytes:[B


# direct methods
.method private constructor <init>([BLcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorSignature;->signatureBytes:[B

    .line 53
    iput-object p2, p0, Lcom/subgraph/orchid/crypto/TorSignature;->digestAlgorithm:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    return-void
.end method

.method public static createFromPEMBuffer(Ljava/lang/String;)Lcom/subgraph/orchid/crypto/TorSignature;
    .locals 2

    .line 20
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 21
    invoke-static {v0}, Lcom/subgraph/orchid/crypto/TorSignature;->nextLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-----BEGIN SIGNATURE-----"

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-----BEGIN ID SIGNATURE-----"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Lcom/subgraph/orchid/TorParsingException;

    const-string v0, "Did not find expected signature BEGIN header"

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_1
    :goto_0
    new-instance p0, Lcom/subgraph/orchid/crypto/TorSignature;

    invoke-static {v0}, Lcom/subgraph/orchid/crypto/TorSignature;->parseBase64Data(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;->DIGEST_SHA1:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/crypto/TorSignature;-><init>([BLcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;)V

    return-object p0
.end method

.method static nextLine(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 1

    .line 37
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 39
    :cond_0
    new-instance p0, Lcom/subgraph/orchid/TorParsingException;

    const-string v0, "Did not find expected signature END header"

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 42
    new-instance v0, Lcom/subgraph/orchid/TorException;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static parseBase64Data(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    :goto_0
    invoke-static {p0}, Lcom/subgraph/orchid/crypto/TorSignature;->nextLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-----END SIGNATURE-----"

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-----END ID SIGNATURE-----"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDigestAlgorithm()Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorSignature;->digestAlgorithm:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    return-object v0
.end method

.method public getSignatureBytes()[B
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorSignature;->signatureBytes:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TorSignature: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorSignature;->signatureBytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorSignature;->signatureBytes:[B

    invoke-static {v2}, Lcom/subgraph/orchid/encoders/Hex;->encode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lcom/subgraph/orchid/crypto/TorPublicKey;Lcom/subgraph/orchid/crypto/TorMessageDigest;)Z
    .locals 0

    .line 62
    invoke-virtual {p1, p0, p2}, Lcom/subgraph/orchid/crypto/TorPublicKey;->verifySignature(Lcom/subgraph/orchid/crypto/TorSignature;Lcom/subgraph/orchid/crypto/TorMessageDigest;)Z

    move-result p1

    return p1
.end method
