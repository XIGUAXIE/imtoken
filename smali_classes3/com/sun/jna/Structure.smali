.class public abstract Lcom/sun/jna/Structure;
.super Ljava/lang/Object;
.source "Structure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Structure$AutoAllocated;,
        Lcom/sun/jna/Structure$FFIType;,
        Lcom/sun/jna/Structure$StructField;,
        Lcom/sun/jna/Structure$LayoutInfo;,
        Lcom/sun/jna/Structure$FieldOrder;,
        Lcom/sun/jna/Structure$StructureSet;,
        Lcom/sun/jna/Structure$ByReference;,
        Lcom/sun/jna/Structure$ByValue;
    }
.end annotation


# static fields
.field public static final ALIGN_DEFAULT:I = 0x0

.field public static final ALIGN_GNUC:I = 0x2

.field public static final ALIGN_MSVC:I = 0x3

.field public static final ALIGN_NONE:I = 0x1

.field protected static final CALCULATE_SIZE:I = -0x1

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

.field private static final busy:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lcom/sun/jna/Structure;",
            ">;>;"
        }
    .end annotation
.end field

.field static final fieldOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static final layoutInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/Structure$LayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final reads:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/sun/jna/Pointer;",
            "Lcom/sun/jna/Structure;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private actualAlignType:I

.field private alignType:I

.field private array:[Lcom/sun/jna/Structure;

.field private autoRead:Z

.field private autoWrite:Z

.field private encoding:Ljava/lang/String;

.field private memory:Lcom/sun/jna/Pointer;

.field private final nativeStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readCalled:Z

.field private size:I

.field private structAlignment:I

.field private structFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/jna/Structure$StructField;",
            ">;"
        }
    .end annotation
.end field

.field private typeInfo:J

.field private typeMapper:Lcom/sun/jna/TypeMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Structure;->LOG:Ljava/util/logging/Logger;

    .line 147
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/jna/Structure;->layoutInfo:Ljava/util/Map;

    .line 148
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/jna/Structure;->fieldOrder:Ljava/util/Map;

    .line 465
    new-instance v0, Lcom/sun/jna/Structure$1;

    invoke-direct {v0}, Lcom/sun/jna/Structure$1;-><init>()V

    sput-object v0, Lcom/sun/jna/Structure;->reads:Ljava/lang/ThreadLocal;

    .line 474
    new-instance v0, Lcom/sun/jna/Structure$2;

    invoke-direct {v0}, Lcom/sun/jna/Structure$2;-><init>()V

    sput-object v0, Lcom/sun/jna/Structure;->busy:Ljava/lang/ThreadLocal;

    .line 2259
    new-instance v0, Lcom/sun/jna/Structure$3;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Structure$3;-><init>(J)V

    sput-object v0, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, v0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;I)V

    return-void
.end method

