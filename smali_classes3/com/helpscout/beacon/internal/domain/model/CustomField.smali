.class public final Lcom/helpscout/beacon/internal/domain/model/CustomField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u001f\u0008\u0086\u0008\u0018\u00002\u00020\u0001BK\u0012\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0006\u0012\u0008\u0008\u0003\u0010\u0019\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u000e\u0012\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u0004\u0012\u0010\u0008\u0001\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u00a2\u0006\u0004\u00081\u00102J!\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\t\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0010\u0010\u000f\u001a\u00020\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0018\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016JT\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0017\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0003\u0010\u0019\u001a\u00020\u00062\u0008\u0008\u0003\u0010\u001a\u001a\u00020\u000e2\u0008\u0008\u0003\u0010\u001b\u001a\u00020\u00042\u0010\u0008\u0003\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010\u0012J\u0010\u0010 \u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008 \u0010\nJ\u001a\u0010\"\u001a\u00020\u00062\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\"\u0010#R!\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00138\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010$\u001a\u0004\u0008%\u0010\u0016R\u0019\u0010\u0017\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010&\u001a\u0004\u0008\'\u0010\nR\u0019\u0010\u0018\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010(\u001a\u0004\u0008)\u0010\u000cR\"\u0010\u0019\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010(\u001a\u0004\u0008*\u0010\u000c\"\u0004\u0008+\u0010,R\u0019\u0010\u001b\u001a\u00020\u00048\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010-\u001a\u0004\u0008.\u0010\u0012R\u0019\u0010\u001a\u001a\u00020\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010/\u001a\u0004\u00080\u0010\u0010\u00a8\u00063"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "",
        "",
        "",
        "",
        "prefilledCustomFieldValues",
        "",
        "isValidPrefilledValue",
        "(Ljava/util/Map;)Z",
        "component1",
        "()I",
        "component2",
        "()Z",
        "component3",
        "Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;",
        "component4",
        "()Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;",
        "component5",
        "()Ljava/lang/String;",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;",
        "component6",
        "()Ljava/util/List;",
        "id",
        "required",
        "hidden",
        "type",
        "name",
        "options",
        "copy",
        "(IZZLcom/helpscout/beacon/internal/domain/model/CustomFieldType;Ljava/lang/String;Ljava/util/List;)Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "toString",
        "hashCode",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/util/List;",
        "getOptions",
        "I",
        "getId",
        "Z",
        "getRequired",
        "getHidden",
        "setHidden",
        "(Z)V",
        "Ljava/lang/String;",
        "getName",
        "Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;",
        "getType",
        "<init>",
        "(IZZLcom/helpscout/beacon/internal/domain/model/CustomFieldType;Ljava/lang/String;Ljava/util/List;)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private hidden:Z

.field private final id:I

.field private final name:Ljava/lang/String;

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;",
            ">;"
        }
    .end annotation
.end field

.field private final required:Z

.field private final type:Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;


# direct methods
.method public constructor <init>(IZZLcom/helpscout/beacon/internal/domain/model/CustomFieldType;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "id"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "required"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "hidden"
        .end annotation
    .end param
    .param p4    # Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "type"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "name"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "options"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->id:I

    iput-boolean p2, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->required:Z

    iput-boolean p3, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->hidden:Z

    iput-object p4, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->type:Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->options:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IZZLcom/helpscout/beacon/internal/domain/model/CustomFieldType;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/domain/model/CustomField;-><init>(IZZLcom/helpscout/beacon/internal/domain/model/CustomFieldType;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/domain/model/CustomField;IZZLcom/helpscout/beacon/internal/domain/model/CustomFieldType;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/domain/model/CustomField;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->id:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->required:Z

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->hidden:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->type:Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->name:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->options:Ljava/util/List;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->copy(IZZLcom/helpscout/beacon/internal/domain/model/CustomFieldType;Ljava/lang/String;Ljava/util/List;)Lcom/helpscout/beacon/internal/domain/model/CustomField;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->id:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->required:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->hidden:Z

    return v0
.end method

.method public final component4()Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->type:Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->options:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IZZLcom/helpscout/beacon/internal/domain/model/CustomFieldType;Ljava/lang/String;Ljava/util/List;)Lcom/helpscout/beacon/internal/domain/model/CustomField;
    .locals 8
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "id"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "required"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "hidden"
        .end annotation
    .end param
    .param p4    # Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "type"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "name"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "options"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;",
            ">;)",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/helpscout/beacon/internal/domain/model/CustomField;-><init>(IZZLcom/helpscout/beacon/internal/domain/model/CustomFieldType;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->id:I

    iget v1, p1, Lcom/helpscout/beacon/internal/domain/model/CustomField;->id:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->required:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/domain/model/CustomField;->required:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->hidden:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/domain/model/CustomField;->hidden:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->type:Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/CustomField;->type:Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/CustomField;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->options:Ljava/util/List;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/domain/model/CustomField;->options:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->hidden:Z

    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->id:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->options:Ljava/util/List;

    return-object v0
.end method

.method public final getRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->required:Z

    return v0
.end method

.method public final getType()Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->type:Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->required:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->hidden:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->type:Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->options:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final isValidPrefilledValue(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "prefilledCustomFieldValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public final setHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->hidden:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomField(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", required="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->required:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->hidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->type:Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomField;->options:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
