.class final Lio/sentry/UnknownPropertiesTypeAdapterFactory;
.super Ljava/lang/Object;
.source "UnknownPropertiesTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/UnknownPropertiesTypeAdapterFactory$UnknownPropertiesTypeAdapter;
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lio/sentry/UnknownPropertiesTypeAdapterFactory;

    invoke-direct {v0}, Lio/sentry/UnknownPropertiesTypeAdapterFactory;-><init>()V

    sput-object v0, Lio/sentry/UnknownPropertiesTypeAdapterFactory;->instance:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get()Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    .line 28
    sget-object v0, Lio/sentry/UnknownPropertiesTypeAdapterFactory;->instance:Lcom/google/gson/TypeAdapterFactory;

    return-object v0
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 34
    const-class v0, Lio/sentry/IUnknownPropertiesConsumer;

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 43
    invoke-virtual {p1, p0, p2}, Lcom/google/gson/Gson;->getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p2

    .line 46
    invoke-virtual {p1}, Lcom/google/gson/Gson;->excluder()Lcom/google/gson/internal/Excluder;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lcom/google/gson/Gson;->fieldNamingStrategy()Lcom/google/gson/FieldNamingStrategy;

    move-result-object p1

    .line 50
    invoke-static {v0, p2, v1, p1}, Lio/sentry/UnknownPropertiesTypeAdapterFactory$UnknownPropertiesTypeAdapter;->access$000(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    return-object p1
.end method
