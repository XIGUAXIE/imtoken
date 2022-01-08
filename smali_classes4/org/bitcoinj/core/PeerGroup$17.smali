.class synthetic Lorg/bitcoinj/core/PeerGroup$17;
.super Ljava/lang/Object;
.source "PeerGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bitcoinj$core$PeerGroup$FilterRecalculateMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1366
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->values()[Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bitcoinj/core/PeerGroup$17;->$SwitchMap$org$bitcoinj$core$PeerGroup$FilterRecalculateMode:[I

    :try_start_0
    sget-object v1, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->SEND_IF_CHANGED:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {v1}, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/bitcoinj/core/PeerGroup$17;->$SwitchMap$org$bitcoinj$core$PeerGroup$FilterRecalculateMode:[I

    sget-object v1, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->DONT_SEND:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {v1}, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/bitcoinj/core/PeerGroup$17;->$SwitchMap$org$bitcoinj$core$PeerGroup$FilterRecalculateMode:[I

    sget-object v1, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->FORCE_SEND_FOR_REFRESH:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {v1}, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
