.class final enum Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;
.super Ljava/lang/Enum;
.source "PeerGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LocalhostCheckState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

.field public static final enum FOUND:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

.field public static final enum FOUND_AND_CONNECTED:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

.field public static final enum NOT_THERE:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

.field public static final enum NOT_TRIED:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1087
    new-instance v0, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    const/4 v1, 0x0

    const-string v2, "NOT_TRIED"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->NOT_TRIED:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    .line 1088
    new-instance v0, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    const/4 v2, 0x1

    const-string v3, "FOUND"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->FOUND:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    .line 1089
    new-instance v0, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    const/4 v3, 0x2

    const-string v4, "FOUND_AND_CONNECTED"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->FOUND_AND_CONNECTED:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    .line 1090
    new-instance v0, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    const/4 v4, 0x3

    const-string v5, "NOT_THERE"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->NOT_THERE:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    .line 1086
    sget-object v6, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->NOT_TRIED:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    aput-object v6, v5, v1

    sget-object v1, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->FOUND:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    aput-object v1, v5, v2

    sget-object v1, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->FOUND_AND_CONNECTED:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->$VALUES:[Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1086
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;
    .locals 1

    .line 1086
    const-class v0, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;
    .locals 1

    .line 1086
    sget-object v0, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->$VALUES:[Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    invoke-virtual {v0}, [Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    return-object v0
.end method
