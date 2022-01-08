.class public final enum Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
.super Ljava/lang/Enum;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field public static final enum SOURCE_NETWORK:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field public static final SOURCE_NETWORK_VALUE:I = 0x1

.field public static final enum SOURCE_SELF:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field public static final SOURCE_SELF_VALUE:I = 0x2

.field public static final enum SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field public static final SOURCE_UNKNOWN_VALUE:I

.field private static final VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 6932
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    const/4 v1, 0x0

    const-string v2, "SOURCE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 6940
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    const/4 v2, 0x1

    const-string v3, "SOURCE_NETWORK"

    invoke-direct {v0, v3, v2, v2, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_NETWORK:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 6948
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    const/4 v3, 0x2

    const-string v4, "SOURCE_SELF"

    invoke-direct {v0, v4, v3, v3, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_SELF:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 6923
    sget-object v5, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    aput-object v5, v4, v1

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_NETWORK:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->$VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 6993
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 7013
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->values()[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 7027
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7028
    iput p3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->index:I

    .line 7029
    iput p4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 7010
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;",
            ">;"
        }
    .end annotation

    .line 6990
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6983
    :cond_0
    sget-object p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_SELF:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object p0

    .line 6982
    :cond_1
    sget-object p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_NETWORK:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object p0

    .line 6981
    :cond_2
    sget-object p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 2

    .line 7017
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 7021
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7018
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 1

    .line 6923
    const-class v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 1

    .line 6923
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->$VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 7006
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 6977
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 7002
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
