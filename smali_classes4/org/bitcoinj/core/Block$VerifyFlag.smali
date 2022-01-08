.class public final enum Lorg/bitcoinj/core/Block$VerifyFlag;
.super Ljava/lang/Enum;
.source "Block.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/Block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerifyFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/core/Block$VerifyFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/core/Block$VerifyFlag;

.field public static final enum HEIGHT_IN_COINBASE:Lorg/bitcoinj/core/Block$VerifyFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lorg/bitcoinj/core/Block$VerifyFlag;

    const/4 v1, 0x0

    const-string v2, "HEIGHT_IN_COINBASE"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/core/Block$VerifyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/Block$VerifyFlag;->HEIGHT_IN_COINBASE:Lorg/bitcoinj/core/Block$VerifyFlag;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/bitcoinj/core/Block$VerifyFlag;

    aput-object v0, v2, v1

    .line 51
    sput-object v2, Lorg/bitcoinj/core/Block$VerifyFlag;->$VALUES:[Lorg/bitcoinj/core/Block$VerifyFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/core/Block$VerifyFlag;
    .locals 1

    .line 51
    const-class v0, Lorg/bitcoinj/core/Block$VerifyFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/Block$VerifyFlag;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/core/Block$VerifyFlag;
    .locals 1

    .line 51
    sget-object v0, Lorg/bitcoinj/core/Block$VerifyFlag;->$VALUES:[Lorg/bitcoinj/core/Block$VerifyFlag;

    invoke-virtual {v0}, [Lorg/bitcoinj/core/Block$VerifyFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/core/Block$VerifyFlag;

    return-object v0
.end method
