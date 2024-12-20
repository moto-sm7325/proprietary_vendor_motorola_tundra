.class public final synthetic Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType$EnumUnboxingLocalUtility;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType$EnumUnboxingLocalUtility;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType$EnumUnboxingLocalUtility;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType$EnumUnboxingLocalUtility;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType$EnumUnboxingLocalUtility;->INSTANCE:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType$EnumUnboxingLocalUtility;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final _toPaintJoin(I)Landroid/graphics/Paint$Join;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    add-int/lit8 p0, p0, -0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object p0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p0

    .line 4
    :cond_3
    throw v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    sget p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->$r8$clinit:I

    return-object p1
.end method
