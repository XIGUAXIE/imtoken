.class public Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;
.super Ljava/lang/Object;
.source "SRP6VerifierGenerator.java"


# instance fields
.field protected N:Ljava/math/BigInteger;

.field protected digest:Lorg/spongycastle/crypto/Digest;

.field protected g:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateVerifier([B[B[B)Ljava/math/BigInteger;
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->N:Ljava/math/BigInteger;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->calculateX(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->g:Ljava/math/BigInteger;

    iget-object p3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->N:Ljava/math/BigInteger;

    invoke-virtual {p2, p1, p3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->N:Ljava/math/BigInteger;

    .line 30
    iput-object p2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->g:Ljava/math/BigInteger;

    .line 31
    iput-object p3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    return-void
.end method
