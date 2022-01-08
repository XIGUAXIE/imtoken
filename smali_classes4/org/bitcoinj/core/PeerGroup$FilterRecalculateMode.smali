.class public final enum Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;
.super Ljava/lang/Enum;
.source "PeerGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterRecalculateMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

.field public static final enum DONT_SEND:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

.field public static final enum FORCE_SEND_FOR_REFRESH:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

.field public static final enum SEND_IF_CHANGED:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1326
    new-instance v0, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    const/4 v1, 0x0

    const-string v2, "SEND_IF_CHANGED"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->SEND_IF_CHANGED:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    .line 1327
    new-instance v0, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    const/4 v2, 0x1

    const-string v3, "FORCE_SEND_FOR_REFRESH"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->FORCE_SEND_FOR_REFRESH:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    .line 1328
    new-instance v0, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    const/4 v3, 0x2

    const-string v4, "DONT_SEND"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->DONT_SEND:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    .line 1325
    sget-object v5, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->SEND_IF_CHANGED:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    aput-object v5, v4, v1

    sget-object v1, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->FORCE_SEND_FOR_REFRESH:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->$VALUES:[Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1325
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;
    .locals 1

    .line 1325
    const-class v0, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;
    .locals 1

    .line 1325
    sget-object v0, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->$VALUES:[Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {v0}, [Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    return-object v0
.end method
