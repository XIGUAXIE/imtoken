.class public Lorg/bouncycastle/openpgp/jcajce/JcaPGPSecretKeyRing;
.super Lorg/bouncycastle/openpgp/PGPSecretKeyRing;


# static fields
.field private static fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    sput-object v0, Lorg/bouncycastle/openpgp/jcajce/JcaPGPSecretKeyRing;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/openpgp/jcajce/JcaPGPSecretKeyRing;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/openpgp/jcajce/JcaPGPSecretKeyRing;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;-><init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method
