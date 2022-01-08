.class public Lorg/bouncycastle/openpgp/PGPMarker;
.super Ljava/lang/Object;


# instance fields
.field private p:Lorg/bouncycastle/bcpg/MarkerPacket;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/MarkerPacket;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPMarker;->p:Lorg/bouncycastle/bcpg/MarkerPacket;

    return-void
.end method
