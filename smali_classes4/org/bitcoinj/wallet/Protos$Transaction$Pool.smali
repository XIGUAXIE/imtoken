.class public final enum Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
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
    name = "Pool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/wallet/Protos$Transaction$Pool;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final enum DEAD:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final DEAD_VALUE:I = 0xa

.field public static final enum INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final INACTIVE_VALUE:I = 0x2

.field public static final enum PENDING:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final enum PENDING_INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final PENDING_INACTIVE_VALUE:I = 0x12

.field public static final PENDING_VALUE:I = 0x10

.field public static final enum SPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final SPENT_VALUE:I = 0x5

.field public static final enum UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final UNSPENT_VALUE:I = 0x4

.field private static final VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Pool;",
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

    .line 8645
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "UNSPENT"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 8653
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-string v5, "SPENT"

    invoke-direct {v0, v5, v3, v3, v4}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->SPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 8661
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const/4 v5, 0x2

    const-string v6, "INACTIVE"

    invoke-direct {v0, v6, v5, v5, v5}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 8669
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const/4 v6, 0x3

    const-string v7, "DEAD"

    const/16 v8, 0xa

    invoke-direct {v0, v7, v6, v6, v8}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->DEAD:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 8677
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const-string v7, "PENDING"

    const/16 v8, 0x10

    invoke-direct {v0, v7, v2, v2, v8}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 8685
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const-string v7, "PENDING_INACTIVE"

    const/16 v8, 0x12

    invoke-direct {v0, v7, v4, v4, v8}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING_INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const/4 v7, 0x6

    new-array v7, v7, [Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 8636
    sget-object v8, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    aput-object v8, v7, v1

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->SPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    aput-object v1, v7, v3

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    aput-object v1, v7, v5

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->DEAD:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    aput-object v1, v7, v6

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    aput-object v1, v7, v2

    aput-object v0, v7, v4

    sput-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 8757
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 8777
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->values()[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 8791
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8792
    iput p3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->index:I

    .line 8793
    iput p4, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 8774
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lorg/bitcoinj/wallet/Protos$Transaction$Pool;",
            ">;"
        }
    .end annotation

    .line 8754
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/16 v0, 0xa

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x12

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8743
    :cond_0
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->SPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p0

    .line 8742
    :cond_1
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p0

    .line 8747
    :cond_2
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING_INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p0

    .line 8746
    :cond_3
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p0

    .line 8745
    :cond_4
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->DEAD:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p0

    .line 8744
    :cond_5
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 2

    .line 8781
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 8785
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 8782
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 1

    .line 8636
    const-class v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 1

    .line 8636
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 8770
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 8738
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 8766
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
