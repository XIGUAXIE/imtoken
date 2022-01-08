.class Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/KeyEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->encryptSessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 1

    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    return-object p1
.end method
