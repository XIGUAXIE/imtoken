.class public final enum Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
.super Ljava/lang/Enum;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final enum CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final CHANNEL_OPEN_VALUE:I = 0x7

.field public static final enum CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final CLIENT_VERSION_VALUE:I = 0x1

.field public static final enum CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final CLOSE_VALUE:I = 0x9

.field public static final enum ERROR:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final ERROR_VALUE:I = 0xa

.field public static final enum INITIATE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final INITIATE_VALUE:I = 0x3

.field public static final enum PAYMENT_ACK:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final PAYMENT_ACK_VALUE:I = 0xb

.field public static final enum PROVIDE_CONTRACT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final PROVIDE_CONTRACT_VALUE:I = 0x6

.field public static final enum PROVIDE_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final PROVIDE_REFUND_VALUE:I = 0x4

.field public static final enum RETURN_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final RETURN_REFUND_VALUE:I = 0x5

.field public static final enum SERVER_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final SERVER_VERSION_VALUE:I = 0x2

.field public static final enum UPDATE_PAYMENT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final UPDATE_PAYMENT_VALUE:I = 0x8

.field private static final VALUES:[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 424
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "CLIENT_VERSION"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 428
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const/4 v3, 0x2

    const-string v4, "SERVER_VERSION"

    invoke-direct {v0, v4, v2, v2, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->SERVER_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 432
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const/4 v4, 0x3

    const-string v5, "INITIATE"

    invoke-direct {v0, v5, v3, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->INITIATE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 436
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const/4 v5, 0x4

    const-string v6, "PROVIDE_REFUND"

    invoke-direct {v0, v6, v4, v4, v5}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 440
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const/4 v6, 0x5

    const-string v7, "RETURN_REFUND"

    invoke-direct {v0, v7, v5, v5, v6}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->RETURN_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 444
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const/4 v7, 0x6

    const-string v8, "PROVIDE_CONTRACT"

    invoke-direct {v0, v8, v6, v6, v7}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_CONTRACT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 458
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const/4 v8, 0x7

    const-string v9, "CHANNEL_OPEN"

    invoke-direct {v0, v9, v7, v7, v8}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 462
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const/16 v9, 0x8

    const-string v10, "UPDATE_PAYMENT"

    invoke-direct {v0, v10, v8, v8, v9}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->UPDATE_PAYMENT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 470
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const/16 v10, 0xb

    const-string v11, "PAYMENT_ACK"

    invoke-direct {v0, v11, v9, v9, v10}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PAYMENT_ACK:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 487
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const/16 v11, 0x9

    const-string v12, "CLOSE"

    invoke-direct {v0, v12, v11, v11, v11}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 498
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const/16 v12, 0xa

    const-string v13, "ERROR"

    invoke-direct {v0, v13, v12, v12, v12}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ERROR:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    new-array v10, v10, [Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 419
    sget-object v13, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v13, v10, v1

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->SERVER_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v10, v2

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->INITIATE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v10, v3

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v10, v4

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->RETURN_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v10, v5

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_CONTRACT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v10, v6

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v10, v7

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->UPDATE_PAYMENT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v10, v8

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PAYMENT_ACK:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v10, v9

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v10, v11

    aput-object v0, v10, v12

    sput-object v10, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->$VALUES:[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 605
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 625
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->values()[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    move-result-object v0

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->VALUES:[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 639
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 640
    iput p3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->index:I

    .line 641
    iput p4, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 622
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;",
            ">;"
        }
    .end annotation

    .line 602
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 593
    :pswitch_0
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PAYMENT_ACK:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p0

    .line 595
    :pswitch_1
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ERROR:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p0

    .line 594
    :pswitch_2
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p0

    .line 592
    :pswitch_3
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->UPDATE_PAYMENT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p0

    .line 591
    :pswitch_4
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p0

    .line 590
    :pswitch_5
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_CONTRACT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p0

    .line 589
    :pswitch_6
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->RETURN_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p0

    .line 588
    :pswitch_7
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p0

    .line 587
    :pswitch_8
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->INITIATE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p0

    .line 586
    :pswitch_9
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->SERVER_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p0

    .line 585
    :pswitch_a
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 2

    .line 629
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 633
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->VALUES:[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 630
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 1

    .line 419
    const-class v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p0
.end method

.method public static values()[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 1

    .line 419
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->$VALUES:[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v0}, [Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 618
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 581
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 614
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
