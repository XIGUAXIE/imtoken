.class public final Lcom/helpscout/beacon/a/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/a/c/c$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/squareup/moshi/Moshi;

.field private static final b:Lretrofit2/Converter$Factory;

.field public static final c:Lcom/helpscout/beacon/a/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/helpscout/beacon/a/a/c/c;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/a/c/c;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    new-instance v0, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {v0}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    sget-object v1, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconCoreMoshiAdapters;->INSTANCE:Lcom/helpscout/beacon/internal/core/model/adapter/BeaconCoreMoshiAdapters;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconCoreMoshiAdapters;->get()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/moshi/Moshi$Builder;->add(Ljava/lang/Object;)Lcom/squareup/moshi/Moshi$Builder;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory;

    invoke-direct {v1}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/moshi/Moshi$Builder;->add(Lcom/squareup/moshi/JsonAdapter$Factory;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object v0

    const-string v1, "Moshi.Builder()\n        \u2026ctory())\n        .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/helpscout/beacon/a/a/c/c;->a:Lcom/squareup/moshi/Moshi;

    invoke-static {v0}, Lretrofit2/converter/moshi/MoshiConverterFactory;->create(Lcom/squareup/moshi/Moshi;)Lretrofit2/converter/moshi/MoshiConverterFactory;

    move-result-object v0

    const-string v1, "MoshiConverterFactory.create(INSTANCE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/helpscout/beacon/a/a/c/c;->b:Lretrofit2/Converter$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/a/a/c/c;)Lcom/squareup/moshi/Moshi;
    .locals 0

    sget-object p0, Lcom/helpscout/beacon/a/a/c/c;->a:Lcom/squareup/moshi/Moshi;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/a/a/c/c;->b(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/helpscout/beacon/a/a/c/c$a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/a/a/c/c$a;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Class;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/a/a/c/c$a;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-object v0
.end method

.method public a()Lretrofit2/Converter$Factory;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/a/a/c/c;->b:Lretrofit2/Converter$Factory;

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/helpscout/beacon/a/a/c/c$a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/a/a/c/c$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lcom/helpscout/beacon/a/a/c/c$a;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-object v0
.end method
