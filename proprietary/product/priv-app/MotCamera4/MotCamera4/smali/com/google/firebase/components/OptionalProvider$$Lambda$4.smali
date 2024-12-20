.class public synthetic Lcom/google/firebase/components/OptionalProvider$$Lambda$4;
.super Ljava/lang/Object;
.source "OptionalProvider.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# static fields
.field public static final instance:Lcom/google/firebase/components/OptionalProvider$$Lambda$4;

.field public static final instance$1:Lcom/google/firebase/components/OptionalProvider$$Lambda$4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/components/OptionalProvider$$Lambda$4;

    invoke-direct {v0}, Lcom/google/firebase/components/OptionalProvider$$Lambda$4;-><init>()V

    sput-object v0, Lcom/google/firebase/components/OptionalProvider$$Lambda$4;->instance$1:Lcom/google/firebase/components/OptionalProvider$$Lambda$4;

    .line 2
    new-instance v0, Lcom/google/firebase/components/OptionalProvider$$Lambda$4;

    invoke-direct {v0}, Lcom/google/firebase/components/OptionalProvider$$Lambda$4;-><init>()V

    sput-object v0, Lcom/google/firebase/components/OptionalProvider$$Lambda$4;->instance:Lcom/google/firebase/components/OptionalProvider$$Lambda$4;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
