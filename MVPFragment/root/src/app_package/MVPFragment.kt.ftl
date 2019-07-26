package ${escapeKotlinIdentifiers(packageName)}

import com.xxkj.renrenxiangxue.R
import com.xxkj.renrenxiangxue.base.MvpBaseFragment

class ${fragmentClass}:MvpBaseFragment<${presenterName}>(),${contractName}.View{

	override fun initPresenter(): ${presenterName} = ${presenterName}()

	override fun contentLayoutId(): Int=0
}
