.class final enum Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;
.super Ljava/lang/Enum;
.source "PaymentChannelClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InitStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum CHANNEL_CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum WAITING_FOR_CHANNEL_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum WAITING_FOR_CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum WAITING_FOR_CONNECTION_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum WAITING_FOR_INITIATE:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum WAITING_FOR_REFUND_RETURN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum WAITING_FOR_VERSION_NEGOTIATION:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 73
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    const/4 v1, 0x0

    const-string v2, "WAITING_FOR_CONNECTION_OPEN"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CONNECTION_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 74
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    const/4 v2, 0x1

    const-string v3, "WAITING_FOR_VERSION_NEGOTIATION"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_VERSION_NEGOTIATION:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 75
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    const/4 v3, 0x2

    const-string v4, "WAITING_FOR_INITIATE"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_INITIATE:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 76
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    const/4 v4, 0x3

    const-string v5, "WAITING_FOR_REFUND_RETURN"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_REFUND_RETURN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 77
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    const/4 v5, 0x4

    const-string v6, "WAITING_FOR_CHANNEL_OPEN"

    invoke-direct {v0, v6, v5}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 78
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    const/4 v6, 0x5

    const-string v7, "CHANNEL_OPEN"

    invoke-direct {v0, v7, v6}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 79
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    const/4 v7, 0x6

    const-string v8, "WAITING_FOR_CHANNEL_CLOSE"

    invoke-direct {v0, v8, v7}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 80
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    const/4 v8, 0x7

    const-string v9, "CHANNEL_CLOSED"

    invoke-direct {v0, v9, v8}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    const/16 v9, 0x8

    new-array v9, v9, [Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 72
    sget-object v10, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CONNECTION_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v10, v9, v1

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_VERSION_NEGOTIATION:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v1, v9, v2

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_INITIATE:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v1, v9, v3

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_REFUND_RETURN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v1, v9, v4

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v1, v9, v5

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v1, v9, v6

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->$VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;
    .locals 1

    .line 72
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;
    .locals 1

    .line 72
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->$VALUES:[Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    invoke-virtual {v0}, [Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    return-object v0
.end method