.method protected constructor <init>(ILcom/sun/jna/TypeMapper;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0, p1, p2}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method protected constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/sun/jna/Pointer;I)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method protected constructor <init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V
    .locals 2

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lcom/sun/jna/Structure;->size:I

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    const/4 v1, 0x1

    .line 165
    iput-boolean v1, p0, Lcom/sun/jna/Structure;->autoRead:Z

    .line 166
    iput-boolean v1, p0, Lcom/sun/jna/Structure;->autoWrite:Z

    .line 197
    invoke-virtual {p0, p2}, Lcom/sun/jna/Structure;->setAlignType(I)V

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/sun/jna/Native;->getStringEncoding(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/jna/Structure;->setStringEncoding(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, p3}, Lcom/sun/jna/Structure;->initializeTypeMapper(Lcom/sun/jna/TypeMapper;)V

    .line 200
    invoke-direct {p0}, Lcom/sun/jna/Structure;->validateFields()V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 202
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->allocateMemory(I)V

    .line 207
    :goto_0
    invoke-direct {p0}, Lcom/sun/jna/Structure;->initializeFields()V

    return-void
.end method

.method protected constructor <init>(Lcom/sun/jna/TypeMapper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, v0, v1, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sun/jna/Structure;Z)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;->ensureAllocated(Z)V

    return-void
.end method

.method static synthetic access$2200()Lcom/sun/jna/Pointer;
    .locals 1

    .line 112
    sget-object v0, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    return-object v0
.end method

.method private addPadding(I)I
    .locals 1

    .line 1414
    iget v0, p0, Lcom/sun/jna/Structure;->structAlignment:I

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/Structure;->addPadding(II)I

    move-result p1

    return p1
.end method

.method private addPadding(II)I
    .locals 2

    .line 1420
    iget v0, p0, Lcom/sun/jna/Structure;->actualAlignType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1421
    rem-int v0, p1, p2

    if-eqz v0, :cond_0

    sub-int/2addr p2, v0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private allocateMemory(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 401
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Structure;->calculateSize(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->allocateMemory(I)V

    return-void
.end method

.method public static autoRead([Lcom/sun/jna/Structure;)V
    .locals 2

    .line 2188
    invoke-static {p0}, Lcom/sun/jna/Structure;->structureArrayCheck([Lcom/sun/jna/Structure;)V

    const/4 v0, 0x0

    .line 2189
    aget-object v1, p0, v0

    iget-object v1, v1, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    if-ne v1, p0, :cond_0

    .line 2190
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->autoRead()V

    goto :goto_1

    .line 2193
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 2194
    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    .line 2195
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->autoRead()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static autoWrite([Lcom/sun/jna/Structure;)V
    .locals 2

    .line 2213
    invoke-static {p0}, Lcom/sun/jna/Structure;->structureArrayCheck([Lcom/sun/jna/Structure;)V

    const/4 v0, 0x0

    .line 2214
    aget-object v1, p0, v0

    iget-object v1, v1, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    if-ne v1, p0, :cond_0

    .line 2215
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->autoWrite()V

    goto :goto_1

    .line 2218
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 2219
    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    .line 2220
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->autoWrite()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private baseClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1646
    instance-of v0, p0, Lcom/sun/jna/Structure$ByReference;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/sun/jna/Structure$ByValue;

    if-eqz v0, :cond_1

    :cond_0
    const-class v0, Lcom/sun/jna/Structure;

    .line 1648
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1649
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1651
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static busy()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sun/jna/Structure;",
            ">;"
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/sun/jna/Structure;->busy:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static createFieldsOrder(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1034
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static createFieldsOrder(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1023
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1024
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1025
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1026
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createFieldsOrder(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1019
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/jna/Structure;->createFieldsOrder(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createFieldsOrder([Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1042
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private deriveLayout(ZZ)Lcom/sun/jna/Structure$LayoutInfo;
    .locals 16

    move-object/from16 v1, p0

    .line 1232
    invoke-virtual/range {p0 .. p1}, Lcom/sun/jna/Structure;->getFields(Z)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 1237
    :cond_0
    new-instance v3, Lcom/sun/jna/Structure$LayoutInfo;

    invoke-direct {v3, v2}, Lcom/sun/jna/Structure$LayoutInfo;-><init>(Lcom/sun/jna/Structure$1;)V

    .line 1238
    iget v4, v1, Lcom/sun/jna/Structure;->alignType:I

    invoke-static {v3, v4}, Lcom/sun/jna/Structure$LayoutInfo;->access$202(Lcom/sun/jna/Structure$LayoutInfo;I)I

    .line 1239
    iget-object v4, v1, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    invoke-static {v3, v4}, Lcom/sun/jna/Structure$LayoutInfo;->access$302(Lcom/sun/jna/Structure$LayoutInfo;Lcom/sun/jna/TypeMapper;)Lcom/sun/jna/TypeMapper;

    .line 1242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    .line 1244
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    .line 1246
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    .line 1247
    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1248
    invoke-static {v3, v4}, Lcom/sun/jna/Structure$LayoutInfo;->access$002(Lcom/sun/jna/Structure$LayoutInfo;Z)Z

    .line 1250
    :cond_1
    new-instance v11, Lcom/sun/jna/Structure$StructField;

    invoke-direct {v11}, Lcom/sun/jna/Structure$StructField;-><init>()V

    .line 1251
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v12

    iput-boolean v12, v11, Lcom/sun/jna/Structure$StructField;->isVolatile:Z

    .line 1252
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v9

    iput-boolean v9, v11, Lcom/sun/jna/Structure$StructField;->isReadOnly:Z

    .line 1253
    iget-boolean v9, v11, Lcom/sun/jna/Structure$StructField;->isReadOnly:Z

    const-string v12, "\' within "

    if-eqz v9, :cond_3

    .line 1254
    sget-boolean v9, Lcom/sun/jna/Platform;->RO_FIELDS:Z

    if-eqz v9, :cond_2

    .line 1260
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_1

    .line 1255
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This VM does not support read-only fields (field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :cond_3
    :goto_1
    iput-object v8, v11, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    .line 1263
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    .line 1264
    iput-object v10, v11, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    .line 1267
    const-class v9, Lcom/sun/jna/Callback;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v10}, Ljava/lang/Class;->isInterface()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 1268
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Structure Callback field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' must be an interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_5
    :goto_2
    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_7

    const-class v9, Lcom/sun/jna/Structure;

    .line 1273
    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    .line 1277
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Nested Structure arrays must use a derived Structure type so that the size of the elements can be determined"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_7
    :goto_3
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-nez v9, :cond_8

    goto/16 :goto_8

    .line 1285
    :cond_8
    iget-object v9, v11, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v9}, Lcom/sun/jna/Structure;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_a

    .line 1286
    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_a

    if-nez p1, :cond_9

    return-object v2

    .line 1288
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Array fields must be initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1294
    :cond_a
    const-class v13, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v13, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1295
    invoke-static {v10}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v13

    .line 1296
    invoke-virtual {v13}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v14

    .line 1297
    iput-object v13, v11, Lcom/sun/jna/Structure$StructField;->writeConverter:Lcom/sun/jna/ToNativeConverter;

    .line 1298
    iput-object v13, v11, Lcom/sun/jna/Structure$StructField;->readConverter:Lcom/sun/jna/FromNativeConverter;

    .line 1299
    new-instance v13, Lcom/sun/jna/StructureReadContext;

    invoke-direct {v13, v1, v8}, Lcom/sun/jna/StructureReadContext;-><init>(Lcom/sun/jna/Structure;Ljava/lang/reflect/Field;)V

    iput-object v13, v11, Lcom/sun/jna/Structure$StructField;->context:Lcom/sun/jna/FromNativeContext;

    goto :goto_6

    .line 1301
    :cond_b
    iget-object v13, v1, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    if-eqz v13, :cond_f

    .line 1302
    invoke-interface {v13, v10}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object v13

    .line 1303
    iget-object v14, v1, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    invoke-interface {v14, v10}, Lcom/sun/jna/TypeMapper;->getFromNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/FromNativeConverter;

    move-result-object v14

    if-eqz v13, :cond_d

    if-eqz v14, :cond_d

    .line 1305
    new-instance v15, Lcom/sun/jna/StructureWriteContext;

    iget-object v4, v11, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-direct {v15, v1, v4}, Lcom/sun/jna/StructureWriteContext;-><init>(Lcom/sun/jna/Structure;Ljava/lang/reflect/Field;)V

    invoke-interface {v13, v9, v15}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 1307
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_4

    :cond_c
    const-class v4, Lcom/sun/jna/Pointer;

    .line 1308
    :goto_4
    iput-object v13, v11, Lcom/sun/jna/Structure$StructField;->writeConverter:Lcom/sun/jna/ToNativeConverter;

    .line 1309
    iput-object v14, v11, Lcom/sun/jna/Structure$StructField;->readConverter:Lcom/sun/jna/FromNativeConverter;

    .line 1310
    new-instance v13, Lcom/sun/jna/StructureReadContext;

    invoke-direct {v13, v1, v8}, Lcom/sun/jna/StructureReadContext;-><init>(Lcom/sun/jna/Structure;Ljava/lang/reflect/Field;)V

    iput-object v13, v11, Lcom/sun/jna/Structure$StructField;->context:Lcom/sun/jna/FromNativeContext;

    move-object v14, v4

    goto :goto_6

    :cond_d
    if-nez v13, :cond_e

    if-nez v14, :cond_e

    goto :goto_5

    .line 1313
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Structures require bidirectional type conversion for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1314
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    :goto_5
    move-object v14, v10

    :goto_6
    if-nez v9, :cond_10

    .line 1319
    iget-object v4, v11, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-direct {v1, v4, v10}, Lcom/sun/jna/Structure;->initializeField(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 1323
    :cond_10
    :try_start_0
    invoke-virtual {v1, v14, v9}, Lcom/sun/jna/Structure;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v4

    iput v4, v11, Lcom/sun/jna/Structure$StructField;->size:I

    .line 1324
    invoke-virtual {v1, v14, v9, v7}, Lcom/sun/jna/Structure;->getNativeAlignment(Ljava/lang/Class;Ljava/lang/Object;Z)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_13

    .line 1339
    invoke-static {v3}, Lcom/sun/jna/Structure$LayoutInfo;->access$400(Lcom/sun/jna/Structure$LayoutInfo;)I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v3, v7}, Lcom/sun/jna/Structure$LayoutInfo;->access$402(Lcom/sun/jna/Structure$LayoutInfo;I)I

    .line 1340
    rem-int v7, v6, v4

    if-eqz v7, :cond_11

    sub-int/2addr v4, v7

    add-int/2addr v6, v4

    .line 1343
    :cond_11
    instance-of v4, v1, Lcom/sun/jna/Union;

    if-eqz v4, :cond_12

    .line 1344
    iput v5, v11, Lcom/sun/jna/Structure$StructField;->offset:I

    .line 1345
    iget v4, v11, Lcom/sun/jna/Structure$StructField;->size:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v6, v4

    goto :goto_7

    .line 1348
    :cond_12
    iput v6, v11, Lcom/sun/jna/Structure$StructField;->offset:I

    .line 1349
    iget v4, v11, Lcom/sun/jna/Structure$StructField;->size:I

    add-int/2addr v6, v4

    .line 1353
    :goto_7
    invoke-static {v3}, Lcom/sun/jna/Structure$LayoutInfo;->access$500(Lcom/sun/jna/Structure$LayoutInfo;)Ljava/util/Map;

    move-result-object v4

    iget-object v7, v11, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-interface {v4, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1337
    :cond_13
    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field alignment is zero for field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    if-nez p1, :cond_14

    .line 1328
    iget-object v3, v1, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    if-nez v3, :cond_14

    return-object v2

    .line 1331
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Structure field in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", field name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1332
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_15
    if-lez v6, :cond_17

    .line 1357
    invoke-static {v3}, Lcom/sun/jna/Structure$LayoutInfo;->access$400(Lcom/sun/jna/Structure$LayoutInfo;)I

    move-result v0

    invoke-direct {v1, v6, v0}, Lcom/sun/jna/Structure;->addPadding(II)I

    move-result v0

    .line 1359
    instance-of v2, v1, Lcom/sun/jna/Structure$ByValue;

    if-eqz v2, :cond_16

    if-nez p2, :cond_16

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->getTypeInfo()Lcom/sun/jna/Pointer;

    .line 1362
    :cond_16
    invoke-static {v3, v0}, Lcom/sun/jna/Structure$LayoutInfo;->access$102(Lcom/sun/jna/Structure$LayoutInfo;I)I

    return-object v3

    .line 1366
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Structure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has unknown or zero size (ensure all fields are public)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureAllocated(Z)V
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    if-nez v0, :cond_0

    .line 377
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;->allocateMemory(Z)V

    goto :goto_0

    .line 379
    :cond_0
    iget v0, p0, Lcom/sun/jna/Structure;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 380
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Structure;->calculateSize(ZZ)I

    move-result p1

    iput p1, p0, Lcom/sun/jna/Structure;->size:I

    .line 381
    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    instance-of v1, v0, Lcom/sun/jna/Structure$AutoAllocated;

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    int-to-long v3, p1

    .line 384
    :try_start_0
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sun/jna/Pointer;->share(JJ)Lcom/sun/jna/Pointer;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 387
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Structure exceeds provided memory bounds"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private fieldOrder()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1007
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1008
    sget-object v1, Lcom/sun/jna/Structure;->fieldOrder:Ljava/util/Map;

    monitor-enter v1

    .line 1009
    :try_start_0
    sget-object v2, Lcom/sun/jna/Structure;->fieldOrder:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getFieldOrder()Ljava/util/List;

    move-result-object v2

    .line 1012
    sget-object v3, Lcom/sun/jna/Structure;->fieldOrder:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    .line 1015
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private format(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1526
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 1527
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1528
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getPointerConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 1885
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 1886
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 1887
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    aget-object v4, v4, v1

    const-class v5, Lcom/sun/jna/Pointer;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getTypeInfo(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;
    .locals 0

    .line 1806
    invoke-static {p0}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object p0

    return-object p0
.end method

.method private initializeField(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1394
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/sun/jna/Structure$ByReference;

    .line 1395
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    :try_start_0
    sget-object v0, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    invoke-static {p2, v0}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p2

    .line 1398
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Structure;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1402
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t determine size of nested structure"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1405
    :cond_0
    const-class v0, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1406
    invoke-static {p2}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object p2

    .line 1407
    invoke-virtual {p2}, Lcom/sun/jna/NativeMappedConverter;->defaultValue()Lcom/sun/jna/NativeMapped;

    move-result-object p2

    .line 1408
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Structure;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private initializeFields()V
    .locals 5

    .line 1378
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getFieldList()Ljava/util/List;

    move-result-object v0

    .line 1379
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 1381
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1383
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sun/jna/Structure;->initializeField(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1387
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading field \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    return-void
.end method

.method private initializeTypeMapper(Lcom/sun/jna/TypeMapper;)V
    .locals 0

    if-nez p1, :cond_0

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/jna/Native;->getTypeMapper(Ljava/lang/Class;)Lcom/sun/jna/TypeMapper;

    move-result-object p1

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    .line 239
    invoke-direct {p0}, Lcom/sun/jna/Structure;->layoutChanged()V

    return-void
.end method

.method private layoutChanged()V
    .locals 2

    .line 246
    iget v0, p0, Lcom/sun/jna/Structure;->size:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 247
    iput v1, p0, Lcom/sun/jna/Structure;->size:I

    .line 248
    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    instance-of v0, v0, Lcom/sun/jna/Structure$AutoAllocated;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    :cond_1
    return-void
.end method

.method public static newInstance(Ljava/lang/Class;)Lcom/sun/jna/Structure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/jna/Structure;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1871
    invoke-static {p0}, Lcom/sun/jna/Klass;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/Structure;

    .line 1872
    instance-of v0, p0, Lcom/sun/jna/Structure$ByValue;

    if-eqz v0, :cond_0

    .line 1873
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->allocateMemory()V

    :cond_0
    return-object p0
.end method

.method private static newInstance(Ljava/lang/Class;J)Lcom/sun/jna/Structure;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/jna/Structure;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1815
    :try_start_0
    sget-object p1, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/jna/Pointer;

    invoke-direct {v0, p1, p2}, Lcom/sun/jna/Pointer;-><init>(J)V

    move-object p1, v0

    :goto_0
    invoke-static {p0, p1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p0

    if-eqz v2, :cond_1

    .line 1817
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->conditionalAutoRead()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    .line 1822
    sget-object p1, Lcom/sun/jna/Structure;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "JNA: Error creating structure"

    invoke-virtual {p1, p2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/jna/Structure;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/sun/jna/Pointer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1836
    :try_start_0
    invoke-static {p0}, Lcom/sun/jna/Structure;->getPointerConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1838
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Structure;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception thrown while instantiating an instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1855
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instantiation of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (Pointer) not allowed, is it public?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1851
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t instantiate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1847
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    nop

    .line 1857
    :cond_0
    invoke-static {p0}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;)Lcom/sun/jna/Structure;

    move-result-object p0

    .line 1858
    sget-object v0, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    if-eq p1, v0, :cond_1

    .line 1859
    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;)V

    :cond_1
    return-object p0
.end method

.method static reading()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sun/jna/Pointer;",
            "Lcom/sun/jna/Structure;",
            ">;"
        }
    .end annotation

    .line 555
    sget-object v0, Lcom/sun/jna/Structure;->reads:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V
    .locals 3

    .line 654
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 657
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 658
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    const-string v1, "\' within "

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 662
    new-instance p3, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This VM does not support Structures with final fields (field \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 664
    :cond_0
    new-instance p3, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to write to read-only field \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 666
    :cond_1
    new-instance p3, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpectedly unable to write to field \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method static size(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sun/jna/Structure;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1119
    invoke-static {p0, v0}, Lcom/sun/jna/Structure;->size(Ljava/lang/Class;Lcom/sun/jna/Structure;)I

    move-result p0

    return p0
.end method

.method static size(Ljava/lang/Class;Lcom/sun/jna/Structure;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/jna/Structure;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 1129
    sget-object v0, Lcom/sun/jna/Structure;->layoutInfo:Ljava/util/Map;

    monitor-enter v0

    .line 1130
    :try_start_0
    sget-object v1, Lcom/sun/jna/Structure;->layoutInfo:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/Structure$LayoutInfo;

    .line 1131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    .line 1132
    invoke-static {v1}, Lcom/sun/jna/Structure$LayoutInfo;->access$000(Lcom/sun/jna/Structure$LayoutInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/sun/jna/Structure$LayoutInfo;->access$100(Lcom/sun/jna/Structure$LayoutInfo;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-ne v1, v0, :cond_2

    if-nez p1, :cond_1

    .line 1135
    sget-object p1, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    invoke-static {p0, p1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p1

    .line 1137
    :cond_1
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->size()I

    move-result v1

    :cond_2
    return v1

    :catchall_0
    move-exception p0

    .line 1131
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static sort(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1047
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static structureArrayCheck([Lcom/sun/jna/Structure;)V
    .locals 9

    .line 2173
    const-class v0, [Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2176
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    .line 2177
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/sun/jna/Structure;->size()I

    move-result v0

    const/4 v2, 0x1

    .line 2178
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 2179
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    iget-wide v3, v3, Lcom/sun/jna/Pointer;->peer:J

    iget-wide v5, v1, Lcom/sun/jna/Pointer;->peer:J

    mul-int v7, v0, v2

    int-to-long v7, v7

    add-long/2addr v5, v7

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2180
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Structure array elements must use contiguous memory (bad backing address at Structure array index "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private toString(IZZ)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 1532
    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    const-string v3, "line.separator"

    .line 1533
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sun/jna/Structure;->format(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1535
    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v5

    instance-of v5, v5, Lcom/sun/jna/Memory;

    if-nez v5, :cond_0

    .line 1536
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes)"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v5, ""

    move-object v8, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    .line 1540
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "["

    const-string v10, "]"

    if-nez p2, :cond_2

    const-string v5, "...}"

    const/4 v14, 0x0

    goto/16 :goto_5

    .line 1546
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v3

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1547
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/jna/Structure$StructField;

    .line 1548
    iget-object v15, v14, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v15}, Lcom/sun/jna/Structure;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v15

    .line 1549
    iget-object v9, v14, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    invoke-direct {v0, v9}, Lcom/sun/jna/Structure;->format(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    .line 1551
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1552
    iget-object v13, v14, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v15, :cond_3

    .line 1553
    iget-object v9, v14, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/sun/jna/Structure;->format(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    .line 1554
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v5

    .line 1556
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v9, v11, v17

    iget-object v9, v14, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v9, v11, v16

    const/4 v9, 0x2

    aput-object v6, v11, v9

    iget v6, v14, Lcom/sun/jna/Structure$StructField;->offset:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v11, v9

    const-string v6, "  %s %s%s@0x%X"

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1557
    instance-of v9, v15, Lcom/sun/jna/Structure;

    if-eqz v9, :cond_4

    .line 1558
    move-object v9, v15

    check-cast v9, Lcom/sun/jna/Structure;

    add-int/lit8 v11, v1, 0x1

    instance-of v13, v15, Lcom/sun/jna/Structure$ByReference;

    const/4 v14, 0x1

    xor-int/2addr v13, v14

    invoke-direct {v9, v11, v13, v2}, Lcom/sun/jna/Structure;->toString(IZZ)Ljava/lang/String;

    move-result-object v15

    .line 1560
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1561
    instance-of v9, v15, Ljava/lang/Long;

    if-eqz v9, :cond_5

    .line 1562
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    const/4 v6, 0x0

    aput-object v15, v11, v6

    const-string v6, "0x%08X"

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1564
    :cond_5
    instance-of v9, v15, Ljava/lang/Integer;

    if-eqz v9, :cond_6

    .line 1565
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v15, v11, v6

    const-string v6, "0x%04X"

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1567
    :cond_6
    instance-of v9, v15, Ljava/lang/Short;

    if-eqz v9, :cond_7

    .line 1568
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/Object;

    check-cast v15, Ljava/lang/Short;

    const/4 v6, 0x0

    aput-object v15, v11, v6

    const-string v6, "0x%02X"

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1570
    :cond_7
    instance-of v9, v15, Ljava/lang/Byte;

    if-eqz v9, :cond_8

    .line 1571
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/Object;

    check-cast v15, Ljava/lang/Byte;

    const/4 v14, 0x0

    aput-object v15, v11, v14

    const-string v6, "0x%01X"

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    .line 1574
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1576
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1577
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_9

    .line 1578
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_9
    move-object v13, v6

    goto/16 :goto_1

    :cond_a
    const/4 v14, 0x0

    move-object v5, v13

    :goto_5
    if-nez v1, :cond_10

    if-eqz v2, :cond_10

    .line 1583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "memory dump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1584
    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->size()I

    move-result v8

    invoke-virtual {v2, v5, v6, v8}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v2

    const/4 v6, 0x0

    .line 1585
    :goto_6
    array-length v5, v2

    if-ge v6, v5, :cond_f

    .line 1586
    rem-int/lit8 v5, v6, 0x4

    if-nez v5, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1587
    :cond_b
    aget-byte v8, v2, v6

    if-ltz v8, :cond_c

    aget-byte v8, v2, v6

    const/16 v9, 0x10

    if-ge v8, v9, :cond_c

    .line 1588
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1589
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v2, v6

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x3

    if-ne v5, v8, :cond_d

    .line 1590
    array-length v5, v2

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    if-ge v6, v5, :cond_e

    .line 1591
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_d
    const/4 v9, 0x1

    :cond_e
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1593
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1595
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static updateStructureByReference(Ljava/lang/Class;Lcom/sun/jna/Structure;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/jna/Structure;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Lcom/sun/jna/Pointer;",
            ")TT;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 682
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->autoRead()V

    goto :goto_1

    .line 683
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sun/jna/Structure;->reading()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/Structure;

    if-eqz p1, :cond_3

    .line 684
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 686
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->autoRead()V

    goto :goto_1

    .line 689
    :cond_3
    invoke-static {p0, p2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p0

    .line 690
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->conditionalAutoRead()V

    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method static validate(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sun/jna/Structure;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 2269
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2275
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No suitable constructor found for class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateField(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1197
    iget-object v0, p0, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    if-eqz v0, :cond_0

    .line 1198
    invoke-interface {v0, p2}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1200
    invoke-interface {v0}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/jna/Structure;->validateField(Ljava/lang/String;Ljava/lang/Class;)V

    return-void

    .line 1204
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1205
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/jna/Structure;->validateField(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 1209
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/jna/Structure;->getNativeSize(Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Structure field in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", field name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1213
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private validateFields()V
    .locals 3

    .line 1220
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getFieldList()Ljava/util/List;

    move-result-object v0

    .line 1221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 1222
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/sun/jna/Structure;->validateField(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected allocateMemory()V
    .locals 1

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;->allocateMemory(Z)V

    return-void
.end method

.method protected allocateMemory(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 414
    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->calculateSize(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_4

    :goto_0
    if-eq p1, v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/sun/jna/Structure$AutoAllocated;

    if-eqz v0, :cond_2

    .line 424
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->autoAllocate(I)Lcom/sun/jna/Memory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    .line 426
    :cond_2
    iput p1, p0, Lcom/sun/jna/Structure;->size:I

    :cond_3
    return-void

    .line 417
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Structure size must be greater than zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected autoAllocate(I)Lcom/sun/jna/Memory;
    .locals 1

    .line 298
    new-instance v0, Lcom/sun/jna/Structure$AutoAllocated;

    invoke-direct {v0, p1}, Lcom/sun/jna/Structure$AutoAllocated;-><init>(I)V

    return-object v0
.end method

.method public autoRead()V
    .locals 3

    .line 2202
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getAutoRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2203
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->read()V

    .line 2204
    iget-object v0, p0, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2205
    :goto_0
    iget-object v1, p0, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2206
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->autoRead()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public autoWrite()V
    .locals 3

    .line 2227
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getAutoWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2228
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->write()V

    .line 2229
    iget-object v0, p0, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2230
    :goto_0
    iget-object v1, p0, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2231
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->autoWrite()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected cacheTypeInfo(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 1715
    iget-wide v0, p1, Lcom/sun/jna/Pointer;->peer:J

    iput-wide v0, p0, Lcom/sun/jna/Structure;->typeInfo:J

    return-void
.end method

.method protected calculateSize(Z)I
    .locals 1

    const/4 v0, 0x0

    .line 1111
    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/Structure;->calculateSize(ZZ)I

    move-result p1

    return p1
.end method

.method calculateSize(ZZ)I
    .locals 4

    .line 1151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1153
    sget-object v1, Lcom/sun/jna/Structure;->layoutInfo:Ljava/util/Map;

    monitor-enter v1

    .line 1154
    :try_start_0
    sget-object v2, Lcom/sun/jna/Structure;->layoutInfo:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jna/Structure$LayoutInfo;

    .line 1155
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 1156
    iget v1, p0, Lcom/sun/jna/Structure;->alignType:I

    .line 1157
    invoke-static {v2}, Lcom/sun/jna/Structure$LayoutInfo;->access$200(Lcom/sun/jna/Structure$LayoutInfo;)I

    move-result v3

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    .line 1158
    invoke-static {v2}, Lcom/sun/jna/Structure$LayoutInfo;->access$300(Lcom/sun/jna/Structure$LayoutInfo;)Lcom/sun/jna/TypeMapper;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 1159
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/Structure;->deriveLayout(ZZ)Lcom/sun/jna/Structure$LayoutInfo;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_5

    .line 1162
    invoke-static {v2}, Lcom/sun/jna/Structure$LayoutInfo;->access$400(Lcom/sun/jna/Structure$LayoutInfo;)I

    move-result p1

    iput p1, p0, Lcom/sun/jna/Structure;->structAlignment:I

    .line 1163
    invoke-static {v2}, Lcom/sun/jna/Structure$LayoutInfo;->access$500(Lcom/sun/jna/Structure$LayoutInfo;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/Structure;->structFields:Ljava/util/Map;

    .line 1165
    invoke-static {v2}, Lcom/sun/jna/Structure$LayoutInfo;->access$000(Lcom/sun/jna/Structure$LayoutInfo;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1166
    sget-object p1, Lcom/sun/jna/Structure;->layoutInfo:Ljava/util/Map;

    monitor-enter p1

    .line 1172
    :try_start_1
    sget-object p2, Lcom/sun/jna/Structure;->layoutInfo:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/sun/jna/Structure;->alignType:I

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    if-eqz p2, :cond_3

    .line 1175
    :cond_2
    sget-object p2, Lcom/sun/jna/Structure;->layoutInfo:Ljava/util/Map;

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    :cond_3
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 1179
    :cond_4
    :goto_0
    invoke-static {v2}, Lcom/sun/jna/Structure$LayoutInfo;->access$100(Lcom/sun/jna/Structure$LayoutInfo;)I

    move-result p1

    goto :goto_1

    :cond_5
    const/4 p1, -0x1

    :goto_1
    return p1

    :catchall_1
    move-exception p1

    .line 1155
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public clear()V
    .locals 3

    .line 440
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    .line 441
    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->clear(J)V

    return-void
.end method

.method conditionalAutoRead()V
    .locals 1

    .line 560
    iget-boolean v0, p0, Lcom/sun/jna/Structure;->readCalled:Z

    if-nez v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->autoRead()V

    :cond_0
    return-void
.end method

.method public dataEquals(Lcom/sun/jna/Structure;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1660
    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/Structure;->dataEquals(Lcom/sun/jna/Structure;Z)Z

    move-result p1

    return p1
.end method

.method public dataEquals(Lcom/sun/jna/Structure;Z)Z
    .locals 4

    if-eqz p2, :cond_0

    .line 1671
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/jna/Structure;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/sun/jna/Pointer;->clear(J)V

    .line 1672
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->write()V

    .line 1673
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/sun/jna/Pointer;->clear(J)V

    .line 1674
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->write()V

    .line 1676
    :cond_0
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/jna/Structure;->size()I

    move-result p1

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object p1

    .line 1677
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->size()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object p2

    .line 1678
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 1679
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1680
    aget-byte v1, p1, v0

    aget-byte v3, p2, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method protected ensureAllocated()V
    .locals 1

    const/4 v0, 0x0

    .line 367
    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;->ensureAllocated(Z)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1694
    instance-of v0, p1, Lcom/sun/jna/Structure;

    if-eqz v0, :cond_0

    .line 1695
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/sun/jna/Structure;

    .line 1696
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected fieldOffset(Ljava/lang/String;)I
    .locals 3

    .line 607
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    .line 608
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Structure$StructField;

    if-eqz v0, :cond_0

    .line 612
    iget p1, v0, Lcom/sun/jna/Structure$StructField;->offset:I

    return p1

    .line 610
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method fields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/jna/Structure$StructField;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/sun/jna/Structure;->structFields:Ljava/util/Map;

    return-object v0
.end method

.method public getAutoRead()Z
    .locals 1

    .line 1782
    iget-boolean v0, p0, Lcom/sun/jna/Structure;->autoRead:Z

    return v0
.end method

.method public getAutoWrite()Z
    .locals 1

    .line 1798
    iget-boolean v0, p0, Lcom/sun/jna/Structure;->autoWrite:Z

    return v0
.end method

.method protected getFieldList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 986
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 987
    :goto_0
    const-class v2, Lcom/sun/jna/Structure;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 989
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 990
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 991
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_2

    .line 992
    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 993
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 996
    :cond_0
    aget-object v6, v3, v5

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 998
    :cond_2
    invoke-interface {v0, v4, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 988
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected getFieldOrder()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 951
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 952
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-class v2, Lcom/sun/jna/Structure;

    if-eq v1, v2, :cond_1

    .line 953
    const-class v2, Lcom/sun/jna/Structure$FieldOrder;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/sun/jna/Structure$FieldOrder;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 955
    invoke-interface {v2}, Lcom/sun/jna/Structure$FieldOrder;->value()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 952
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 960
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getFieldTypeInfo(Lcom/sun/jna/Structure$StructField;)Lcom/sun/jna/Structure$FFIType;
    .locals 3

    .line 1723
    iget-object v0, p1, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    .line 1724
    iget-object p1, p1, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 1725
    iget-object v1, p0, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    if-eqz v1, :cond_0

    .line 1726
    invoke-interface {v1, v0}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1728
    invoke-interface {v1}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    .line 1729
    new-instance v2, Lcom/sun/jna/ToNativeContext;

    invoke-direct {v2}, Lcom/sun/jna/ToNativeContext;-><init>()V

    invoke-interface {v1, p1, v2}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object p1

    .line 1732
    :cond_0
    invoke-static {p1, v0}, Lcom/sun/jna/Structure$FFIType;->access$700(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;

    move-result-object p1

    return-object p1
.end method

.method getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 4

    .line 636
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 639
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception reading field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getFields(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 1059
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getFieldList()Ljava/util/List;

    move-result-object v0

    .line 1060
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1061
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 1062
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1065
    :cond_0
    invoke-direct {p0}, Lcom/sun/jna/Structure;->fieldOrder()Ljava/util/List;

    move-result-object v2

    .line 1066
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, ")"

    const-string v6, "Structure.getFieldOrder() on "

    if-eq v3, v4, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    if-eqz p1, :cond_2

    .line 1068
    new-instance p1, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    const-string v4, " does not provide enough"

    goto :goto_1

    :cond_1
    const-string v4, " provides too many"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " names ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-static {v2}, Lcom/sun/jna/Structure;->sort(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") to match declared fields ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-static {v1}, Lcom/sun/jna/Structure;->sort(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 1083
    :cond_3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1084
    invoke-interface {p1, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1092
    invoke-virtual {p0, v0, v2}, Lcom/sun/jna/Structure;->sortFields(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 1085
    :cond_4
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " returns names ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-static {v2}, Lcom/sun/jna/Structure;->sort(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") which do not match declared field names ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-static {v1}, Lcom/sun/jna/Structure;->sort(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getNativeAlignment(Ljava/lang/Class;Ljava/lang/Object;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Z)I"
        }
    .end annotation

    .line 1451
    const-class v0, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    invoke-static {p1}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object p1

    .line 1453
    invoke-virtual {p1}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    .line 1454
    new-instance v1, Lcom/sun/jna/ToNativeContext;

    invoke-direct {v1}, Lcom/sun/jna/ToNativeContext;-><init>()V

    invoke-virtual {p1, p2, v1}, Lcom/sun/jna/NativeMappedConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object p2

    move-object p1, v0

    .line 1456
    :cond_0
    invoke-static {p1, p2}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v0

    .line 1457
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_a

    const-class v1, Ljava/lang/Long;

    if-eq v1, p1, :cond_a

    const-class v1, Ljava/lang/Integer;

    if-eq v1, p1, :cond_a

    const-class v1, Ljava/lang/Short;

    if-eq v1, p1, :cond_a

    const-class v1, Ljava/lang/Character;

    if-eq v1, p1, :cond_a

    const-class v1, Ljava/lang/Byte;

    if-eq v1, p1, :cond_a

    const-class v1, Ljava/lang/Boolean;

    if-eq v1, p1, :cond_a

    const-class v1, Ljava/lang/Float;

    if-eq v1, p1, :cond_a

    const-class v1, Ljava/lang/Double;

    if-ne v1, p1, :cond_1

    goto/16 :goto_1

    .line 1463
    :cond_1
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/sun/jna/Function;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    if-eqz v0, :cond_3

    const-class v0, Ljava/nio/Buffer;

    .line 1464
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_3
    const-class v0, Lcom/sun/jna/Callback;

    .line 1465
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    const-class v0, Lcom/sun/jna/WString;

    if-eq v0, p1, :cond_9

    const-class v0, Ljava/lang/String;

    if-ne v0, p1, :cond_4

    goto :goto_0

    .line 1470
    :cond_4
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1471
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1472
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    .line 1476
    sget-object p2, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    invoke-static {p1, p2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p2

    .line 1477
    :cond_6
    check-cast p2, Lcom/sun/jna/Structure;

    invoke-virtual {p2}, Lcom/sun/jna/Structure;->getStructAlignment()I

    move-result v0

    goto :goto_1

    .line 1480
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1481
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p3}, Lcom/sun/jna/Structure;->getNativeAlignment(Ljava/lang/Class;Ljava/lang/Object;Z)I

    move-result v0

    goto :goto_1

    .line 1484
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has unknown native alignment"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1468
    :cond_9
    :goto_0
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 1487
    :cond_a
    :goto_1
    iget p2, p0, Lcom/sun/jna/Structure;->actualAlignType:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    const/4 v1, 0x3

    if-ne p2, v1, :cond_c

    const/16 p1, 0x8

    .line 1491
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_c
    const/4 v1, 0x2

    if-ne p2, v1, :cond_10

    if-eqz p3, :cond_d

    .line 1496
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {}, Lcom/sun/jna/Platform;->isPPC()Z

    move-result p2

    if-nez p2, :cond_e

    .line 1497
    :cond_d
    sget p2, Lcom/sun/jna/Native;->MAX_ALIGNMENT:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_e
    if-nez p3, :cond_10

    .line 1499
    invoke-static {}, Lcom/sun/jna/Platform;->isAIX()Z

    move-result p2

    if-eqz p2, :cond_10

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_f

    const-class p2, Ljava/lang/Double;

    if-ne p1, p2, :cond_10

    :cond_f
    const/4 v0, 0x4

    :cond_10
    :goto_2
    return v0
.end method

.method protected getNativeSize(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2243
    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/Structure;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 2253
    invoke-static {p1, p2}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPointer()Lcom/sun/jna/Pointer;
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    .line 456
    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    return-object v0
.end method

.method protected getStringEncoding()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/sun/jna/Structure;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getStructAlignment()I
    .locals 2

    .line 1432
    iget v0, p0, Lcom/sun/jna/Structure;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1434
    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->calculateSize(Z)I

    .line 1436
    :cond_0
    iget v0, p0, Lcom/sun/jna/Structure;->structAlignment:I

    return v0
.end method

.method getTypeInfo()Lcom/sun/jna/Pointer;
    .locals 1

    .line 1739
    invoke-static {p0}, Lcom/sun/jna/Structure;->getTypeInfo(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 1740
    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->cacheTypeInfo(Lcom/sun/jna/Pointer;)V

    return-object v0
.end method

.method getTypeMapper()Lcom/sun/jna/TypeMapper;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1704
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1706
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/Pointer;->hashCode()I

    move-result v0

    return v0

    .line 1708
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public read()V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    sget-object v1, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 573
    iput-boolean v0, p0, Lcom/sun/jna/Structure;->readCalled:Z

    .line 579
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    .line 582
    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 585
    :cond_1
    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 586
    instance-of v0, p0, Lcom/sun/jna/Structure$ByReference;

    if-eqz v0, :cond_2

    .line 587
    invoke-static {}, Lcom/sun/jna/Structure;->reading()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/Structure$StructField;

    .line 591
    invoke-virtual {p0, v1}, Lcom/sun/jna/Structure;->readField(Lcom/sun/jna/Structure$StructField;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 595
    :cond_3
    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 596
    invoke-static {}, Lcom/sun/jna/Structure;->reading()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_4

    .line 597
    invoke-static {}, Lcom/sun/jna/Structure;->reading()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 595
    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 596
    invoke-static {}, Lcom/sun/jna/Structure;->reading()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_5

    .line 597
    invoke-static {}, Lcom/sun/jna/Structure;->reading()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_5
    throw v0
.end method

.method protected readField(Lcom/sun/jna/Structure$StructField;)Ljava/lang/Object;
    .locals 8

    .line 709
    iget v0, p1, Lcom/sun/jna/Structure$StructField;->offset:I

    .line 712
    iget-object v1, p1, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    .line 713
    iget-object v2, p1, Lcom/sun/jna/Structure$StructField;->readConverter:Lcom/sun/jna/FromNativeConverter;

    if-eqz v2, :cond_0

    .line 715
    invoke-interface {v2}, Lcom/sun/jna/FromNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v1

    .line 718
    :cond_0
    const-class v3, Lcom/sun/jna/Structure;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const-class v3, Lcom/sun/jna/Callback;

    .line 719
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    if-eqz v3, :cond_1

    const-class v3, Ljava/nio/Buffer;

    .line 720
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const-class v3, Lcom/sun/jna/Pointer;

    .line 721
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    const-class v3, Lcom/sun/jna/NativeMapped;

    .line 722
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 723
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v3, p1, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    .line 724
    invoke-virtual {p0, v3}, Lcom/sun/jna/Structure;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    .line 727
    :goto_1
    const-class v5, Ljava/lang/String;

    if-ne v1, v5, :cond_5

    .line 728
    iget-object v5, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const-wide/16 v6, 0x0

    .line 729
    iget-object v4, p0, Lcom/sun/jna/Structure;->encoding:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 732
    :cond_5
    iget-object v4, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6, v1, v3}, Lcom/sun/jna/Pointer;->getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_2
    if-eqz v2, :cond_7

    .line 735
    iget-object v5, p1, Lcom/sun/jna/Structure$StructField;->context:Lcom/sun/jna/FromNativeContext;

    invoke-interface {v2, v4, v5}, Lcom/sun/jna/FromNativeConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v3, :cond_6

    .line 736
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, v2

    goto :goto_3

    :cond_7
    move-object v3, v4

    .line 741
    :goto_3
    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-class v2, Lcom/sun/jna/WString;

    .line 742
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 743
    :cond_8
    iget-object v1, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".ptr"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v0, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".val"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_9
    iget-object p1, p1, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v3, v0}, Lcom/sun/jna/Structure;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V

    return-object v3
.end method

.method public readField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 622
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    .line 623
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Structure$StructField;

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->readField(Lcom/sun/jna/Structure$StructField;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setAlignType(I)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/sun/jna/Structure;->alignType:I

    if-nez p1, :cond_1

    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/jna/Native;->getStructureAlignment(Ljava/lang/Class;)I

    move-result p1

    if-nez p1, :cond_1

    .line 282
    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 288
    :cond_1
    :goto_0
    iput p1, p0, Lcom/sun/jna/Structure;->actualAlignType:I

    .line 289
    invoke-direct {p0}, Lcom/sun/jna/Structure;->layoutChanged()V

    return-void
.end method

.method public setAutoRead(Z)V
    .locals 0

    .line 1774
    iput-boolean p1, p0, Lcom/sun/jna/Structure;->autoRead:Z

    return-void
.end method

.method public setAutoSynch(Z)V
    .locals 0

    .line 1765
    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->setAutoRead(Z)V

    .line 1766
    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->setAutoWrite(Z)V

    return-void
.end method

.method public setAutoWrite(Z)V
    .locals 0

    .line 1790
    iput-boolean p1, p0, Lcom/sun/jna/Structure;->autoWrite:Z

    return-void
.end method

.method setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 648
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/jna/Structure;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected setStringEncoding(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/sun/jna/Structure;->encoding:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 1

    .line 434
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    .line 435
    iget v0, p0, Lcom/sun/jna/Structure;->size:I

    return v0
.end method

.method protected sortFields(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 968
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 969
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 970
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 971
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 972
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 973
    invoke-static {p1, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toArray(I)[Lcom/sun/jna/Structure;
    .locals 1

    .line 1642
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/jna/Structure;

    check-cast p1, [Lcom/sun/jna/Structure;

    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->toArray([Lcom/sun/jna/Structure;)[Lcom/sun/jna/Structure;

    move-result-object p1

    return-object p1
.end method

.method public toArray([Lcom/sun/jna/Structure;)[Lcom/sun/jna/Structure;
    .locals 8

    .line 1607
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    .line 1608
    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    instance-of v1, v0, Lcom/sun/jna/Structure$AutoAllocated;

    if-eqz v1, :cond_0

    .line 1610
    check-cast v0, Lcom/sun/jna/Memory;

    .line 1611
    array-length v1, p1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->size()I

    move-result v2

    mul-int v1, v1, v2

    .line 1612
    invoke-virtual {v0}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 1613
    invoke-virtual {p0, v1}, Lcom/sun/jna/Structure;->autoAllocate(I)Lcom/sun/jna/Memory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;)V

    :cond_0
    const/4 v0, 0x0

    .line 1617
    aput-object p0, p1, v0

    .line 1618
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->size()I

    move-result v0

    const/4 v1, 0x1

    .line 1619
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1620
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    mul-int v4, v1, v0

    int-to-long v4, v4

    int-to-long v6, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/jna/Pointer;->share(JJ)Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1621
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/sun/jna/Structure;->conditionalAutoRead()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1624
    :cond_1
    instance-of v0, p0, Lcom/sun/jna/Structure$ByValue;

    if-nez v0, :cond_2

    .line 1626
    iput-object p1, p0, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "jna.dump_memory"

    .line 1513
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1522
    invoke-direct {p0, v0, v1, p1}, Lcom/sun/jna/Structure;->toString(IZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected useMemory(Lcom/sun/jna/Pointer;)V
    .locals 1

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;I)V

    return-void
.end method

.method protected useMemory(Lcom/sun/jna/Pointer;I)V
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    return-void
.end method

.method useMemory(Lcom/sun/jna/Pointer;IZ)V
    .locals 8

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 338
    instance-of v0, p0, Lcom/sun/jna/Structure$ByValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->size()I

    move-result p2

    new-array p3, p2, [B

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p3

    move v7, p2

    .line 342
    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Pointer;->read(J[BII)V

    .line 343
    iget-object v2, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v5, p3

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Pointer;->write(J[BII)V

    goto :goto_0

    :cond_0
    int-to-long p2, p2

    .line 348
    invoke-virtual {p1, p2, p3}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    .line 349
    iget v0, p0, Lcom/sun/jna/Structure;->size:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 350
    invoke-virtual {p0, v1}, Lcom/sun/jna/Structure;->calculateSize(Z)I

    move-result v0

    iput v0, p0, Lcom/sun/jna/Structure;->size:I

    .line 352
    :cond_1
    iget v0, p0, Lcom/sun/jna/Structure;->size:I

    if-eq v0, v2, :cond_2

    .line 353
    iget v0, p0, Lcom/sun/jna/Structure;->size:I

    int-to-long v2, v0

    invoke-virtual {p1, p2, p3, v2, v3}, Lcom/sun/jna/Pointer;->share(JJ)Lcom/sun/jna/Pointer;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 356
    iput-object p1, p0, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    .line 357
    iput-boolean v1, p0, Lcom/sun/jna/Structure;->readCalled:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 360
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Structure exceeds provided memory bounds"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public write()V
    .locals 3

    .line 757
    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    sget-object v1, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    if-ne v0, v1, :cond_0

    return-void

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    .line 767
    instance-of v0, p0, Lcom/sun/jna/Structure$ByValue;

    if-eqz v0, :cond_1

    .line 768
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getTypeInfo()Lcom/sun/jna/Pointer;

    .line 772
    :cond_1
    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 775
    :cond_2
    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 778
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/Structure$StructField;

    .line 779
    iget-boolean v2, v1, Lcom/sun/jna/Structure$StructField;->isVolatile:Z

    if-nez v2, :cond_3

    .line 780
    invoke-virtual {p0, v1}, Lcom/sun/jna/Structure;->writeField(Lcom/sun/jna/Structure$StructField;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 785
    :cond_4
    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 786
    throw v0
.end method

.method protected writeField(Lcom/sun/jna/Structure$StructField;)V
    .locals 10

    .line 823
    iget-boolean v0, p1, Lcom/sun/jna/Structure$StructField;->isReadOnly:Z

    if-eqz v0, :cond_0

    return-void

    .line 827
    :cond_0
    iget v0, p1, Lcom/sun/jna/Structure$StructField;->offset:I

    .line 830
    iget-object v1, p1, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v1}, Lcom/sun/jna/Structure;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 833
    iget-object v2, p1, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    .line 834
    iget-object v3, p1, Lcom/sun/jna/Structure$StructField;->writeConverter:Lcom/sun/jna/ToNativeConverter;

    if-eqz v3, :cond_1

    .line 836
    new-instance v2, Lcom/sun/jna/StructureWriteContext;

    iget-object v4, p1, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-direct {v2, p0, v4}, Lcom/sun/jna/StructureWriteContext;-><init>(Lcom/sun/jna/Structure;Ljava/lang/reflect/Field;)V

    invoke-interface {v3, v1, v2}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object v1

    .line 837
    invoke-interface {v3}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v2

    .line 841
    :cond_1
    const-class v3, Ljava/lang/String;

    if-eq v3, v2, :cond_2

    const-class v3, Lcom/sun/jna/WString;

    if-ne v3, v2, :cond_7

    .line 844
    :cond_2
    const-class v3, Lcom/sun/jna/WString;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const-string v5, ".val"

    const-string v6, ".ptr"

    if-eqz v1, :cond_6

    .line 848
    iget-object v7, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 849
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    return-void

    :cond_4
    if-eqz v3, :cond_5

    .line 852
    new-instance v3, Lcom/sun/jna/NativeString;

    .line 853
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v4}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    new-instance v3, Lcom/sun/jna/NativeString;

    .line 854
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/jna/Structure;->encoding:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :goto_1
    iget-object v1, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    iget-object v4, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    invoke-virtual {v3}, Lcom/sun/jna/NativeString;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    goto :goto_2

    .line 861
    :cond_6
    iget-object v3, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    iget-object v4, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    :goto_2
    iget-object v3, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iget-object v3, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    :cond_7
    :try_start_0
    iget-object v3, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/sun/jna/Pointer;->setValue(JLjava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Structure field \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" was declared as "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    if-ne p1, v2, :cond_8

    const-string p1, ""

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (native type "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", which is not supported within a Structure"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 876
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeField(Ljava/lang/String;)V
    .locals 3

    .line 795
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    .line 796
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Structure$StructField;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->writeField(Lcom/sun/jna/Structure$StructField;)V

    return-void

    .line 798
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 810
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    .line 811
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Structure$StructField;

    if-eqz v0, :cond_0

    .line 814
    iget-object p1, v0, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Structure;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 815
    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->writeField(Lcom/sun/jna/Structure$StructField;)V

    return-void

    .line 813
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
