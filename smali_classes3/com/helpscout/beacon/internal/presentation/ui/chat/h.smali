.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/h$b;
    }
.end annotation


# static fields
.field private static final k:Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

.field public static final l:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$b;


# instance fields
.field private final a:Z

.field private final b:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->l:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$b;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->INITIAL:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1fe

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/i;",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;",
            "ZZZZ",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;",
            ")V"
        }
    .end annotation

    const-string v0, "chatViewStateUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agents"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    iput-boolean p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->f:Z

    iput-boolean p6, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->g:Z

    iput-boolean p7, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->h:Z

    iput-boolean p8, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->i:Z

    iput-object p9, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->j:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;

    if-eqz p9, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v6, p8

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v4, p9

    :goto_7
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v2

    move-object/from16 p6, v3

    move/from16 p7, v5

    move/from16 p8, v7

    move/from16 p9, v8

    move/from16 p10, v6

    move-object/from16 p11, v4

    invoke-direct/range {p2 .. p11}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;)V

    return-void
.end method

.method public static final synthetic a()Lcom/helpscout/beacon/internal/presentation/ui/chat/h;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    return-object v0
.end method

.method public static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->d:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->f:Z

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->g:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->h:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->i:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->j:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/i;",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;",
            "ZZZZ",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;",
            ")",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/h;"
        }
    .end annotation

    const-string v0, "chatViewStateUpdate"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agents"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-object v1, v0

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;)V

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->d:Ljava/util/List;

    return-object v0
.end method

.method public final c()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a:Z

    return v0
.end method

.method public final e()Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->j:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c:Ljava/util/List;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->f:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->f:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->g:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->g:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->h:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->h:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->i:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->i:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->j:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->j:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;

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

.method public final f()Lcom/helpscout/beacon/internal/presentation/ui/chat/i;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->h:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->f:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->d:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->f:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->g:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->h:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->i:Z

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move v3, v2

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->j:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c:Ljava/util/List;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->g:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->i:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatViewState(chatViewStateUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", agents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assignedAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enableAttachments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCreatingChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", emailRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRatingChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", chatEndedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->j:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
