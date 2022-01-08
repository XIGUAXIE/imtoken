.class public Lcom/subgraph/orchid/crypto/TorPrivateKey;
.super Ljava/lang/Object;
.source "TorPrivateKey.java"


# instance fields
.field private final privateKey:Ljava/security/interfaces/RSAPrivateKey;

.field private final publicKey:Lcom/subgraph/orchid/crypto/TorPublicKey;


# direct methods
.method constructor <init>(Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorPrivateKey;->privateKey:Ljava/security/interfaces/RSAPrivateKey;

    .line 34
    new-instance p1, Lcom/subgraph/orchid/crypto/TorPublicKey;

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/crypto/TorPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorPrivateKey;->publicKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-void
.end method

.method static createGenerator()Ljava/security/KeyPairGenerator;
    .locals 2

    :try_start_0
    const-string v0, "RSA"

    .line 23
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static generateNewKeypair()Lcom/subgraph/orchid/crypto/TorPrivateKey;
    .locals 3

    .line 15
    invoke-static {}, Lcom/subgraph/orchid/crypto/TorPrivateKey;->createGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 17
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/subgraph/orchid/crypto/TorPrivateKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v1, v2, v0}, Lcom/subgraph/orchid/crypto/TorPrivateKey;-><init>(Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)V

    return-object v1
.end method


# virtual methods
.method public getPublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPrivateKey;->publicKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-object v0
.end method

.method public getRSAPrivateKey()Ljava/security/interfaces/RSAPrivateKey;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPrivateKey;->privateKey:Ljava/security/interfaces/RSAPrivateKey;

    return-object v0
.end method

.method public getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPrivateKey;->publicKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method
