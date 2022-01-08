.class Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$1;
.super Ljava/lang/Object;
.source "IESCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/KeyEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineDoFinal([BII)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;


# direct methods
.method constructor <init>(Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$1;->this$0:Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 0

    .line 437
    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object p1

    return-object p1
.end method
