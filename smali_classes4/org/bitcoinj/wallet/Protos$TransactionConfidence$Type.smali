.class public final enum Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
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
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final enum BUILDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final BUILDING_VALUE:I = 0x1

.field public static final enum DEAD:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final DEAD_VALUE:I = 0x4

.field public static final enum IN_CONFLICT:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final IN_CONFLICT_VALUE:I = 0x5

.field public static final enum NOT_IN_BEST_CHAIN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final NOT_IN_BEST_CHAIN_VALUE:I = 0x3

.field public static final enum PENDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final PENDING_VALUE:I = 0x2

.field public static final enum UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final UNKNOWN_VALUE:I

.field private static final VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6762
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 6770
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const/4 v2, 0x1

    const-string v3, "BUILDING"

    invoke-direct {v0, v3, v2, v2, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->BUILDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 6778
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const/4 v3, 0x2

    const-string v4, "PENDING"

    invoke-direct {v0, v4, v3, v3, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->PENDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 6786
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const/4 v4, 0x3

    const-string v5, "NOT_IN_BEST_CHAIN"

    invoke-direct {v0, v5, v4, v4, v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->NOT_IN_BEST_CHAIN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 6794
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const/4 v5, 0x4

    const-string v6, "DEAD"

    invoke-direct {v0, v6, v5, v5, v5}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->DEAD:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 6802
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const/4 v6, 0x5

    const-string v7, "IN_CONFLICT"

    invoke-direct {v0, v7, v6, v6, v6}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->IN_CONFLICT:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const/4 v7, 0x6

    new-array v7, v7, [Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 6753
    sget-object v8, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    aput-object v8, v7, v1

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->BUILDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    aput-object v1, v7, v2

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->PENDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    aput-object v1, v7, v3

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->NOT_IN_BEST_CHAIN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    aput-object v1, v7, v4

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->DEAD:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->$VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 6874
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 6894
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->values()[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 6908
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6909
    iput p3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->index:I

    .line 6910
    iput p4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 6891
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;",
            ">;"
        }
    .end annotation

    .line 6871
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6864
    :cond_0
    sget-object p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->IN_CONFLICT:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object p0

    .line 6863
    :cond_1
    sget-object p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->DEAD:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object p0

    .line 6862
    :cond_2
    sget-object p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->NOT_IN_BEST_CHAIN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object p0

    .line 6861
    :cond_3
    sget-object p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->PENDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object p0

    .line 6860
    :cond_4
    sget-object p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->BUILDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object p0

    .line 6859
    :cond_5
    sget-object p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 2

    .line 6898
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6902
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 6899
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 1

    .line 6753
    const-class v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 1

    .line 6753
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->$VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 6887
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 6855
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 6883
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
