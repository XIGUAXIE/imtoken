.class public final enum Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
.super Ljava/lang/Enum;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Purpose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field public static final enum ASSURANCE_CONTRACT_CLAIM:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field public static final ASSURANCE_CONTRACT_CLAIM_VALUE:I = 0x3

.field public static final enum ASSURANCE_CONTRACT_PLEDGE:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field public static final ASSURANCE_CONTRACT_PLEDGE_VALUE:I = 0x4

.field public static final enum ASSURANCE_CONTRACT_STUB:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field public static final ASSURANCE_CONTRACT_STUB_VALUE:I = 0x5

.field public static final enum KEY_ROTATION:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field public static final KEY_ROTATION_VALUE:I = 0x2

.field public static final enum RAISE_FEE:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field public static final RAISE_FEE_VALUE:I = 0x6

.field public static final enum UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field public static final UNKNOWN_VALUE:I = 0x0

.field public static final enum USER_PAYMENT:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field public static final USER_PAYMENT_VALUE:I = 0x1

.field private static final VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 8815
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1, v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 8823
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    const/4 v2, 0x1

    const-string v3, "USER_PAYMENT"

    invoke-direct {v0, v3, v2, v2, v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 8831
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    const/4 v3, 0x2

    const-string v4, "KEY_ROTATION"

    invoke-direct {v0, v4, v3, v3, v3}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 8839
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    const/4 v4, 0x3

    const-string v5, "ASSURANCE_CONTRACT_CLAIM"

    invoke-direct {v0, v5, v4, v4, v4}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_CLAIM:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 8843
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    const/4 v5, 0x4

    const-string v6, "ASSURANCE_CONTRACT_PLEDGE"

    invoke-direct {v0, v6, v5, v5, v5}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_PLEDGE:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 8847
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    const/4 v6, 0x5

    const-string v7, "ASSURANCE_CONTRACT_STUB"

    invoke-direct {v0, v7, v6, v6, v6}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_STUB:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 8855
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    const/4 v7, 0x6

    const-string v8, "RAISE_FEE"

    invoke-direct {v0, v8, v7, v7, v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->RAISE_FEE:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    const/4 v8, 0x7

    new-array v8, v8, [Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 8806
    sget-object v9, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    aput-object v9, v8, v1

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    aput-object v1, v8, v2

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    aput-object v1, v8, v3

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_CLAIM:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    aput-object v1, v8, v4

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_PLEDGE:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    aput-object v1, v8, v5

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_STUB:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 8928
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 8948
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->values()[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 8962
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8963
    iput p3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->index:I

    .line 8964
    iput p4, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 8945
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;",
            ">;"
        }
    .end annotation

    .line 8925
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 8918
    :pswitch_0
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->RAISE_FEE:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object p0

    .line 8917
    :pswitch_1
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_STUB:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object p0

    .line 8916
    :pswitch_2
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_PLEDGE:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object p0

    .line 8915
    :pswitch_3
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_CLAIM:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object p0

    .line 8914
    :pswitch_4
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object p0

    .line 8913
    :pswitch_5
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object p0

    .line 8912
    :pswitch_6
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 2

    .line 8952
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 8956
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 8953
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 1

    .line 8806
    const-class v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 1

    .line 8806
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 8941
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 8908
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 8937
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
