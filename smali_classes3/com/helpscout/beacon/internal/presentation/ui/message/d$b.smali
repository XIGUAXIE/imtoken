.class public final Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;
.super Lcom/helpscout/beacon/internal/presentation/ui/message/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/message/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/a/d/e/a/b;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/helpscout/beacon/a/d/e/a/f;

.field private final f:Z

.field private final g:Lcom/helpscout/beacon/model/PreFilledForm;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Z


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/d/e/a/b;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;",
            "Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;",
            "Lcom/helpscout/beacon/a/d/e/a/f;",
            "Z",
            "Lcom/helpscout/beacon/model/PreFilledForm;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "agents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactFormConfigApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefill"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customFieldValues"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a:Lcom/helpscout/beacon/a/d/e/a/b;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->c:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->e:Lcom/helpscout/beacon/a/d/e/a/f;

    iput-boolean p6, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f:Z

    iput-object p7, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->g:Lcom/helpscout/beacon/model/PreFilledForm;

    iput-object p8, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->h:Ljava/util/Map;

    iput-boolean p9, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->i:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;-><init>(Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;ZILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a:Lcom/helpscout/beacon/a/d/e/a/b;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->b:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->c:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->d:Ljava/util/Map;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->e:Lcom/helpscout/beacon/a/d/e/a/f;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->g:Lcom/helpscout/beacon/model/PreFilledForm;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->h:Ljava/util/Map;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->i:Z

    goto :goto_8

    :cond_8
    move/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a(Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;Z)Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/helpscout/beacon/a/d/e/a/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a:Lcom/helpscout/beacon/a/d/e/a/b;

    return-object v0
.end method

.method public final a(Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;Z)Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/d/e/a/b;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;",
            "Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;",
            "Lcom/helpscout/beacon/a/d/e/a/f;",
            "Z",
            "Lcom/helpscout/beacon/model/PreFilledForm;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;"
        }
    .end annotation

    const-string v0, "agents"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customFields"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactFormConfigApi"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachments"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingFields"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefill"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customFieldValues"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    move-object v1, v0

    move/from16 v7, p6

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;-><init>(Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;Z)V

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->d:Ljava/util/Map;

    return-object v0
.end method

.method public final c()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->c:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->b:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a:Lcom/helpscout/beacon/a/d/e/a/b;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a:Lcom/helpscout/beacon/a/d/e/a/b;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->c:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->c:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->e:Lcom/helpscout/beacon/a/d/e/a/f;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->e:Lcom/helpscout/beacon/a/d/e/a/f;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->g:Lcom/helpscout/beacon/model/PreFilledForm;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->g:Lcom/helpscout/beacon/model/PreFilledForm;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->h:Ljava/util/Map;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->i:Z

    iget-boolean p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->i:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Lcom/helpscout/beacon/a/d/e/a/f;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->e:Lcom/helpscout/beacon/a/d/e/a/f;

    return-object v0
.end method

.method public final g()Lcom/helpscout/beacon/model/PreFilledForm;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->g:Lcom/helpscout/beacon/model/PreFilledForm;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->i:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a:Lcom/helpscout/beacon/a/d/e/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->c:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->d:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->e:Lcom/helpscout/beacon/a/d/e/a/f;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->g:Lcom/helpscout/beacon/model/PreFilledForm;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->h:Ljava/util/Map;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->i:Z

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    move v3, v1

    :goto_6
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form(agents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a:Lcom/helpscout/beacon/a/d/e/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contactFormConfigApi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->c:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attachments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", missingFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->e:Lcom/helpscout/beacon/a/d/e/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", formValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prefill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->g:Lcom/helpscout/beacon/model/PreFilledForm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customFieldValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVisitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
