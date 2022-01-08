.class public final enum Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
.super Ljava/lang/Enum;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final enum BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final BAD_TRANSACTION_VALUE:I = 0x4

.field public static final enum CHANNEL_VALUE_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final CHANNEL_VALUE_TOO_LARGE_VALUE:I = 0x6

.field public static final enum MIN_PAYMENT_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final MIN_PAYMENT_TOO_LARGE_VALUE:I = 0x7

.field public static final enum NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final NO_ACCEPTABLE_VERSION_VALUE:I = 0x3

.field public static final enum OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final OTHER_VALUE:I = 0x8

.field public static final enum SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final SYNTAX_ERROR_VALUE:I = 0x2

.field public static final enum TIMEOUT:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final TIMEOUT_VALUE:I = 0x1

.field public static final enum TIME_WINDOW_UNACCEPTABLE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final TIME_WINDOW_UNACCEPTABLE_VALUE:I = 0x5

.field private static final VALUES:[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8793
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "TIMEOUT"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIMEOUT:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8801
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const/4 v3, 0x2

    const-string v4, "SYNTAX_ERROR"

    invoke-direct {v0, v4, v2, v2, v3}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8809
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const/4 v4, 0x3

    const-string v5, "NO_ACCEPTABLE_VERSION"

    invoke-direct {v0, v5, v3, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8817
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const/4 v5, 0x4

    const-string v6, "BAD_TRANSACTION"

    invoke-direct {v0, v6, v4, v4, v5}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8826
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const/4 v6, 0x5

    const-string v7, "TIME_WINDOW_UNACCEPTABLE"

    invoke-direct {v0, v7, v5, v5, v6}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIME_WINDOW_UNACCEPTABLE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8834
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const/4 v7, 0x6

    const-string v8, "CHANNEL_VALUE_TOO_LARGE"

    invoke-direct {v0, v8, v6, v6, v7}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->CHANNEL_VALUE_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8842
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const/4 v8, 0x7

    const-string v9, "MIN_PAYMENT_TOO_LARGE"

    invoke-direct {v0, v9, v7, v7, v8}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->MIN_PAYMENT_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8846
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const/16 v9, 0x8

    const-string v10, "OTHER"

    invoke-direct {v0, v10, v8, v8, v9}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    new-array v9, v9, [Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8784
    sget-object v10, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIMEOUT:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v10, v9, v1

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v1, v9, v2

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v1, v9, v3

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v1, v9, v4

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIME_WINDOW_UNACCEPTABLE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v1, v9, v5

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->CHANNEL_VALUE_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v1, v9, v6

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->MIN_PAYMENT_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->$VALUES:[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 8933
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 8953
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->values()[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object v0

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->VALUES:[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 8967
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8968
    iput p3, p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->index:I

    .line 8969
    iput p4, p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 8950
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;",
            ">;"
        }
    .end annotation

    .line 8930
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 8923
    :pswitch_0
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object p0

    .line 8922
    :pswitch_1
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->MIN_PAYMENT_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object p0

    .line 8921
    :pswitch_2
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->CHANNEL_VALUE_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object p0

    .line 8920
    :pswitch_3
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIME_WINDOW_UNACCEPTABLE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object p0

    .line 8919
    :pswitch_4
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object p0

    .line 8918
    :pswitch_5
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object p0

    .line 8917
    :pswitch_6
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object p0

    .line 8916
    :pswitch_7
    sget-object p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIMEOUT:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 2

    .line 8957
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 8961
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->VALUES:[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 8958
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 1

    .line 8784
    const-class v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object p0
.end method

.method public static values()[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 1

    .line 8784
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->$VALUES:[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {v0}, [Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 8946
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 8912
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 8942
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
