.class Lcom/sun/jna/Structure$LayoutInfo;
.super Ljava/lang/Object;
.source "Structure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Structure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutInfo"
.end annotation


# instance fields
.field private alignType:I

.field private alignment:I

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/jna/Structure$StructField;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private typeMapper:Lcom/sun/jna/TypeMapper;

.field private variable:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1188
    iput v0, p0, Lcom/sun/jna/Structure$LayoutInfo;->size:I

    const/4 v0, 0x1

    .line 1189
    iput v0, p0, Lcom/sun/jna/Structure$LayoutInfo;->alignment:I

    .line 1190
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/Structure$LayoutInfo;->fields:Ljava/util/Map;

    const/4 v0, 0x0

    .line 1191
    iput v0, p0, Lcom/sun/jna/Structure$LayoutInfo;->alignType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/jna/Structure$1;)V
    .locals 0

    .line 1187
    invoke-direct {p0}, Lcom/sun/jna/Structure$LayoutInfo;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sun/jna/Structure$LayoutInfo;)Z
    .locals 0

    .line 1187
    iget-boolean p0, p0, Lcom/sun/jna/Structure$LayoutInfo;->variable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/sun/jna/Structure$LayoutInfo;Z)Z
    .locals 0

    .line 1187
    iput-boolean p1, p0, Lcom/sun/jna/Structure$LayoutInfo;->variable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sun/jna/Structure$LayoutInfo;)I
    .locals 0

    .line 1187
    iget p0, p0, Lcom/sun/jna/Structure$LayoutInfo;->size:I

    return p0
.end method

.method static synthetic access$102(Lcom/sun/jna/Structure$LayoutInfo;I)I
    .locals 0

    .line 1187
    iput p1, p0, Lcom/sun/jna/Structure$LayoutInfo;->size:I

    return p1
.end method

.method static synthetic access$200(Lcom/sun/jna/Structure$LayoutInfo;)I
    .locals 0

    .line 1187
    iget p0, p0, Lcom/sun/jna/Structure$LayoutInfo;->alignType:I

    return p0
.end method

.method static synthetic access$202(Lcom/sun/jna/Structure$LayoutInfo;I)I
    .locals 0

    .line 1187
    iput p1, p0, Lcom/sun/jna/Structure$LayoutInfo;->alignType:I

    return p1
.end method

.method static synthetic access$300(Lcom/sun/jna/Structure$LayoutInfo;)Lcom/sun/jna/TypeMapper;
    .locals 0

    .line 1187
    iget-object p0, p0, Lcom/sun/jna/Structure$LayoutInfo;->typeMapper:Lcom/sun/jna/TypeMapper;

    return-object p0
.end method

.method static synthetic access$302(Lcom/sun/jna/Structure$LayoutInfo;Lcom/sun/jna/TypeMapper;)Lcom/sun/jna/TypeMapper;
    .locals 0

    .line 1187
    iput-object p1, p0, Lcom/sun/jna/Structure$LayoutInfo;->typeMapper:Lcom/sun/jna/TypeMapper;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sun/jna/Structure$LayoutInfo;)I
    .locals 0

    .line 1187
    iget p0, p0, Lcom/sun/jna/Structure$LayoutInfo;->alignment:I

    return p0
.end method

.method static synthetic access$402(Lcom/sun/jna/Structure$LayoutInfo;I)I
    .locals 0

    .line 1187
    iput p1, p0, Lcom/sun/jna/Structure$LayoutInfo;->alignment:I

    return p1
.end method

.method static synthetic access$500(Lcom/sun/jna/Structure$LayoutInfo;)Ljava/util/Map;
    .locals 0

    .line 1187
    iget-object p0, p0, Lcom/sun/jna/Structure$LayoutInfo;->fields:Ljava/util/Map;

    return-object p0
.end method
