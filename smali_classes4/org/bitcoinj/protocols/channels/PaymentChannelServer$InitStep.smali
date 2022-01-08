.class final enum Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;
.super Ljava/lang/Enum;
.source "PaymentChannelServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InitStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

.field public static final enum CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

.field public static final enum WAITING_ON_CLIENT_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

.field public static final enum WAITING_ON_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

.field public static final enum WAITING_ON_MULTISIG_ACCEPTANCE:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

.field public static final enum WAITING_ON_UNSIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 63
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    const/4 v1, 0x0

    const-string v2, "WAITING_ON_CLIENT_VERSION"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CLIENT_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    .line 65
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    const/4 v2, 0x1

    const-string v3, "WAITING_ON_UNSIGNED_REFUND"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_UNSIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    .line 66
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    const/4 v3, 0x2

    const-string v4, "WAITING_ON_CONTRACT"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    .line 67
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    const/4 v4, 0x3

    const-string v5, "WAITING_ON_MULTISIG_ACCEPTANCE"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_MULTISIG_ACCEPTANCE:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    .line 68
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    const/4 v5, 0x4

    const-string v6, "CHANNEL_OPEN"

    invoke-direct {v0, v6, v5}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    const/4 v6, 0x5

    new-array v6, v6, [Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    .line 62
    sget-object v7, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CLIENT_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    aput-object v7, v6, v1

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_UNSIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    aput-object v1, v6, v2

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    aput-object v1, v6, v3

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_MULTISIG_ACCEPTANCE:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->$VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;
    .locals 1

    .line 62
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;
    .locals 1

    .line 62
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->$VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    invoke-virtual {v0}, [Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    return-object v0
.end method
