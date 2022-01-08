.class Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->build(IJLjava/security/PrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

.field final synthetic val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

.field final synthetic val$keyID:J

.field final synthetic val$signature:Ljava/security/Signature;

.field final synthetic val$signatureType:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;IJLjava/security/Signature;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    iput p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signatureType:I

    iput-wide p3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$keyID:J

    iput-object p5, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    iput-object p6, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$keyID:J

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3

    new-instance v0, Lorg/bouncycastle/util/io/TeeOutputStream;

    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/SignatureOutputStream;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/SignatureOutputStream;-><init>(Ljava/security/Signature;)V

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to create signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signatureType:I

    return v0
.end method
