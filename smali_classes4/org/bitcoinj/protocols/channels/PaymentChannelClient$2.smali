.class synthetic Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;
.super Ljava/lang/Object;
.source "PaymentChannelClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bitcoin$paymentchannel$Protos$TwoWayChannelMessage$MessageType:[I

.field static final synthetic $SwitchMap$org$bitcoinj$protocols$channels$PaymentChannelClient$VersionSelector:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 448
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->values()[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoin$paymentchannel$Protos$TwoWayChannelMessage$MessageType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->SERVER_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoin$paymentchannel$Protos$TwoWayChannelMessage$MessageType:[I

    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->INITIATE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoin$paymentchannel$Protos$TwoWayChannelMessage$MessageType:[I

    sget-object v4, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->RETURN_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoin$paymentchannel$Protos$TwoWayChannelMessage$MessageType:[I

    sget-object v4, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoin$paymentchannel$Protos$TwoWayChannelMessage$MessageType:[I

    sget-object v4, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PAYMENT_ACK:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoin$paymentchannel$Protos$TwoWayChannelMessage$MessageType:[I

    sget-object v4, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoin$paymentchannel$Protos$TwoWayChannelMessage$MessageType:[I

    sget-object v4, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ERROR:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 90
    :catch_6
    invoke-static {}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->values()[Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoinj$protocols$channels$PaymentChannelClient$VersionSelector:[I

    :try_start_7
    sget-object v4, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->VERSION_1:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    invoke-virtual {v4}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoinj$protocols$channels$PaymentChannelClient$VersionSelector:[I

    sget-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->VERSION_2_ALLOW_1:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoinj$protocols$channels$PaymentChannelClient$VersionSelector:[I

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->VERSION_2:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    invoke-virtual {v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
