.class public final enum Lorg/bitcoinj/wallet/Protos$Key$Type;
.super Ljava/lang/Enum;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/wallet/Protos$Key$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Protos$Key$Type;

.field public static final enum DETERMINISTIC_KEY:Lorg/bitcoinj/wallet/Protos$Key$Type;

.field public static final DETERMINISTIC_KEY_VALUE:I = 0x4

.field public static final enum DETERMINISTIC_MNEMONIC:Lorg/bitcoinj/wallet/Protos$Key$Type;

.field public static final DETERMINISTIC_MNEMONIC_VALUE:I = 0x3

.field public static final enum ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

.field public static final ENCRYPTED_SCRYPT_AES_VALUE:I = 0x2

.field public static final enum ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

.field public static final ORIGINAL_VALUE:I = 0x1

.field private static final VALUES:[Lorg/bitcoinj/wallet/Protos$Key$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/bitcoinj/wallet/Protos$Key$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 2668
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$Type;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ORIGINAL"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/bitcoinj/wallet/Protos$Key$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 2676
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$Type;

    const/4 v3, 0x2

    const-string v4, "ENCRYPTED_SCRYPT_AES"

    invoke-direct {v0, v4, v2, v2, v3}, Lorg/bitcoinj/wallet/Protos$Key$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 2686
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$Type;

    const/4 v4, 0x3

    const-string v5, "DETERMINISTIC_MNEMONIC"

    invoke-direct {v0, v5, v3, v3, v4}, Lorg/bitcoinj/wallet/Protos$Key$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->DETERMINISTIC_MNEMONIC:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 2699
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$Type;

    const/4 v5, 0x4

    const-string v6, "DETERMINISTIC_KEY"

    invoke-direct {v0, v6, v4, v4, v5}, Lorg/bitcoinj/wallet/Protos$Key$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->DETERMINISTIC_KEY:Lorg/bitcoinj/wallet/Protos$Key$Type;

    new-array v5, v5, [Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 2659
    sget-object v6, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    aput-object v6, v5, v1

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Key$Type;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

    aput-object v1, v5, v2

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Key$Type;->DETERMINISTIC_MNEMONIC:Lorg/bitcoinj/wallet/Protos$Key$Type;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lorg/bitcoinj/wallet/Protos$Key$Type;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 2760
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$Type$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Key$Type$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2780
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Type;->values()[Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->VALUES:[Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 2794
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2795
    iput p3, p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->index:I

    .line 2796
    iput p4, p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 2777
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lorg/bitcoinj/wallet/Protos$Key$Type;",
            ">;"
        }
    .end annotation

    .line 2757
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2750
    :cond_0
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->DETERMINISTIC_KEY:Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object p0

    .line 2749
    :cond_1
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->DETERMINISTIC_MNEMONIC:Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object p0

    .line 2748
    :cond_2
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object p0

    .line 2747
    :cond_3
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 2

    .line 2784
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2788
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->VALUES:[Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 2785
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 1

    .line 2659
    const-class v0, Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 1

    .line 2659
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Protos$Key$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 2773
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 2743
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 2769
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
