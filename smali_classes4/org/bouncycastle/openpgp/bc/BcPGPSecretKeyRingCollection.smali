.class public Lorg/bouncycastle/openpgp/bc/BcPGPSecretKeyRingCollection;
.super Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;-><init>(Ljava/util/Collection;)V

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

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/bc/BcPGPSecretKeyRingCollection;-><init>(Ljava/io/InputStream;)V

    return-void
.end method
