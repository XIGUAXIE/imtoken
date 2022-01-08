.class public final synthetic Lorg/consenlabs/imtoken/-$$Lambda$MainApplication$--dvIQLETZvrtPCnR_m6TTIXifQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Sentry$OptionsConfiguration;


# static fields
.field public static final synthetic INSTANCE:Lorg/consenlabs/imtoken/-$$Lambda$MainApplication$--dvIQLETZvrtPCnR_m6TTIXifQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/consenlabs/imtoken/-$$Lambda$MainApplication$--dvIQLETZvrtPCnR_m6TTIXifQ;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/-$$Lambda$MainApplication$--dvIQLETZvrtPCnR_m6TTIXifQ;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/-$$Lambda$MainApplication$--dvIQLETZvrtPCnR_m6TTIXifQ;->INSTANCE:Lorg/consenlabs/imtoken/-$$Lambda$MainApplication$--dvIQLETZvrtPCnR_m6TTIXifQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lio/sentry/SentryOptions;)V
    .locals 0

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {p1}, Lorg/consenlabs/imtoken/MainApplication;->lambda$onCreate$0(Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
